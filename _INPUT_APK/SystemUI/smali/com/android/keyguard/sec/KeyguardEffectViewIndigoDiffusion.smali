.class public Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    }
.end annotation


# static fields
.field public static final IMAGE_TYPE_BURGUNDY_RED:I = 0x1

.field public static final IMAGE_TYPE_MIDNIGHT_BLUE_OR_NORMAL:I = 0x0

.field public static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field public static final UPDATE_TYPE_USER_SWITCHING:I = 0x2


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field iBlue:I

.field iGreen:I

.field iRed:I

.field imageType:I

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

.field private mListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field mrandom:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v4, "IndigoDiffusion_Keyguard"

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 50
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 55
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 56
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 57
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 58
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 59
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 60
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 61
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 62
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 63
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 67
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 72
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 73
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 84
    const-string v4, "IndigoDiffusion_Keyguard"

    const-string v5, "KeyguardEffectViewIndigoDiffusion Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    .line 88
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    .line 89
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 92
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 94
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 96
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setEffect(I)V

    .line 98
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 99
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v9}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 100
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowWidth:I

    .line 101
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowHeight:I

    .line 102
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    sget v5, Lcom/android/keyguard/R$drawable;->reflectionmap:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->reflectionBitmap:Landroid/graphics/Bitmap;

    .line 104
    const/16 v4, 0x23

    const/16 v5, 0x23

    const/16 v6, 0x55

    invoke-direct {p0, v4, v5, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 107
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v4, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, v7, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 114
    new-instance v4, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 130
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    return-object v0
.end method

.method private changeColor(III)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setColor()V

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iRed:I

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iGreen:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iBlue:I

    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 184
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->red:I

    .line 185
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput v3, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->green:I

    .line 186
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput v4, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->blue:I

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 189
    return-void
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 287
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 292
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 301
    :goto_0
    if-ne v2, v5, :cond_0

    .line 302
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 306
    :goto_1
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 196
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 197
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 209
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "IndigoDiffusion_Keyguard"

    const-string v2, "IndigoDiffusion sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
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

    .line 221
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

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->simple_ripple_down:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 224
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->simple_ripple_up:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 228
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-nez v1, :cond_1

    .line 230
    const-string v1, "IndigoDiffusion_Keyguard"

    const-string v2, "new SoundHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 233
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 259
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->checkSound()V

    .line 260
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 263
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 270
    .local v7, "streanID":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v7    # "streanID":I
    :cond_1
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 135
    const-string v2, "IndigoDiffusion_Keyguard"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 140
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 146
    const-string v2, "IndigoDiffusion_Keyguard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-object v1

    .line 151
    :cond_0
    const-string v2, "IndigoDiffusion_Keyguard"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "IndigoDiffusion_Keyguard"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 397
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSound()V

    .line 401
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 451
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 466
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    if-eqz v0, :cond_0

    .line 470
    :goto_0
    return v1

    .line 469
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 458
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 486
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->removeMessages(I)V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 492
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 502
    const-string v0, "IndigoDiffusion_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public randomcolor()I
    .locals 6

    const/16 v5, 0x100

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xff

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 393
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 436
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setColor()V

    const/16 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->randomcolor()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mrandom:I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 432
    return-void
.end method

.method setColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "random_ink"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ink_effect_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->randomcolor()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mrandom:I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mrandom:I

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iRed:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iGreen:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->iBlue:I

    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 364
    const-string v1, "IndigoDiffusion_Keyguard"

    const-string v2, "setContextualWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez p1, :cond_0

    .line 367
    const-string v1, "IndigoDiffusion_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 497
    return-void
.end method

.method public settingsForImageType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x23

    .line 164
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "settingsForImageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    if-eq v0, p1, :cond_0

    .line 168
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 169
    if-nez p1, :cond_1

    .line 171
    const/16 v0, 0x55

    invoke-direct {p0, v2, v2, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/16 v0, 0x50

    const/16 v1, 0xa

    const/16 v2, 0x19

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "IndigoDiffusion_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 385
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 387
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 441
    const-string v1, "IndigoDiffusion_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 447
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 412
    const-string v1, "IndigoDiffusion_Keyguard"

    const-string v2, "update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 417
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "updateType"    # I

    .prologue
    .line 420
    const-string v1, "IndigoDiffusion_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update() updateType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 425
    return-void
.end method
