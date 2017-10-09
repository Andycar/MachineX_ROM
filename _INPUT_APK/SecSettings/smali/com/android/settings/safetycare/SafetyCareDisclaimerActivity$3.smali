.class Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;
.super Ljava/lang/Object;
.source "SafetyCareDisclaimerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iput-object p2, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setCheckAll()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
