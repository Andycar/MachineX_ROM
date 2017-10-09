.class Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;
.super Ljava/lang/Object;
.source "SafetyCareDisasterDisclaimerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iput-object p2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 104
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->val$okButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$4;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
