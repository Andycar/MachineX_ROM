.class Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;
.super Ljava/lang/Object;
.source "CURegistrationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$nextBtnArea:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/CURegistrationActivity$2;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0
.end method
