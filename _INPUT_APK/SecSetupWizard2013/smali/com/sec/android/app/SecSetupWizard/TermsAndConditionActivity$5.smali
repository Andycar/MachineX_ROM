.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 294
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->changeFocus(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 300
    return v2
.end method
