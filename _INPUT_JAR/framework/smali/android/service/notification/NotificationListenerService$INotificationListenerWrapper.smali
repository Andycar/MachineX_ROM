.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .prologue
    .line 604
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method


# virtual methods
.method public onInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 688
    :goto_5
    return-void

    .line 685
    :catch_6
    move-exception v0

    .line 686
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 6
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 650
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 651
    :try_start_7
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_20

    .line 653
    :try_start_c
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_13
    .catchall {:try_start_c .. :try_end_11} :catchall_20

    .line 657
    :goto_11
    :try_start_11
    monitor-exit v2

    .line 658
    return-void

    .line 654
    :catch_13
    move-exception v0

    .line 655
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 657
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .registers 5
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 679
    :goto_5
    return-void

    .line 676
    :catch_6
    move-exception v0

    .line 677
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onListenerHintsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 9
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 610
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2a

    move-result-object v1

    .line 615
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 618
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 619
    :try_start_18
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_45

    .line 621
    :try_start_1d
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_28} :catch_38
    .catchall {:try_start_1d .. :try_end_28} :catchall_45

    .line 625
    :goto_28
    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_45

    .line 626
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_29
    return-void

    .line 611
    :catch_2a
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_38
    move-exception v2

    .line 623
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_39
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationPosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 625
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw v3
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 6
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 664
    :try_start_7
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_26

    .line 666
    :try_start_c
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_17} :catch_19
    .catchall {:try_start_c .. :try_end_17} :catchall_26

    .line 670
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 671
    return-void

    .line 667
    :catch_19
    move-exception v0

    .line 668
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onNotificationRankingUpdate"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 670
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 9
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 632
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_1d

    move-result-object v1

    .line 638
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 639
    :try_start_b
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_38

    .line 641
    :try_start_10
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_2b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_38

    .line 645
    :goto_1b
    :try_start_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_38

    .line 646
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1c
    return-void

    .line 633
    :catch_1d
    move-exception v0

    .line 634
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_2b
    move-exception v2

    .line 643
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2c
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 645
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v3
.end method
