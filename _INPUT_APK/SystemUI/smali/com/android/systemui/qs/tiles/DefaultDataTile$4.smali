.class Lcom/android/systemui/qs/tiles/DefaultDataTile$4;
.super Landroid/content/BroadcastReceiver;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "intentAction":Ljava/lang/String;
    const-string v7, "DefaultDataTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intentAction:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v8

    if-ne v8, v3, :cond_1

    :goto_0
    invoke-static {v7, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 192
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 193
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 194
    const-string v3, "DefaultDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mCurrentDataNW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 245
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v6

    .line 191
    goto :goto_0

    .line 196
    :cond_2
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 200
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 201
    const-string v3, "DefaultDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mCurrentDataNW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto :goto_1

    .line 203
    :cond_4
    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 206
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 209
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 210
    .local v4, "subId":J
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 211
    const-string v3, "DefaultDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mCurrentDataNW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, "delayReady":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 216
    .end local v0    # "delayReady":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "subId":J
    :cond_5
    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 217
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 218
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 220
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 221
    .restart local v4    # "subId":J
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 222
    const-string v3, "DefaultDataTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mCurrentDataNW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto/16 :goto_1

    .line 224
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "subId":J
    :cond_6
    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "android.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 227
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 228
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 231
    const-string v7, "subscription"

    invoke-virtual {p2, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 232
    .restart local v4    # "subId":J
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 233
    const-string v7, "DefaultDataTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMobileData:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/mCurrentDataNW:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$508(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    .line 235
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    if-le v7, v3, :cond_8

    .line 236
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 238
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 239
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "default_data"

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v7

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 240
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "subId":J
    :cond_9
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1
.end method
