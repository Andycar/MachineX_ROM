.class Lcom/sec/android/sviewcover/SViewCoverView$10;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2726
    const/4 v4, 0x0

    .line 2727
    .local v4, "newCallCnt":I
    const/4 v5, 0x0

    .line 2729
    .local v5, "newMsgCnt":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4300(Lcom/sec/android/sviewcover/SViewCoverView;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2730
    const-string v9, "CoverUI"

    const-string v10, "mNotificationListener is not registered"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_0
    :goto_0
    return-void

    .line 2734
    :cond_1
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/service/notification/NotificationListenerService;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 2736
    .local v6, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v6, :cond_2

    .line 2737
    const-string v9, "CoverUI"

    const-string v10, "mUpdateMissedEventCount() return : notifications is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2741
    :cond_2
    move-object v0, v6

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v8, v0, v1

    .line 2742
    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 2743
    .local v3, "n":Landroid/app/Notification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2745
    .local v7, "pkg":Ljava/lang/String;
    const-string v9, "com.android.phone"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.android.server.telecom"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2747
    :cond_3
    if-eqz v3, :cond_4

    iget v9, v3, Landroid/app/Notification;->missedCount:I

    if-lez v9, :cond_4

    .line 2748
    iget v9, v3, Landroid/app/Notification;->missedCount:I

    add-int/2addr v4, v9

    .line 2751
    :cond_4
    const-string v9, "com.android.mms"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2752
    if-eqz v3, :cond_5

    iget v9, v3, Landroid/app/Notification;->missedCount:I

    if-lez v9, :cond_5

    .line 2753
    iget v9, v3, Landroid/app/Notification;->missedCount:I

    add-int/2addr v5, v9

    .line 2741
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2758
    .end local v3    # "n":Landroid/app/Notification;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v9, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    if-ne v4, v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v9, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    if-eq v5, v9, :cond_0

    .line 2760
    :cond_7
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iput v4, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    .line 2761
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iput v5, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    .line 2762
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v9, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v9, v11, :cond_8

    .line 2764
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 2766
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 2769
    :cond_8
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v9, v9, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 2770
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9, v11}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    goto/16 :goto_0

    .line 2772
    :cond_9
    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4500(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0
.end method
