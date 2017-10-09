.class Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;
.super Ljava/lang/Object;
.source "SafetyCareDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$100(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_user_agree"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$000(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    .line 125
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_disaster_user_agree"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
