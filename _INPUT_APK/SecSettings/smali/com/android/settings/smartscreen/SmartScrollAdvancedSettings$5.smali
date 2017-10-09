.class Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$400(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$500(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$600(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$700(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$800(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$900(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1200(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1400(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1500(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1600(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings/RadioPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$1700(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings/RadioPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    .line 412
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "SmartScrollAdvancedSettings"

    const-string v1, "Insert Log"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "ACSS"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    return-void
.end method
