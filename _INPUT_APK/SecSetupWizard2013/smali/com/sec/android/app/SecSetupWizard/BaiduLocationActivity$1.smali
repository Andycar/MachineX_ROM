.class Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;
.super Ljava/lang/Object;
.source "BaiduLocationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;

    iget-object v2, v2, Lcom/sec/android/app/SecSetupWizard/BaiduLocationActivity;->check_location_sharing:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method
