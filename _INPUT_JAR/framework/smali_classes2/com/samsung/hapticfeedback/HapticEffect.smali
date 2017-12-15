.class public Lcom/samsung/hapticfeedback/HapticEffect;
.super Ljava/lang/Object;
.source "HapticEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;
    }
.end annotation


# static fields
.field public static final BRUSH:I = 0x2

.field public static final CHINESE_BRUSH:I = 0x1

.field public static final INK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HapticEffect"

.field public static final MARKER:I = 0x4

.field public static final PENCIL:I = 0x0

.field public static final STYLE_DEFAULT_STYLE:I = 0x1

.field public static final STYLE_SHARP:I = 0x2

.field public static final STYLE_SMOOTH:I = 0x0

.field public static final STYLE_STRONG:I = 0x1


# instance fields
.field private InsLevel:I

.field private MDRatio:J

.field private aa:D

.field private aa1:D

.field private aa2:D

.field private distance:D

.field private effectStrength:I

.field private imm_devHandle:Lcom/immersion/EffectHandle;

.field private levelToMagnitude:[I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDevice:Lcom/immersion/Device;

.field private mDeviceLevel:I

.field private mEnableInSettingMenu:Z

.field private mIVTBuffer:Lcom/immersion/IVTBuffer;

.field private mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

.field private mImmVibe:Lcom/immersion/android/ImmVibe;

.field private mImmVibeTouchMagnitude:I

.field private mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

.field private mTemp:I

.field private m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

.field private magnitudeLevel:I

.field private maxDistance:D

.field private maxMagnitude:I

.field private returnValue:Lcom/immersion/EffectHandle;

.field private timeLineIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 88
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    .line 89
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    .line 90
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    .line 91
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 94
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    .line 99
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 100
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 102
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    .line 112
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 113
    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    .line 117
    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 118
    iput-boolean v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    .line 126
    return-void

    .line 97
    nop

    :array_36
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display_width"    # I
    .param p3, "display_height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 88
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibe:Lcom/immersion/android/ImmVibe;

    .line 89
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    .line 90
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;

    .line 91
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 94
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    .line 99
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 100
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 102
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    .line 112
    iput v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 113
    iput v5, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    .line 117
    iput-object v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 136
    if-eqz p1, :cond_79

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->InitializeLib(Landroid/content/Context;)V

    .line 139
    mul-int v0, p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int v1, p3, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    .line 141
    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxMagnitude:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->maxDistance:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    .line 143
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-nez v0, :cond_79

    .line 144
    new-instance v0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-direct {v0, p0, v4}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;-><init>(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 145
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v0, :cond_79

    .line 146
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->setContext(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    .line 152
    :cond_79
    return-void

    .line 97
    :array_7a
    .array-data 4
        0x0
        0xbb8
        0x1194
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method private InitializeLib(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 156
    iput-object p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/samsung/hapticfeedback/effect/IVTPack;

    invoke-direct {v0}, Lcom/samsung/hapticfeedback/effect/IVTPack;-><init>()V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTPack:Lcom/samsung/hapticfeedback/effect/IVTPack;

    .line 158
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    :try_start_12
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_18} :catch_4b

    .line 166
    :goto_18
    new-instance v0, Lcom/immersion/MagSweepEffectDefinition;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    .line 167
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 169
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 170
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 172
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 175
    return-void

    .line 162
    :catch_4b
    move-exception v9

    .line 163
    .local v9, "x":Ljava/lang/RuntimeException;
    const-string v0, "HapticEffect"

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method static synthetic access$002(Lcom/samsung/hapticfeedback/HapticEffect;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/hapticfeedback/HapticEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/content/Context;)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/hapticfeedback/HapticEffect;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isEnableSettingMenu(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 598
    if-eqz p1, :cond_11

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_12

    .line 608
    :cond_11
    :goto_11
    return v0

    .line 603
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_writing_haptic_feedback"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_11

    move v0, v1

    .line 605
    goto :goto_11
.end method

.method private setMagtAttributes()V
    .registers 13

    .prologue
    const/16 v5, 0xfa0

    const/4 v4, 0x5

    const-wide v10, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v8, 0x0

    .line 366
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    .line 367
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-eq v2, v3, :cond_27

    .line 368
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mTemp:I

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    .line 369
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    if-le v2, v4, :cond_6a

    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    :goto_25
    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    .line 375
    :cond_27
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-ge v2, v5, :cond_71

    .line 376
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    iget v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v10

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 377
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 378
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 379
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 380
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 381
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 382
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 383
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 420
    :cond_5e
    :goto_5e
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    if-eqz v2, :cond_69

    .line 423
    :try_start_62
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v3}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_69} :catch_dd

    .line 435
    :cond_69
    :goto_69
    return-void

    .line 369
    :cond_6a
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->levelToMagnitude:[I

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->magnitudeLevel:I

    aget v2, v2, v3

    goto :goto_25

    .line 387
    :cond_71
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v2, v2

    if-lt v2, v5, :cond_5e

    .line 388
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d6

    .line 389
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mImmVibeTouchMagnitude:I

    mul-int/lit16 v2, v2, 0xfa0

    div-int/lit16 v2, v2, 0x2710

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    .line 390
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    .line 392
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    cmpl-double v2, v2, v10

    if-lez v2, :cond_be

    .line 393
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 400
    :goto_93
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 401
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 402
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 403
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 404
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 405
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 406
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2, v8}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 409
    iput v8, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_5e

    .line 397
    :cond_be
    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    neg-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa1:D

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa2:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    mul-double/2addr v4, v6

    const-wide v6, 0x40b7700000000000L    # 6000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    goto :goto_93

    .line 414
    :cond_d6
    iget v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mCount:I

    goto :goto_5e

    .line 424
    :catch_dd
    move-exception v1

    .line 425
    .local v1, "x":Ljava/lang/RuntimeException;
    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 428
    :try_start_e8
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_ee
    .catch Ljava/lang/RuntimeException; {:try_start_e8 .. :try_end_ee} :catch_f0

    goto/16 :goto_69

    .line 429
    :catch_f0
    move-exception v0

    .line 430
    .local v0, "k":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_69
.end method


# virtual methods
.method public closeDevice()V
    .registers 4

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v1}, Lcom/immersion/Device;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_1c

    .line 557
    :goto_5
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 558
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mSettingsContentObserver:Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;

    .line 561
    :cond_1b
    return-void

    .line 553
    :catch_1c
    move-exception v0

    .line 554
    .local v0, "x":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_5
.end method

.method public geCurrenttMagEffectType()Lcom/immersion/MagSweepEffectDefinition;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    return-object v0
.end method

.method public getDeviceLv()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDeviceLevel:I

    return v0
.end method

.method public getMDRatio()D
    .registers 3

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public playEffect()V
    .registers 5

    .prologue
    .line 238
    iget v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1d

    .line 240
    :try_start_5
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    iget v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_11} :catch_12

    .line 252
    :goto_11
    return-void

    .line 241
    :catch_12
    move-exception v0

    .line 242
    .local v0, "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 246
    .end local v0    # "x":Ljava/lang/RuntimeException;
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_11

    .line 247
    :catch_29
    move-exception v0

    .line 248
    .restart local v0    # "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public playEffect(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v1, v2, p1}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->imm_devHandle:Lcom/immersion/EffectHandle;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 264
    :goto_a
    return-void

    .line 261
    :catch_b
    move-exception v0

    .line 262
    .local v0, "x":Ljava/lang/RuntimeException;
    const-string v1, "HapticEffect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public playEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .registers 3
    .param p1, "mEffectDef"    # Lcom/immersion/MagSweepEffectDefinition;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 280
    return-void
