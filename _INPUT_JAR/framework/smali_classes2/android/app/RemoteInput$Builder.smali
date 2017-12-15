.class public final Landroid/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "resultKey"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 142
    if-nez p1, :cond_17

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_17
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 146
    return-void
.end method

.method private setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 215
    if-eqz p2, :cond_8

    .line 216
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 220
    :goto_7
    return-void

    .line 218
    :cond_8
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    goto :goto_7
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 199
    if-eqz p1, :cond_7

    .line 200
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 202
    :cond_7
    return-object p0
.end method

.method public build()Landroid/app/RemoteInput;
    .registers 8

    .prologue
    .line 227
    new-instance v0, Landroid/app/RemoteInput;

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    iget-object v5, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/app/RemoteInput$1;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "allowFreeFormInput"    # Z

    .prologue
    .line 187
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    .line 188
    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .registers 5
    .param p1, "choices"    # [Ljava/lang/CharSequence;

    .prologue
    .line 166
    if-nez p1, :cond_6

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 174
    :cond_5
    return-object p0

    .line 169
    :cond_6
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 171
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 155
    return-object p0
.end method
