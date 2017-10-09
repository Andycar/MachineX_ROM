.class Lcom/sec/android/sviewcover/SViewCoverMiniView$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "action":Ljava/lang/String;
    const-string v8, "SViewCoverMiniView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver onReceive() : action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v8, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    const-string v8, "type"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "type":Ljava/lang/String;
    const-string v8, "visibility"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 213
    .local v7, "visibility":Z
    const-string v8, "remote"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 214
    .local v4, "remoteView":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    new-instance v10, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;

    iget-object v11, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {v10, v11, v6, v7, v4}, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;-><init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 216
    .local v3, "remoteMsg":Landroid/os/Message;
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    .end local v3    # "remoteMsg":Landroid/os/Message;
    .end local v4    # "remoteView":Landroid/widget/RemoteViews;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "visibility":Z
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    sget-boolean v8, Lcom/sec/android/sviewcover/SViewCoverMiniView;->mIsNotSCover1:Z

    if-eqz v8, :cond_0

    .line 219
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$400(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    goto :goto_0

    .line 221
    :cond_2
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 222
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 223
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$500(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->replaceText()V

    .line 224
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$600(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->replaceText()V

    .line 225
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$700(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    goto :goto_0

    .line 227
    :cond_3
    const-string v8, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 228
    :cond_4
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, "pkg":Ljava/lang/String;
    const-string v8, "com.android.phone"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.android.mms"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    :cond_5
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$800(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    .line 233
    const-string v8, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 234
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$902(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    .line 236
    :cond_6
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    goto/16 :goto_0

    .line 238
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_7
    const-string v8, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 239
    const-string v8, "SViewCoverMiniView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cover type ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v10}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1100(Lcom/sec/android/sviewcover/SViewCoverMiniView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mIsSmartAlertNeedToBeChecked ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v10}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$900(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1100(Lcom/sec/android/sviewcover/SViewCoverMiniView;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1100(Lcom/sec/android/sviewcover/SViewCoverMiniView;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 243
    :cond_8
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$900(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    .line 245
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)V

    .line 246
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$902(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    .line 247
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 248
    const-string v8, "SViewCoverMiniView"

    const-string v9, "wakeUp when Pick up tutorial"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :cond_9
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 252
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    .line 253
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)V

    goto/16 :goto_0

    .line 254
    :cond_a
    const-string v8, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 255
    const-string v8, "SViewCoverMiniView"

    const-string v9, "onReceive() : ACTION_DATE_CHANGED "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->handleBackgroundColorUpdated()V

    goto/16 :goto_0

    .line 257
    :cond_b
    const-string v8, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 271
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 272
    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "state":Ljava/lang/String;
    const-string v8, "SViewCoverMiniView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : ACTION_PHONE_STATE_CHANGED = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 276
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1402(Lcom/sec/android/sviewcover/SViewCoverMiniView;I)I

    goto/16 :goto_0

    .line 278
    :cond_c
    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1402(Lcom/sec/android/sviewcover/SViewCoverMiniView;I)I

    goto/16 :goto_0

    .line 282
    .end local v5    # "state":Ljava/lang/String;
    :cond_d
    const-string v8, "com.samsung.pen.INSERT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 283
    const-string v8, "penInsert"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, "penInsert":Z
    if-nez v1, :cond_0

    .line 285
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0
.end method
