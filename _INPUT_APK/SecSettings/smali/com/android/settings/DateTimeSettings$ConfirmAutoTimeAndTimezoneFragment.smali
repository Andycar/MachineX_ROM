.class public Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;
.super Landroid/app/DialogFragment;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoTimeAndTimezoneFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DateTimeSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 964
    :goto_0
    return-void

    .line 961
    :cond_0
    new-instance v0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;-><init>()V

    .line 962
    .local v0, "dialog":Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoTime"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 970
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 971
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01f9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01fa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 975
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment$1;-><init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1002
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1004
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
