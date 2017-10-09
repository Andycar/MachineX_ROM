.class public Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewSpring.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewSpring"


# instance fields
.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private dragSoundCount:I

.field private isSystemSoundChecked:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const v0, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->leftVolumeMax:F

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isSystemSoundChecked:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->DRAG_SOUND_COUNT_START_POINT:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->SOUND_ID_UNLOCK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isSystemSoundChecked:Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makeSound()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->spring_tap:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->spring_unlock:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->spring_drag:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->checkSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->lastPlayedIdBeforeUnlock:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->lastPlayedIdBeforeUnlock:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring$1;-><init>(Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->clearEffect()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->makeSound()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    if-eqz v2, :cond_0

    const-string v1, "KeyguardEffectViewSpring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->stopReleaseSound()V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->makeSound()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->playSound(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->add(FF)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->playSound(I)V

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->dragSoundCount:I

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->move(FF)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->clearEffect()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->clearEffect()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->springEffect:Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/SpringEffect;->clearEffect()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->makeSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;->isUnlocking:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
