.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Landroid/content/Intent;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFlight"
.end annotation


# instance fields
.field final mAlarmType:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mUid:I

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;I)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "alarmType"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 674
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 675
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 676
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 677
    iput-object p5, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 678
    # invokes: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 679
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 680
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_2f

    .line 681
    new-instance v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    .line 682
    .restart local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_2f
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 685
    iput p4, p0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    .line 686
    iput p6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    .line 687
    return-void
.end method
