.class Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;
.super Ljava/lang/Object;
.source "AttWelcomeSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;

    iget v0, v0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->mSecAcctAdded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->setResult(I)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->finish()V

    .line 62
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/AttWelcomeSetupActivity;->setResult(I)V

    goto :goto_0
.end method
