.class public Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectAccessReceiver.java"


# static fields
.field private static mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public deActiveStatusBar()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 121
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 124
    :cond_0
    return-void
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNegativeColorEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x1

    .line 113
    .local v0, "negativeColorCheck":Z
    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 116
    .local v1, "powerSavingModeCheck":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v2

    .end local v1    # "powerSavingModeCheck":Z
    :cond_0
    move v1, v3

    .line 113
    goto :goto_0

    .restart local v1    # "powerSavingModeCheck":Z
    :cond_1
    move v2, v3

    .line 116
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    .line 22
    sget-object v10, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v10, :cond_0

    .line 23
    new-instance v10, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {v10, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    .line 25
    :cond_0
    const-string v10, "com.android.settings.accessibility.directaccess.CLOSE_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 26
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->dismissDialog()V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    const-string v10, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 30
    const-string v10, "DirectAccessReceiver"

    const-string v11, "Intent Receive"

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->isDeviceProvisioned()Z

    move-result v3

    .line 33
    .local v3, "isDeviceProvisioned":Z
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 34
    const-string v10, "DirectAccessReceiver"

    const-string v11, "direct access switch state : on"

    invoke-static {v10, v11}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v10, "keyguard"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 37
    .local v6, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    .line 39
    .local v5, "keyguardShowing":Z
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 41
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_8

    move v4, v8

    .line 50
    .local v4, "isNotCheck":Z
    :goto_1
    const/4 v1, 0x0

    .line 51
    .local v1, "actionCheckNum":I
    const/4 v2, 0x0

    .line 53
    .local v2, "directAction":I
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    const/4 v2, 0x1

    .line 57
    :cond_4
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    const/4 v2, 0x2

    .line 61
    :cond_5
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_6

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->isNegativeColorEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    const/4 v2, 0x3

    .line 67
    :cond_6
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_7

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_use"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_7

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    const/4 v2, 0x4

    .line 72
    :cond_7
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9

    .line 73
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Access control is now working"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x4

    .line 76
    goto/16 :goto_0

    .end local v1    # "actionCheckNum":I
    .end local v2    # "directAction":I
    .end local v4    # "isNotCheck":Z
    :cond_8
    move v4, v9

    .line 45
    goto :goto_1

    .line 79
    .restart local v1    # "actionCheckNum":I
    .restart local v2    # "directAction":I
    .restart local v4    # "isNotCheck":Z
    :cond_9
    if-nez v4, :cond_a

    if-le v1, v8, :cond_a

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->deActiveStatusBar()V

    .line 81
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8, v5, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->showDialog(ZZ)V

    .line 82
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Show Dialog"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_a
    if-ne v1, v8, :cond_1

    .line 84
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 86
    :pswitch_0
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessibilitySettings(Landroid/content/Context;)V

    .line 87
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action accessibility"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :pswitch_1
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeChanged()V

    .line 91
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action talkback"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :pswitch_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_b

    move v7, v8

    .line 95
    .local v7, "mCurrentNegativeMode":Z
    :goto_2
    sget-object v10, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v7, :cond_c

    :goto_3
    invoke-virtual {v10, v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->changeNegativeModeSystemSetting(Z)V

    .line 96
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action negative color"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "mCurrentNegativeMode":Z
    :cond_b
    move v7, v9

    .line 94
    goto :goto_2

    .restart local v7    # "mCurrentNegativeMode":Z
    :cond_c
    move v8, v9

    .line 95
    goto :goto_3

    .line 99
    .end local v7    # "mCurrentNegativeMode":Z
    :pswitch_3
    sget-object v8, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    .line 100
    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action interaction control"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
