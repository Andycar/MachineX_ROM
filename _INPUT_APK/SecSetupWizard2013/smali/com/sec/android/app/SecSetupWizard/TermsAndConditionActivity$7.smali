.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$nextBtnArea:Landroid/widget/LinearLayout;

.field final synthetic val$nextImage:Landroid/widget/ImageView;

.field final synthetic val$nextText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v7, 0x7f0b0035

    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v5, 0x3ecccccd    # 0.4f

    .line 386
    if-eqz p2, :cond_4

    .line 387
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v3}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$800(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isKKupgradeforEula()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isRemoveSurveyModeModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    :cond_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 395
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 396
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 397
    const-string v3, "TermsAndConditionActivity"

    const-string v4, "onCheckedChanged : isChecked true radioCheck != -1 next Button enabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samsung_eula_agree"

    if-eqz p2, :cond_6

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    return-void

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 392
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v3

    if-nez v3, :cond_3

    .line 400
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 405
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 406
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const v5, 0x7f0b0036

    invoke-virtual {v4, v5}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "disableDiscription":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    const-string v3, "TermsAndConditionActivity"

    const-string v4, "onCheckedChanged : isChecked true radioCheck == -1 next Button disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v0    # "disableDiscription":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 403
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 412
    :cond_4
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v3

    if-nez v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 418
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 419
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const v5, 0x7f0b0036

    invoke-virtual {v4, v5}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .restart local v0    # "disableDiscription":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    const-string v3, "TermsAndConditionActivity"

    const-string v4, "onCheckedChanged : isChecked false next Button disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 415
    .end local v0    # "disableDiscription":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    :cond_6
    move v1, v2

    .line 424
    goto/16 :goto_2
.end method
