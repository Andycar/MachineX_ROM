.class Lcom/android/server/notification/NotificationManagerService$10;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V
    .registers 13

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_69

    const/4 v9, 0x0

    .line 2962
    .local v9, "listenerName":Ljava/lang/String;
    :goto_5
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingUid:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingPid:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$id:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$tag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$userId:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustHaveFlags:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustNotHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$reason:I

    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 2965
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2966
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$id:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$userId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v10

    .line 2967
    .local v10, "index":I
    if-ltz v10, :cond_a0

    .line 2968
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 2972
    .local v11, "r":Lcom/android/server/notification/NotificationRecord;
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$reason:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5a

    .line 2973
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_7f

    .line 2975
    :try_start_47
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2976
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->SPCMDBResetTime(Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5a} :catch_a2
    .catchall {:try_start_47 .. :try_end_5a} :catchall_7f

    .line 2982
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustHaveFlags:I

    and-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustHaveFlags:I

    if-eq v0, v2, :cond_72

    .line 2983
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_7f

    .line 3004
    .end local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_68
    return-void

    .line 2961
    .end local v9    # "listenerName":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_69
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 2985
    .restart local v9    # "listenerName":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_72
    :try_start_72
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$mustNotHaveFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_82

    .line 2993
    monitor-exit v1

    goto :goto_68

    .line 3003
    .end local v10    # "index":I
    .end local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_7f

    throw v0

    .line 2996
    .restart local v10    # "index":I
    .restart local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_82
    :try_start_82
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2998
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$sendDelete:Z

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v0, v11, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3000
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingUid:I

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->val$callingPid:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V
    invoke-static {v0, v11, v2, v3, v9}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    .line 3001
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3003
    .end local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_82 .. :try_end_a1} :catchall_7f

    goto :goto_68

    .line 2979
    .restart local v11    # "r":Lcom/android/server/notification/NotificationRecord;
    :catch_a2
    move-exception v0

    goto :goto_5a
.end method
