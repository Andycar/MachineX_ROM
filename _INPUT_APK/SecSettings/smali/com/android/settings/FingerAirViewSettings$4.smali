.class Lcom/android/settings/FingerAirViewSettings$4;
.super Ljava/lang/Object;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewSettings;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 359
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 362
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0, v3}, Lcom/android/settings/FingerAirViewSettings;->access$600(Lcom/android/settings/FingerAirViewSettings;Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$700(Lcom/android/settings/FingerAirViewSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings$4;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettings;->access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 375
    :cond_1
    return-void
.end method
