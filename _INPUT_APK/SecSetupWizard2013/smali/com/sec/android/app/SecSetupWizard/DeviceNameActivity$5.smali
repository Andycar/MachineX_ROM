.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;
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

.field final synthetic val$nextBtnText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->val$nextBtnText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    iget-object v0, v0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualsimalwaysonCheck"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    sput-boolean v3, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimCheck:Z

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->val$nextBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualsimalwaysonCheck"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    sput-boolean v2, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->dualsimCheck:Z

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->val$nextBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
