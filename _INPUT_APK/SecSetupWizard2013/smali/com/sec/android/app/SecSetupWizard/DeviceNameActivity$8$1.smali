.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;->this$1:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;->this$1:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;

    iget-object v1, v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 411
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8$1;->this$1:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;

    iget-object v1, v1, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$8;->val$et:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 412
    return-void
.end method
