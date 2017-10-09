.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1531
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    const-string v6, "accessibility"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 1533
    .local v2, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeNegative(Z)Z

    .line 1534
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1536
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind_test"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 1537
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.colorblind"

    const-string v7, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1539
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Z

    move-result v5

    if-ne v5, v3, :cond_0

    .line 1540
    const-string v5, "firstRun"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1542
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1543
    const-string v5, "fromAccessibility"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1544
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    const/16 v6, 0x6b5

    invoke-virtual {v5, v1, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1554
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$4100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v7}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1556
    return-void

    .line 1546
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v5, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1549
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1550
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1551
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$4000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1552
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    move v3, v4

    .line 1554
    goto :goto_1
.end method
