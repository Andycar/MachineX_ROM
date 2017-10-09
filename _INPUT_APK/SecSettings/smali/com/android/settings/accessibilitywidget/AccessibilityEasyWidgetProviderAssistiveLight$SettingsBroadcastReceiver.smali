.class Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityEasyWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    .line 440
    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 441
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    .line 460
    .local v4, "orientation":I
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    if-eq v5, v4, :cond_0

    .line 461
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 462
    iput v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mOrientation:I

    .line 466
    .end local v4    # "orientation":I
    :cond_0
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "mIntent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 469
    const-string v5, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v6, "User switched, Assistive light should be turned off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 473
    const-string v5, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() PLUG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "plugged"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / STATUS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / LEVEL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "level"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v5, "status"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 478
    .local v1, "battStatus":I
    const-string v5, "level"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 479
    .local v2, "mBatteryLevel":I
    invoke-static {v2}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$202(I)I

    .line 481
    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    .line 482
    invoke-static {v8}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$302(Z)Z

    .line 484
    const-string v5, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() mBatteryLevel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / Static Battery Level : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$400()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    .end local v1    # "battStatus":I
    .end local v2    # "mBatteryLevel":I
    :cond_2
    :goto_0
    return-void

    .line 489
    .restart local v1    # "battStatus":I
    .restart local v2    # "mBatteryLevel":I
    :cond_3
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$100(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    if-gt v2, v5, :cond_2

    .line 491
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v3    # "mIntent":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    const v5, 0x7f0a0088

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 497
    const-string v5, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() low battery ASSISTIVE OFF : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {v9}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$302(Z)Z

    .line 501
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->access$400()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    const-string v5, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v6, "onReceive() : cancel Timer"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    return-void
.end method
