.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->initView()V
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
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 287
    const-string v0, "jjh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$500(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setFocus(IZ)V

    .line 289
    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$700(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setFocus(IZ)V

    .line 292
    :cond_0
    return-void
.end method
