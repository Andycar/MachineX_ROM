.class Lcom/android/settings/Settings$RingerModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method private constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0

    .prologue
    .line 6500
    iput-object p1, p0, Lcom/android/settings/Settings$RingerModeBroadcastReceiver;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 6503
    if-eqz p2, :cond_3

    .line 6504
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RingerModeBroadcastReceiver "

    const-string v2, "Inside BR "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6506
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6507
    iget-object v1, p0, Lcom/android/settings/Settings$RingerModeBroadcastReceiver;->this$0:Lcom/android/settings/Settings;

    const-string v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2702(Lcom/android/settings/Settings;I)I

    .line 6508
    iget-object v1, p0, Lcom/android/settings/Settings$RingerModeBroadcastReceiver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/Settings$RingerModeBroadcastReceiver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v1

    if-nez v1, :cond_3

    .line 6511
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Settings$RingerModeBroadcastReceiver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1, v3}, Lcom/android/settings/Settings;->access$2802(Lcom/android/settings/Settings;I)I

    .line 6512
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RingerModeBroadcastReceiver "

    const-string v2, "Toggle  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6517
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    return-void
.end method
