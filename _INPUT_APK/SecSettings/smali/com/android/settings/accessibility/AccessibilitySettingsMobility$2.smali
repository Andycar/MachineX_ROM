.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 132
    .local v0, "accessControlEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f0a0a90

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 139
    :goto_1
    return-void

    .end local v0    # "accessControlEnabled":Z
    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    .line 136
    .restart local v0    # "accessControlEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f0a0a91

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method
