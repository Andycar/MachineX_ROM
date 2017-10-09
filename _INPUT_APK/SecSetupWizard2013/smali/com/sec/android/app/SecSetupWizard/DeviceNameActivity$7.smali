.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->setDeviceName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 397
    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$302(Z)Z

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 399
    return-void
.end method
