.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 402
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 405
    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    .line 406
    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$302(Z)Z

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->val$et:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;-><init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
