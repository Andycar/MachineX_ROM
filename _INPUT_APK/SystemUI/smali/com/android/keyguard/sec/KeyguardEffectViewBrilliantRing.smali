.class public Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewBrilliantRing.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrilliantRing_Keyguard"


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

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 39
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->UNLOCK_SOUND_PLAY_TIME:J

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_DRAG:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_UNLOCK:I

    .line 45
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    .line 46
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    .line 47
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    .line 48
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    .line 49
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    .line 50
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    .line 51
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    .line 52
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 56
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    .line 64
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "KeyguardEffectViewBrilliantRing Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setEffect(I)V

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    .line 76
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 78
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 363
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 367
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 373
    :goto_0
    if-ne v2, v5, :cond_0

    .line 374
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    .line 377
    :goto_1
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private fadeOutSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 400
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 405
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 406
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    .line 414
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 408
    :cond_3
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    .line 410
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 311
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 317
    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
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

    .line 323
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

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->brilliantring_tap:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->brilliantring_drag:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 327
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->brilliantring_unlock:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 328
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 336
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

    .line 380
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    .line 381
    const-string v0, "BrilliantRing_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "BrilliantRing_Keyguard"

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

    .line 385
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 347
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 140
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 101
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    .line 103
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V

    .line 104
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 112
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 189
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
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

    .line 212
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return v6

    .line 217
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 219
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 221
    const-string v1, "BrilliantRing_Keyguard"

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

    .line 222
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    .line 223
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    .line 224
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 229
    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    .line 234
    :cond_1
    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    .line 236
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 239
    :cond_2
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    .line 268
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 242
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 244
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-nez v1, :cond_3

    .line 246
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    .line 248
    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 250
    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    goto :goto_1

    .line 256
    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 259
    :cond_6
    const-string v1, "BrilliantRing_Keyguard"

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

    .line 260
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 262
    const v1, 0x3d1fbe77    # 0.039f

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    .line 263
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    .line 264
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
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

    .line 195
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 197
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 198
    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    .line 199
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    .line 200
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    .line 201
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    .line 202
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 290
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    .line 291
    const-string v0, "BrilliantRing_Keyguard"

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

    .line 292
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 295
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 297
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 299
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    .line 301
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    .line 307
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    .line 96
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    .line 169
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 171
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    .line 160
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 162
    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez p1, :cond_0

    .line 147
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 280
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    .line 86
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 88
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 184
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 117
    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 121
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 122
    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 128
    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "originBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
