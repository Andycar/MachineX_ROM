.class public Lcom/android/settings/SettingsIntentReceiver$AssistiveLightIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistiveLightIntentReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2429
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2434
    .local v0, "action":Ljava/lang/String;
    const-string v3, "CustomFrequencyManagerService"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CustomFrequencyManager;

    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$002(Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;

    .line 2436
    const-string v3, "android.intent.action.ASSISTIVELIGHT_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2437
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2438
    invoke-static {}, Lcom/android/settings/SettingsIntentReceiver;->access$000()Landroid/os/CustomFrequencyManager;

    move-result-object v3

    const-string v4, "CLOCK_SET_TORCH_LIGHT"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2440
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const v3, 0x7f0205b6

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2441
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2449
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 2444
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2445
    invoke-static {}, Lcom/android/settings/SettingsIntentReceiver;->access$000()Landroid/os/CustomFrequencyManager;

    move-result-object v3

    const-string v4, "CLOCK_SET_TORCH_LIGHT"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2447
    .restart local v1    # "mIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
