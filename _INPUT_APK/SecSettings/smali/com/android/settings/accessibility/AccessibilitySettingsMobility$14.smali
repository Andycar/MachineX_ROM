.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;
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
    .line 796
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 798
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 800
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.assistantmenu"

    const-string v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 805
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 807
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 808
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    .line 809
    return-void
.end method
