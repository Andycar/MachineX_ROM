.class Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeKeyLongPressControlThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "handleVolumeKeyLongPress"


# instance fields
.field private final DURATION_LONG_PRESS:I

.field private final DURATION_REPEAT:I

.field private mDirection:I

.field private mFlags:I

.field private mNeedToRun:Z

.field private mSleepDuration:I

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;)V
    .registers 3

    .prologue
    .line 224
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 230
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    .line 231
    const/16 v0, 0x32

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSessionLegacyHelper$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/session/MediaSessionLegacyHelper;
    .param p2, "x1"    # Landroid/media/session/MediaSessionLegacyHelper$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;-><init>(Landroid/media/session/MediaSessionLegacyHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 247
    :goto_0
    :try_start_0
    iget v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_5f

    .line 251
    :goto_6
    monitor-enter p0

    .line 252
    :try_start_7
    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z
    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "handleVolumeKeyLongPress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->access$100(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2f
    iget-boolean v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->access$100(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 256
    :cond_3f
    monitor-exit p0

    .line 264
    return-void

    .line 258
    :cond_41
    iget v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_4b

    .line 259
    const/16 v0, 0x32

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 261
    :cond_4b
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    # getter for: Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->access$200(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    iget v2, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mDirection:I

    iget v3, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    .line 262
    monitor-exit p0

    goto :goto_0

    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw v0

    .line 248
    :catch_5f
    move-exception v0

    goto :goto_6
.end method

.method public updateInfo(IIZ)V
    .registers 5
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "down"    # Z

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    iput p1, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mDirection:I

    .line 237
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 238
    iput-boolean p3, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 239
    iput p2, p0, Landroid/media/session/MediaSessionLegacyHelper$VolumeKeyLongPressControlThread;->mFlags:I

    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
