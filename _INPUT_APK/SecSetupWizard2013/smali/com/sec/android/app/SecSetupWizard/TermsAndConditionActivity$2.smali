.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 246
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->saveToDB()V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setResult(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->finish()V

    .line 253
    return-void
.end method
