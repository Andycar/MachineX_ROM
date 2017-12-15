.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# instance fields
.field private mReplacementExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 84
    :cond_14
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    :cond_19
    return-void
.end method


# virtual methods
.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_15

    .line 70
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_15

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 73
    .local v1, "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    .end local v0    # "replExtras":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/content/Intent;
    :goto_14
    return-object v1

    :cond_15
    move-object v1, p2

    goto :goto_14
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 30
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .line 31
    .local v12, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v12, Landroid/content/Intent;

    if-nez v0, :cond_2e

    .line 32
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target is not an intent: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 34
    invoke-super {p0, v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    :goto_2d
    return-void

    :cond_2e
    move-object v2, v12

    .line 37
    check-cast v2, Landroid/content/Intent;

    .line 38
    .local v2, "target":Landroid/content/Intent;
    if-eqz v2, :cond_36

    .line 39
    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 41
    :cond_36
    const-string v0, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 42
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 43
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 44
    .local v4, "defaultTitleRes":I
    if-nez v3, :cond_4a

    .line 45
    const v4, 0x104047f

    .line 47
    :cond_4a
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 48
    .local v11, "pa":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 49
    .local v5, "initialIntents":[Landroid/content/Intent;
    if-eqz v11, :cond_97

    .line 50
    array-length v0, v11

    new-array v5, v0, [Landroid/content/Intent;

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_57
    array-length v0, v11

    if-ge v8, v0, :cond_97

    .line 52
    aget-object v0, v11, v8

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_8b

    .line 53
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initial intent #"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " not an Intent: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v11, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 55
    invoke-super {p0, v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_2d

    .line 58
    :cond_8b
    aget-object v9, v11, v8

    check-cast v9, Landroid/content/Intent;

    .line 59
    .local v9, "in":Landroid/content/Intent;
    invoke-direct {p0, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 60
    aput-object v9, v5, v8

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 63
    .end local v8    # "i":I
    .end local v9    # "in":Landroid/content/Intent;
    :cond_97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 64
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_2d
.end method
