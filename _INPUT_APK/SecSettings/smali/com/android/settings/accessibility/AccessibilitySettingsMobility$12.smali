.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;
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
    .line 765
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 767
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 768
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 772
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 774
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    .line 775
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    .line 778
    :cond_1
    return-void
.end method
