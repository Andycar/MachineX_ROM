.class Lcom/android/server/TactileAssistSettings$TactileAssistObserver;
.super Landroid/database/ContentObserver;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TactileAssistObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/TactileAssistSettings;)V
    .registers 3

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    .line 538
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 539
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 542
    const-string v6, "TactileAssist"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 543
    const-string v6, "TactileAssist"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tactileassistObserver selfchange"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_24
    :try_start_24
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_level"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 548
    .local v3, "tactileassistLevel":I
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_enable"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 550
    .local v1, "tactileassistEnable":I
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_internal_enable"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 556
    .local v2, "tactileassistInternalEnable":I
    if-gt v3, v5, :cond_46

    if-ge v3, v4, :cond_53

    .line 557
    :cond_46
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_level"

    if-le v3, v5, :cond_4f

    move v4, v5

    :cond_4f
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    .end local v1    # "tactileassistEnable":I
    .end local v2    # "tactileassistInternalEnable":I
    .end local v3    # "tactileassistLevel":I
    :cond_52
    :goto_52
    return-void

    .line 564
    .restart local v1    # "tactileassistEnable":I
    .restart local v2    # "tactileassistInternalEnable":I
    .restart local v3    # "tactileassistLevel":I
    :cond_53
    if-gt v1, v4, :cond_57

    if-gez v1, :cond_77

    .line 565
    :cond_57
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "def_tactileassist_enable"

    if-le v3, v4, :cond_75

    :goto_5f
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_62} :catch_63

    goto :goto_52

    .line 590
    .end local v1    # "tactileassistEnable":I
    .end local v2    # "tactileassistInternalEnable":I
    .end local v3    # "tactileassistLevel":I
    :catch_63
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TactileAssist"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 592
    const-string v4, "TactileAssist"

    const-string v5, "Exception caught in onChange()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tactileassistEnable":I
    .restart local v2    # "tactileassistInternalEnable":I
    .restart local v3    # "tactileassistLevel":I
    :cond_75
    const/4 v4, 0x0

    goto :goto_5f

    .line 571
    :cond_77
    if-gt v2, v4, :cond_7b

    if-gez v2, :cond_86

    .line 574
    :cond_7b
    :try_start_7b
    # getter for: Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_internal_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_52

    .line 580
    :cond_86
    const-string v4, "TactileAssist"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 581
    const-string v4, "TactileAssist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saved Settings with tactileassistLevel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tactileassistEnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tactileassistInternalEnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_bc
    iget-object v4, p0, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_c2} :catch_63

    goto :goto_52
.end method
