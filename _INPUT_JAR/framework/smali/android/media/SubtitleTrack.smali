.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$RenderingWidget;,
        Landroid/media/SubtitleTrack$Run;,
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$CueList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field protected final mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected mCues:Landroid/media/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field protected final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .registers 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const-wide/16 v2, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 47
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    .line 76
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 65
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 66
    new-instance v0, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v0}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    .line 67
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 68
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 69
    return-void
.end method

.method static synthetic access$102(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/media/SubtitleTrack;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private removeRunsByEndTimeIndex(I)V
    .registers 10
    .param p1, "ix"    # I

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack$Run;

    .line 171
    .local v3, "run":Landroid/media/SubtitleTrack$Run;
    :goto_9
    if-eqz v3, :cond_29

    .line 172
    iget-object v0, v3, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 173
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_d
    if-eqz v0, :cond_1a

    .line 174
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v4, v0}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    .line 175
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 176
    .local v1, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 177
    move-object v0, v1

    .line 178
    goto :goto_d

    .line 179
    .end local v1    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    :cond_1a
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v6, v3, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 180
    iget-object v2, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 181
    .local v2, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 182
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 183
    move-object v3, v2

    .line 184
    goto :goto_9

    .line 185
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "nextRun":Landroid/media/SubtitleTrack$Run;
    :cond_29
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 186
    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .registers 4
    .param p1, "timeMs"    # J

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .registers 16
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 301
    monitor-enter p0

    :try_start_5
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v8, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    .line 303
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_33

    .line 304
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v8, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleTrack$Run;

    .line 305
    .local v2, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v2, :cond_d2

    .line 306
    new-instance v2, Landroid/media/SubtitleTrack$Run;

    .end local v2    # "run":Landroid/media/SubtitleTrack$Run;
    const/4 v8, 0x0

    invoke-direct {v2, v8}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$1;)V

    .line 307
    .restart local v2    # "run":Landroid/media/SubtitleTrack$Run;
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v8, v10, v11, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 308
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v2, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 314
    :cond_2d
    :goto_2d
    iget-object v8, v2, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v8, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 315
    iput-object p1, v2, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 319
    .end local v2    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_33
    const-wide/16 v0, -0x1

    .line 320
    .local v0, "nowMs":J
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_e0

    if-eqz v8, :cond_45

    .line 322
    :try_start_39
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_45} :catch_10e
    .catchall {:try_start_39 .. :try_end_45} :catchall_e0

    .line 329
    :cond_45
    :goto_45
    :try_start_45
    iget-boolean v8, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v8, :cond_92

    const-string v8, "SubtitleTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mVisible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " <= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_92
    iget-boolean v8, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v8, :cond_ef

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_ef

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ef

    .line 337
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_af

    .line 338
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    :cond_af
    move-object v3, p0

    .line 341
    .local v3, "track":Landroid/media/SubtitleTrack;
    move-wide v4, v0

    .line 342
    .local v4, "thenMs":J
    new-instance v7, Landroid/media/SubtitleTrack$1;

    invoke-direct {v7, p0, v3, v4, v5}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 356
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 357
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_d0

    const-string v7, "SubtitleTrack"

    const-string/jumbo v8, "scheduling update"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_45 .. :try_end_d0} :catchall_e0

    .line 371
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    .end local v4    # "thenMs":J
    :cond_d0
    :goto_d0
    monitor-exit p0

    return v6

    .line 309
    .end local v0    # "nowMs":J
    .restart local v2    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_d2
    :try_start_d2
    iget-wide v8, v2, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_2d

    .line 310
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v2, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J
    :try_end_de
    .catchall {:try_start_d2 .. :try_end_de} :catchall_e0

    goto/16 :goto_2d

    .line 301
    .end local v2    # "run":Landroid/media/SubtitleTrack$Run;
    :catchall_e0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 359
    .restart local v0    # "nowMs":J
    .restart local v3    # "track":Landroid/media/SubtitleTrack;
    .restart local v4    # "thenMs":J
    :cond_e3
    :try_start_e3
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_d0

    const-string v7, "SubtitleTrack"

    const-string v8, "failed to schedule subtitle view update"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 364
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    .end local v4    # "thenMs":J
    :cond_ef
    iget-boolean v6, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v6, :cond_10c

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_10c

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_109

    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v6, v8, v12

    if-gez v6, :cond_10c

    .line 368
    :cond_109
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_10c
    .catchall {:try_start_e3 .. :try_end_10c} :catchall_e0

    :cond_10c
    move v6, v7

    .line 371
    goto :goto_d0

    .line 324
    :catch_10e
    move-exception v8

    goto/16 :goto_45
