.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

.field final synthetic val$assistantMenu:Landroid/content/Intent;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck_assistantmenu:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$mcheck_assistantmenu:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$assistantMenu:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 488
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_assistant_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$mcheck_assistantmenu:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 489
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_interaction"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1002(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)I

    .line 492
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_interaction"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "Assistant menu switch on"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;->val$assistantMenu:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 499
    return-void
.end method
