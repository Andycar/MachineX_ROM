.class Lcom/android/settings/EasyModeSettings$5;
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


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

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

    .line 450
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "op_mode_switch"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "easymode"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v5, "easymode_from"

    const-string v6, "settings"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    const-string v5, "EasyModeSettings"

    const-string v6, "onClick 2_1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v4, "smart_scroll_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "smart_pause"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v3, "smart_pause_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v5, v5, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v6, "multi_window_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.skt.tmode.intent.action.TMODE_NONPOPUP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v2, "intent_tmode":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$5;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v5}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 484
    return-void
.end method
