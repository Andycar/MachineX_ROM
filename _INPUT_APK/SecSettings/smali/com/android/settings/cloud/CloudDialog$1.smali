.class Lcom/android/settings/cloud/CloudDialog$1;
.super Landroid/os/CountDownTimer;
.source "CloudDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudDialog;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$000(Lcom/android/settings/cloud/CloudDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "CloudSettings"

    const-string v1, "Request Timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    const v2, 0x7f0a18fd    # 1.835632E38f

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$100(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$100(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "CloudSettings"

    const-string v1, "Still waiting for the response from cloud agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method