.end method

.method public playEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .registers 3
    .param p1, "mEffectDef"    # Lcom/immersion/PeriodicEffectDefinition;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v0, p1}, Lcom/immersion/Device;->playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 272
    return-void
.end method

.method public playEffectByDistance(D)V
    .registers 8
    .param p1, "distance"    # D

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_1b

    .line 451
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 452
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 454
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1c

    .line 462
    :cond_1b
    :goto_1b
    return-void

    .line 455
    :cond_1c
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1b

    .line 459
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_1b
.end method

.method public playEffectByDistance(DF)V
    .registers 9
    .param p1, "dist"    # D
    .param p3, "Pr"    # F

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_1b

    .line 470
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    mul-double v2, p1, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 471
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 473
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1c

    .line 481
    :cond_1b
    :goto_1b
    return-void

    .line 474
    :cond_1c
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1b

    .line 478
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_1b
.end method

.method public playEffectByDistance(FFFF)V
    .registers 11
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_26

    .line 494
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    .line 496
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_27

    .line 503
    :cond_26
    :goto_26
    return-void

    .line 497
    :cond_27
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_26

    .line 499
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 500
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    goto :goto_26
.end method

.method public playEffectByDistance(FFFFF)V
    .registers 12
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F
    .param p5, "Pr"    # F

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z

    if-eqz v0, :cond_3a

    .line 511
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    .line 513
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->MDRatio:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    iget-wide v4, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->aa:D

    .line 514
    invoke-direct {p0}, Lcom/samsung/hapticfeedback/HapticEffect;->setMagtAttributes()V

    .line 516
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3b

    .line 524
    :cond_3a
    :goto_3a
    return-void

    .line 517
    :cond_3b
    iget-wide v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->distance:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3a

    .line 521
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    goto :goto_3a
.end method

