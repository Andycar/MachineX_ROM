.class public Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewAbstractTile.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTile Keyguard"


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isFadeOutSound:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field mLongPressTime:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x9c40

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    .line 39
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 40
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->UNLOCK_SOUND_PLAY_TIME:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchDownTime:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchMoveDiffTime:J

    .line 43
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->SOUND_ID_TAB:I

    .line 44
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->SOUND_ID_DRAG:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->SOUND_ID_UNLOCK:I

    .line 46
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isSystemSoundChecked:Z

    .line 47
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->leftVolumeMax:F

    .line 48
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->rightVolumeMax:F

    .line 49
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    .line 50
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mLongPressTime:J

    .line 51
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    .line 52
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudMinusOffset:F

    .line 53
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 57
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->hasWindowFocus:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setEffect(I)V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 80
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->fadeOutSound()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 360
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 364
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 370
    :goto_0
    if-ne v2, v5, :cond_0

    .line 371
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isSystemSoundChecked:Z

    .line 374
    :goto_1
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private fadeOutSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 399
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 404
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 405
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    .line 413
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 407
    :cond_3
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->stopReleaseSound()V

    .line 409
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSound()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->stopReleaseSound()V

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 314
    const-string v1, "AbstractTile Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 321
    .local v0, "attr":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->abstracttile_tap:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 323
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->abstracttile_drag:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 324
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->abstracttile_unlock:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 333
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 377
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->checkSound()V

    .line 378
    const-string v0, "AbstractTile Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "AbstractTile Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 344
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 138
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 103
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->stopReleaseSound()V

    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->releaseSound()V

    .line 106
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 114
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 182
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 205
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "AbstractTile Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return v6

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 212
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 214
    const-string v1, "AbstractTile Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    .line 216
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    .line 217
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->stopReleaseSound()V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchDownTime:J

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 222
    const-string v1, "AbstractTile Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->makeSound()V

    .line 224
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->checkSound()V

    .line 227
    :cond_1
    const-string v1, "AbstractTile Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->playSound(I)V

    .line 229
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 232
    :cond_2
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    .line 262
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 235
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 237
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    if-nez v1, :cond_3

    .line 239
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchMoveDiffTime:J

    .line 241
    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 243
    const-string v1, "AbstractTile Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->playSound(I)V

    goto :goto_1

    .line 249
    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 252
    :cond_6
    const-string v1, "AbstractTile Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 256
    const v1, 0x3d1fbe77    # 0.039f

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudMinusOffset:F

    .line 257
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    .line 258
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 188
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 190
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 191
    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudMinusOffset:F

    .line 192
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->playSound(I)V

    .line 193
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    .line 194
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->fadeOutSound()V

    .line 195
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 287
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->hasWindowFocus:Z

    .line 288
    const-string v0, "AbstractTile Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 292
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 294
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 296
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudMinusOffset:F

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isFadeOutSound:Z

    .line 298
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->fadeOutSound()V

    .line 304
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->clearScreen()V

    .line 98
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->clearScreen()V

    .line 162
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 164
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->clearScreen()V

    .line 153
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 155
    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 276
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "AbstractTile Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->makeSound()V

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->clearScreen()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 90
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 169
    const-string v1, "AbstractTile Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->isUnlocked:Z

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 177
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 119
    const-string v2, "AbstractTile Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 123
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 124
    const-string v2, "AbstractTile Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
