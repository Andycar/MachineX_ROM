.class Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1, p2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$802(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;I)I

    .line 433
    packed-switch p2, :pswitch_data_0

    .line 443
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$900(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 450
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$800(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isKKupgradeforEula()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isRemoveSurveyModeModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    :cond_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 457
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 460
    const-string v1, "TermsAndConditionActivity"

    const-string v2, "onCheckedChanged : terms.isChecked true radioCheck != -1 next Button enabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    :goto_3
    return-void

    .line 435
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_errorlog_agree"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    const-string v1, "TermsAndConditionActivity"

    const-string v2, "onCheckedChanged : samsung_errorlog_agree = 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samsung_errorlog_agree"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    const-string v1, "TermsAndConditionActivity"

    const-string v2, "onCheckedChanged : samsung_errorlog_agree = 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 462
    :cond_4
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v1

    if-nez v1, :cond_5

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 468
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "disableDiscription":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    const-string v1, "TermsAndConditionActivity"

    const-string v2, "onCheckedChanged : terms.isChecked false radioCheck == -1 next Button disabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 465
    .end local v0    # "disableDiscription":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;->val$nextImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 433
    :pswitch_data_0
    .packed-switch 0x7f0d007d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
