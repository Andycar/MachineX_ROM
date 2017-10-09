.class Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;
.super Landroid/os/Handler;
.source "SamsungLegal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/SamsungLegal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$000(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$000(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$000(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$002(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$200(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;->this$0:Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->access$100(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
