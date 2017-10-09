.class Lcom/android/settings/EasyModeSettings$7;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->positiveButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iput-object p2, p0, Lcom/android/settings/EasyModeSettings$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 501
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "teasymode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "op_mode_switch"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    :cond_0
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v6, p0, Lcom/android/settings/EasyModeSettings$7;->val$context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/settings/EasyModeSettings;->access$400(Lcom/android/settings/EasyModeSettings;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->val$context:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 508
    .local v2, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v2, v7}, Landroid/os/PersonaManager;->launchPersonaHome(I)Z

    .line 509
    const-string v5, "EasyModeSettings"

    const-string v6, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v2    # "mPersona":Landroid/os/PersonaManager;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "easymode"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    const-string v5, "easymode_from"

    const-string v6, "settings"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    const-string v5, "EasyModeSettings"

    const-string v6, "onClick 1_1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v4, "smart_scroll_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "smart_pause"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v3, "smart_pause_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    const-string v5, "com.android.settings.Settings$EasyModeLauncherActivity"

    iget-object v6, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-static {v6}, Lcom/android/settings/EasyModeSettings;->access$500(Lcom/android/settings/EasyModeSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5, v8}, Lcom/android/settings/EasyModeSettings;->setDefaultLauncher(Z)V

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
