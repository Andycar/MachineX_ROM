.class public Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# instance fields
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static show(Lcom/android/settings/AccountMenu;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/AccountMenu;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 210
    .local v0, "dialog":Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 211
    iput-object p2, v0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 219
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 220
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 223
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 225
    const v2, 0x7f0a0d48

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    const v2, 0x7f0a0d49

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 232
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 228
    :cond_1
    const v2, 0x7f0a0d46

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 229
    const v2, 0x7f0a0d47

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/AccountMenu$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    return-void
.end method
