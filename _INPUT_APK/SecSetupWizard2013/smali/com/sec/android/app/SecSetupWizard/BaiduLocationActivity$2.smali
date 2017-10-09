.class Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;
.super Ljava/lang/Object;
.source "BaiduLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_wifiscan:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->setResult(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->finish()V

    .line 102
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
