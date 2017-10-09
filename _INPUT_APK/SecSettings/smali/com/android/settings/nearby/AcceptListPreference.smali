.class public Lcom/android/settings/nearby/AcceptListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "AcceptListPreference.java"


# static fields
.field private static isEmptyPopup:Z


# instance fields
.field private final HANDLE_REDRAW_POPUP:I

.field private final TAGClass:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v1, p0, Lcom/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    .line 20
    const-string v0, "AcceptListPreference"

    iput-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->TAGClass:Ljava/lang/String;

    .line 22
    const/16 v0, 0xbb9

    iput v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->HANDLE_REDRAW_POPUP:I

    .line 24
    iput-object v1, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 37
    iput-object v1, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 124
    new-instance v0, Lcom/android/settings/nearby/AcceptListPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/AcceptListPreference$3;-><init>(Lcom/android/settings/nearby/AcceptListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f0a149b

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 33
    const v0, 0x7f0a1494

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/AcceptListPreference;->setNegativeButtonText(I)V

    .line 35
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lcom/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    return p0
.end method

.method private getAcceptEntry()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getAcceptEntry()[Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAcceptEntryValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->getAcceptEntryValue()[Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 59
    const-string v0, "AcceptListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 61
    return-void
.end method

.method public setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .param p1, "enabler"    # Lcom/android/settings/nearby/NearbyEnabler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 41
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a149f

    const/4 v6, 0x1

    .line 65
    const-string v3, "AcceptListPreference"

    const-string v4, "showDialog"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/nearby/AcceptListPreference;->getAcceptEntry()[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "entries":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/AcceptListPreference;->getAcceptEntryValue()[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "entryValues":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    if-lt v3, v6, :cond_0

    array-length v3, v2

    if-ge v3, v6, :cond_2

    .line 71
    :cond_0
    sget-boolean v3, Lcom/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    if-eqz v3, :cond_1

    .line 72
    const-string v3, "AcceptListPreference"

    const-string v4, "showDialog"

    const-string v5, "isEmptyPopup is shown"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    const v5, 0x7f0a14a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/nearby/AcceptListPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/nearby/AcceptListPreference$2;-><init>(Lcom/android/settings/nearby/AcceptListPreference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1493

    new-instance v5, Lcom/android/settings/nearby/AcceptListPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings/nearby/AcceptListPreference$1;-><init>(Lcom/android/settings/nearby/AcceptListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 92
    sput-boolean v6, Lcom/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/AcceptListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/AcceptListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 98
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 101
    .local v0, "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/10)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    .prologue
    .line 109
    const-string v0, "AcceptListPreference"

    const-string v1, "updateDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "AcceptListPreference"

    const-string v1, "updateDialog"

    const-string v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
