.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field private isExpanded:Z

.field private isVisible:Z

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 285
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 287
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 289
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 291
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 293
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 295
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 300
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 302
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 307
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 312
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 314
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 316
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    return-void
.end method

.method private updateVisiblyExpandedStats()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 404
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    if-eqz v2, :cond_23

    .line 406
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 407
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 409
    :cond_16
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 410
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 419
    :cond_22
    :goto_22
    return-void

    .line 414
    :cond_23
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 415
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 416
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    goto :goto_22
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 424
    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .registers 7

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 337
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 340
    :cond_12
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .registers 7

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 328
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 331
    :cond_12
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 319
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_9

    .line 322
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 364
    return-void
.end method

.method public onClick()V
    .registers 5

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 350
    :cond_11
    return-void
.end method

.method public onDismiss()V
    .registers 5

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 359
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 360
    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .registers 7
    .param p1, "userAction"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 395
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 396
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 397
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    .line 399
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 400
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    .line 368
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 12
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 372
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 373
    .local v2, "wasVisible":Z
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 374
    if-eqz p1, :cond_2f

    .line 375
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_1b

    .line 376
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 377
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 379
    :cond_1b
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_27

    .line 380
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 389
    :cond_27
    :goto_27
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    if-eq v2, v3, :cond_2e

    .line 390
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 392
    :cond_2e
    return-void

    .line 383
    :cond_2f
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_27

    .line 384
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 385
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleNotificationStats{posttimeElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToFirstClickMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToDismissMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentAirtimeStartElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airtimeExpandedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posttimeToFirstVisibleExpansionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentAirtimeExpandedSEMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
