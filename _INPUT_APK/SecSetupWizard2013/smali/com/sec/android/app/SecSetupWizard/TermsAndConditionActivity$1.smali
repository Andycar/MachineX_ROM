.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;
.super Landroid/os/Handler;
.source "TermsAndConditionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$002(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 74
    :cond_0
    return-void
.end method
