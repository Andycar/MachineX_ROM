.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;
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
    .line 840
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 842
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 843
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 845
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 849
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 866
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v0, "acIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.accesscontrol"

    const-string v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 856
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 857
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 859
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 861
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 862
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 864
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    goto :goto_0
.end method
