.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$1;,
        Landroid/media/SoundPool$SoundPoolStub;,
        Landroid/media/SoundPool$SoundPoolImpl;,
        Landroid/media/SoundPool$SoundPoolDelegate;,
        Landroid/media/SoundPool$OnLoadCompleteListener;,
        Landroid/media/SoundPool$Builder;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/media/SoundPool$SoundPoolDelegate;


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .prologue
    .line 133
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    .line 135
    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "config.disable_media"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    new-instance v0, Landroid/media/SoundPool$SoundPoolStub;

    invoke-direct {v0}, Landroid/media/SoundPool$SoundPoolStub;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    .line 143
    :goto_13
    return-void

    .line 141
    :cond_14
    new-instance v0, Landroid/media/SoundPool$SoundPoolImpl;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/SoundPool$SoundPoolImpl;-><init>(Landroid/media/SoundPool;ILandroid/media/AudioAttributes;)V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    goto :goto_13
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/AudioAttributes;
    .param p3, "x2"    # Landroid/media/SoundPool$1;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoPause()V

    .line 345
    return-void
.end method

.method public final autoResume()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoResume()V

    .line 355
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 229
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 4
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 241
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 259
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final pause(I)V
    .registers 3
    .param p1, "streamID"    # I

    .prologue
    .line 318
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->pause(I)V

    .line 319
    return-void
.end method

.method public final play(IFFIIF)I
    .registers 14
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 302
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final release()V
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->release()V

    .line 479
    return-void
.end method

.method public final resume(I)V
    .registers 3
    .param p1, "streamID"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->resume(I)V

    .line 333
    return-void
.end method

.method public final setLoop(II)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "loop"    # I

    .prologue
    .line 423
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setLoop(II)V

    .line 424
    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 468
    return-void
.end method

.method public final setPriority(II)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "priority"    # I

    .prologue
    .line 408
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setPriority(II)V

    .line 409
    return-void
.end method

.method public final setRate(IF)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 439
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setRate(IF)V

    .line 440
    return-void
.end method

.method public final setStreamType(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->setStreamType(I)V

    .line 450
    return-void
.end method

.method public setVolume(IF)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 395
    return-void
.end method

.method public final setVolume(IFF)V
    .registers 5
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 386
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->setVolume(IFF)V

    .line 387
    return-void
.end method

.method public final stop(I)V
    .registers 3
    .param p1, "streamID"    # I

    .prologue
    .line 369
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->stop(I)V

    .line 370
    return-void
.end method

.method public final unload(I)Z
    .registers 3
    .param p1, "soundID"    # I

    .prologue
    .line 273
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->unload(I)Z

    move-result v0

    return v0
.end method
