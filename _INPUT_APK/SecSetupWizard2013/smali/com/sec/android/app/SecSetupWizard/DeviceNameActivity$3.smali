.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;
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
    .line 229
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