.end method

.method protected declared-synchronized clearActiveCues()V
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_29
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 207
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 208
    monitor-exit p0

    return-void

    .line 205
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 192
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "ix":I
    :goto_8
    if-ltz v0, :cond_10

    .line 193
    invoke-direct {p0, v0}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 196
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 197
    return-void
.end method

.method protected finishedRun(J)V
    .registers 8
    .param p1, "runID"    # J

    .prologue
    .line 589
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1b

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1b

    .line 590
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 591
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_1b

    .line 592
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 595
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1b
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v1, :cond_6

    .line 297
    :goto_5
    return-void

    .line 289
    :cond_6
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_f

    .line 290
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 292
    :cond_f
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 293
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_18

    .line 294
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 296
    :cond_18
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    goto :goto_5
.end method

.method public isTimedText()Z
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onData(Landroid/media/SubtitleData;)V
    .registers 8
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 80
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 81
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    .line 84
    return-void
.end method

.method public abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 241
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSeek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1d
    monitor-enter p0

    .line 243
    const-wide/16 v2, 0x3e8

    :try_start_20
    div-long v0, p1, v2

    .line 244
    .local v0, "timeMs":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 245
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 246
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_33

    .line 247
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 248
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 249
    return-void

    .line 246
    .end local v0    # "timeMs":J
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public onStop()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 254
    monitor-enter p0

    .line 255
    :try_start_3
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "SubtitleTrack"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_f
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 257
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 258
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_24

    .line 259
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 260
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 261
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, v2, v3, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 262
    return-void

    .line 258
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public onTimedEvent(J)V
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    .line 226
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTimedEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1d
    monitor-enter p0

    .line 228
    const-wide/16 v2, 0x3e8

    :try_start_20
    div-long v0, p1, v2

    .line 229
    .local v0, "timeMs":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 230
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 231
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_33

    .line 232
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 233
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 234
    return-void

    .line 231
    .end local v0    # "timeMs":J
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method protected scheduleTimedEvents()V
    .registers 7

    .prologue
    .line 213
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_4b

    .line 214
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 215
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sched @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_39
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4c

    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_48
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 221
    :cond_4b
    return-void

    .line 216
    :cond_4c
    const-wide/16 v0, -0x1

    goto :goto_48
.end method

.method public setRunDiscardTimeMs(JJ)V
    .registers 10
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    .prologue
    .line 599
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1d

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1d

    .line 600
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 601
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_1d

    .line 602
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 603
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 606
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1d
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .registers 3
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-ne v0, p1, :cond_7

    .line 386
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 379
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_10

    .line 380
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 382
    :cond_10
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 383
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_5

    .line 376
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v1, :cond_6

    .line 281
    :cond_5
    :goto_5
    return-void

    .line 273
    :cond_6
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 274
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 275
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_11

    .line 276
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 278
    :cond_11
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_5

    .line 279
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    goto :goto_5
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .registers 12
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    .prologue
    .line 131
    monitor-enter p0

    if-nez p1, :cond_9

    :try_start_3
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v3, v4, p2

    if-lez v3, :cond_c

    .line 132
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 135
    :cond_c
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 138
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    .line 140
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_66

    .line 142
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_52

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_52
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_18

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_63

    goto :goto_18

    .line 131
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :catchall_63
    move-exception v3

    monitor-exit p0

    throw v3

    .line 147
    .restart local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .restart local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_66
    :try_start_66
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_9e

    .line 150
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_90

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_90
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_97

    .line 152
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 154
    :cond_97
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 155
    :cond_9e
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_18

    .line 157
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    goto/16 :goto_18

    .line 162
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    :cond_a7
    :goto_a7
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_bf

    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-gtz v3, :cond_bf

    .line 164
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_a7

    .line 166
    :cond_bf
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_c1
    .catchall {:try_start_66 .. :try_end_c1} :catchall_63

    .line 167
    monitor-exit p0

    return-void
.end method

.method public abstract updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