.method public playMagEffect()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, v1}, Lcom/immersion/Device;->playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;

    .line 288
    return-void
.end method

.method public setEffectType(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "buf":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 210
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_2f
    .catchall {:try_start_7 .. :try_end_c} :catchall_4a

    .line 211
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 212
    :cond_12
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_5f
    .catchall {:try_start_c .. :try_end_15} :catchall_5c

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_12

    .line 220
    if-eqz v4, :cond_1e

    .line 221
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_23

    :cond_1e
    move-object v3, v4

    .line 228
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/samsung/hapticfeedback/HapticEffect;->setEffectType([B)V

    .line 230
    return-void

    .line 223
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_23
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 226
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1f

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    :goto_30
    :try_start_30
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_4a

    .line 220
    if-eqz v3, :cond_1f

    .line 221
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_1f

    .line 223
    :catch_3f
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4a
    move-exception v5

    .line 220
    :goto_4b
    if-eqz v3, :cond_50

    .line 221
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 225
    :cond_50
    :goto_50
    throw v5

    .line 223
    :catch_51
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "HapticEffect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_5c
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4b

    .line 216
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5f
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_30
.end method

.method public setEffectType([B)V
    .registers 6
    .param p1, "buf"    # [B

    .prologue
    .line 190
    new-instance v3, Lcom/immersion/IVTBuffer;

    invoke-direct {v3, p1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    .line 191
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 192
    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v1

    .line 193
    .local v1, "m_cEffects":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 194
    iget-object v3, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mIVTBuffer:Lcom/immersion/IVTBuffer;

    invoke-virtual {v3, v0}, Lcom/immersion/IVTBuffer;->getEffectType(I)I

    move-result v2

    .line 195
    .local v2, "nEffectType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 196
    iput v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->timeLineIndex:I

    .line 193
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 198
    .end local v2    # "nEffectType":I
    :cond_21
    return-void
.end method

.method public setIntensityLevel(I)V
    .registers 2
    .param p1, "Level"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->InsLevel:I

    .line 362
    return-void
.end method

.method public setMagEffectType(IIIIII)V
    .registers 8
    .param p1, "Duration"    # I
    .param p2, "AttackLevel"    # I
    .param p3, "AttackTime"    # I
    .param p4, "FadeLevel"    # I
    .param p5, "FadeTime"    # I
    .param p6, "Style"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 326
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 327
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 328
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 330
    return-void
.end method

.method public setMagEffectType(Lcom/immersion/MagSweepEffectDefinition;)V
    .registers 4
    .param p1, "mEffectDef"    # Lcom/immersion/MagSweepEffectDefinition;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 339
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 340
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 342
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 343
    return-void
.end method

.method public setMagEffectType([I)V
    .registers 4
    .param p1, "Type"    # [I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 312
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 313
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 314
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 315
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 316
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 317
    return-void
.end method

.method public setMagIntensity(I)V
    .registers 3
    .param p1, "Magnitude"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect;->m_MagSweepEffectDefinition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 351
    return-void
.end method

.method public setPlayEffectStrength(I)V
    .registers 2
    .param p1, "str"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/samsung/hapticfeedback/HapticEffect;->effectStrength:I

    .line 443
    return-void
.end method

.method public stopAllEffect()V
    .registers 5

    .prologue
    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;

    invoke-virtual {v2}, Lcom/immersion/Device;->stopAllPlayingEffects()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 544
    :goto_5
    return-void

    .line 534
    :catch_6
    move-exception v1

    .line 535
    .local v1, "x":Ljava/lang/RuntimeException;
    const-string v2, "HapticEffect"

    const-string v3, "Haptic Service Error Detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 538
    :try_start_11
    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect;->mDevice:Lcom/immersion/Device;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_5

    .line 539
    :catch_18
    move-exception v0

    .line 540
    .local v0, "k":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_5
.end method
