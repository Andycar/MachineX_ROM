.class Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$1;
.super Ljava/lang/Object;
.source "CURegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;->setResult(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;->finish()V

    .line 59
    return-void
.end method
