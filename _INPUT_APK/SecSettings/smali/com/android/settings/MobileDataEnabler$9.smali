.class Lcom/android/settings/MobileDataEnabler$9;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "intentAction":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 291
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v5, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v5}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/MobileDataEnabler;->access$202(Lcom/android/settings/MobileDataEnabler;I)I

    .line 293
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 295
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9"

    invoke-static {v4, v8, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9"

    invoke-static {v4, v7, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v4, "MobileDataEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: action - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMobileData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SIM_STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CURRENT_SIM_STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SIM_STATE2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.sim.state2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CURRENT_SIM_STATE2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAirPlaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v6}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 320
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_0
    return-void

    .line 309
    .restart local v0    # "cardStatus1":Ljava/lang/String;
    .restart local v1    # "cardStatus2":Ljava/lang/String;
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 310
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 312
    :cond_5
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 315
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method
