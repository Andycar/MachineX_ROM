.class public Lcom/android/settings/SecurityWarningDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SecurityWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 71
    packed-switch p2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 73
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "lockScreenSettingsIntent":Landroid/content/Intent;
    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/SecurityWarningDialog;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->finish()V

    goto :goto_0

    .line 81
    .end local v0    # "lockScreenSettingsIntent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->finish()V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v1, "warningClearIntent":Landroid/content/Intent;
    const-string v2, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/SecurityWarningDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/SecurityWarningDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Lcom/android/settings/SecurityWarningDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 59
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    iget-object v2, p0, Lcom/android/settings/SecurityWarningDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 61
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1a4f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1a50

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SecurityWarningDialog;->setupAlert()V

    .line 67
    return-void
.end method
