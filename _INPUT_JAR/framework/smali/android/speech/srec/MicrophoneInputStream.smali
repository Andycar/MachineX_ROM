.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:J

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .registers 9
    .param p1, "sampleRate"    # I
    .param p2, "fifoDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    .line 45
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    .line 55
    invoke-static {}, Landroid/speech/srec/MicrophoneInputStream;->checkMicrophoneEnabled()Z

    .line 57
    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    .line 58
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_23

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_23
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(J)I

    move-result v0

    .line 60
    .local v0, "status":I
    if-eqz v0, :cond_47

    .line 61
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 62
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_47
    return-void
.end method

.method private static native AudioRecordDelete(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)J
.end method

.method private static native AudioRecordRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(J)I
.end method

.method private static native AudioRecordStop(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static checkMicrophoneEnabled()Z
    .registers 5

    .prologue
    .line 117
    const/4 v1, 0x1

    .line 119
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 121
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_34

    move-result v1

    .line 127
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_e
    if-nez v1, :cond_33

    .line 129
    const-string v3, "MicrophoneInputStream"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_33

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_33

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 134
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 138
    :cond_33
    return v1

    .line 123
    :catch_34
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_e
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 91
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 93
    :try_start_8
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(J)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_19

    .line 96
    :try_start_d
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_15

    .line 98
    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    .line 102
    :cond_14
    return-void

    .line 98
    :catchall_15
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    .line 95
    :catchall_19
    move-exception v0

    .line 96
    :try_start_1a
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_22

    .line 98
    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    :catchall_22
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 107
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_14
    return-void
.end method

.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_13
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v2, v3, v1, v6, v7}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    .line 70
    .local v0, "rtn":I
    if-ne v0, v7, :cond_24

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    :goto_23
    return v1

    :cond_24
    const/4 v1, -0x1

    goto :goto_23
.end method

.method public read([B)I
    .registers 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_11
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method
