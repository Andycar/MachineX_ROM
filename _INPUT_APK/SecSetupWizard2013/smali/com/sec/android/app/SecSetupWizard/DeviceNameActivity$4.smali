.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$100(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "layout":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 254
    return-void
.end method
