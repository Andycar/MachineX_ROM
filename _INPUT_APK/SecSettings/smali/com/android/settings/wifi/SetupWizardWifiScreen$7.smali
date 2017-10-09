.class Lcom/android/settings/wifi/SetupWizardWifiScreen$7;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "webViewActivity":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    return-void
.end method
