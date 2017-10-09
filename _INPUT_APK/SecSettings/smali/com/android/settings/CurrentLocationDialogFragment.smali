.class public Lcom/android/settings/CurrentLocationDialogFragment;
.super Landroid/app/DialogFragment;
.source "CurrentLocationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 28
    const-string v0, "CurrentLocationDialogFragment"

    iput-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 58
    packed-switch p2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    instance-of v0, v0, Lcom/android/settings/WeatherSettingsFragment;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CurrentLocationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0ffa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 49
    const v1, 0x7f0a0ff9

    invoke-virtual {p0, v1}, Lcom/android/settings/CurrentLocationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f0a15f8

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    const v1, 0x7f0a15f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setDialogFragmentListener(Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/CurrentLocationDialogFragment;->listener:Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;

    .line 38
    return-void
.end method
