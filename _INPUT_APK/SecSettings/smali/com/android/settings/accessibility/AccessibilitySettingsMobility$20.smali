.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

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

    .line 897
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 899
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 900
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 901
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 902
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    .line 903
    return-void
.end method
