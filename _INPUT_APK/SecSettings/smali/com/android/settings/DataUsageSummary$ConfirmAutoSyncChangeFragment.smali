.class public Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# instance fields
.field private mEnabling:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1099
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    iput-boolean p1, v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1106
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    iput-object p2, v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 1107
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1108
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1121
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 1122
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1124
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 1126
    const v2, 0x7f0a0d48

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1127
    const v2, 0x7f0a0d49

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1132
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1139
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1129
    :cond_1
    const v2, 0x7f0a0d46

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v2, 0x7f0a0d47

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1146
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1147
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1148
    return-void
.end method
