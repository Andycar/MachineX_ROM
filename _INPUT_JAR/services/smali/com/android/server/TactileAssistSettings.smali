.class public Lcom/android/server/TactileAssistSettings;
.super Ljava/lang/Object;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;,
        Lcom/android/server/TactileAssistSettings$ActuatorObserver;,
        Lcom/android/server/TactileAssistSettings$TactileAssistObserver;
    }
.end annotation


# static fields
.field private static final BREAK_LEVEL0_PARAM:I = 0x12

.field private static final BREAK_LEVEL1_PARAM:I = 0x13

.field private static final BREAK_LEVEL2_PARAM:I = 0x14

.field private static final BREAK_LEVEL3_PARAM:I = 0x15

.field private static final BREAK_TIME1_PARAM:I = 0x16

.field private static final BREAK_TIME2_PARAM:I = 0x17

.field private static final BREAK_TIME3_PARAM:I = 0x18

.field public static final DEFAULT_THEME_STRENGTH:I = 0x2

.field public static final ERM_ACTUATOR:I = 0x0

.field private static final HAPTIC_FEEDBACK_THEME_AUTHORITY_PREFIX:Ljava/lang/String; = "com.immersion.android.haptictheme."

.field private static final INTERPOLATION_PRECISION:D = 0.001

.field public static final KEY_ENABLE:Ljava/lang/String; = "tactileassist_enable"

.field public static final KEY_LEVEL:Ljava/lang/String; = "tactileassist_level"

.field public static final KEY_MEDIAPLAYER_ENABLE:Ljava/lang/String; = "tactileassist_mediaplayer"

.field public static final KEY_TACTILEASSIST_DENSITY:Ljava/lang/String; = "density"

.field public static final KEY_TACTILEASSIST_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_TACTILEASSIST_ENABLE_OLD:Ljava/lang/String; = "enable_old"

.field public static final KEY_TACTILEASSIST_INTERNAL_ENABLE:Ljava/lang/String; = "internal_enable"

.field public static final KEY_TACTILEASSIST_MEDIAPLAYER_ENABLE:Ljava/lang/String; = "mediaplayer"

.field public static final KEY_TACTILEASSIST_SHARPNESS:Ljava/lang/String; = "sharpness"

.field public static final KEY_TACTILEASSIST_STRENGTH:Ljava/lang/String; = "strength"

.field private static final LEVEL0:I = 0x3c

.field private static final LEVEL1:I = 0x64

.field public static final LRA_ACTUATOR:I = 0x2

.field public static final MANIFEST_DATA_COLUMN:I = 0x3

.field public static final MANIFEST_PERVASIVENESS_COLUMN:I = 0x2

.field public static final MANIFEST_STRENGTH_COLUMN:I = 0x1

.field public static final MANIFEST_VERSION_COLUMN:I = 0x0

.field private static final MAX_PWM:I = 0x7f

.field public static final MAX_TACTILEASSIST_FORCE:I = 0xf

.field public static final MAX_TACTILEASSIST_LEVEL:I = 0x3

.field public static final MIN_TACTILEASSIST_FORCE:I = 0x0

.field public static final MIN_TACTILEASSIST_LEVEL:I = 0x1

.field private static final MOTOR_SPIN_UP_TIME_PARAM:I = 0xe

.field private static final NUM_PARAMS:I = 0xe

.field private static final NUM_SEGMENTS:I = 0xa

.field private static final PULSE_BASE_LEVEL_PARAM:I = 0x11

.field private static final PULSE_LEAD0_PARAM:I = 0xd

.field private static final PULSE_LEAD1_PARAM:I = 0xe

.field private static final PULSE_LEVEL0_PARAM:I = 0xf

.field private static final PULSE_LEVEL1_PARAM:I = 0x10

.field public static final PZO_ACTUATOR:I = 0x4

.field private static final RISE_LOOKUP:I = 0x41

.field private static final RISE_TIME_PARAM:I = 0x4a

.field public static final SLOW_ERM_ACTUATOR:I = 0x8

.field private static final SPIN_UP_TIME:I = 0x28

.field public static final TACTILEASSIST_SHARED_PREFS:Ljava/lang/String; = "com.android.settings_tactileassist"

.field public static final TAG:Ljava/lang/String; = "TactileAssist"

.field private static instance:Lcom/android/server/TactileAssistSettings;

.field private static mActuators:[I

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mERMObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mPZOObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mSERMObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

.field private static mSelectedParams:[I

.field private static mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

.field private static sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    .line 113
    const/16 v0, 0xe

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/TactileAssistSettings;->mSelectedParams:[I

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    return-void

    .line 109
    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sput-object p1, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    .line 134
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    const-string v4, "com.android.settings_tactileassist"

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 141
    .local v2, "nbOfDevices":I
    const/4 v2, 0x1

    .line 147
    :goto_19
    if-ge v1, v2, :cond_5f

    .line 148
    const/4 v0, -0x1

    .line 153
    .local v0, "actuatorType":I
    const/4 v0, 0x2

    .line 213
    :try_start_1d
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v5, 0x2

    aput v0, v4, v5

    .line 214
    new-instance v4, Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/TactileAssistSettings$ActuatorObserver;-><init>(Lcom/android/server/TactileAssistSettings;I)V

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    .line 215
    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 216
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 218
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 220
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/TactileAssistSettings;->mLRAObserver:Lcom/android/server/TactileAssistSettings$ActuatorObserver;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_54} :catch_57
    .catchall {:try_start_1d .. :try_end_54} :catchall_5b

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    goto :goto_19

    .line 234
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_57
    move-exception v4

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    goto :goto_19

    .line 239
    :catchall_5b
    move-exception v4

    add-int/lit8 v1, v1, 0x1

    throw v4

    .line 242
    .end local v0    # "actuatorType":I
    :cond_5f
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 244
    new-instance v4, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-direct {v4, p0}, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;-><init>(Lcom/android/server/TactileAssistSettings;)V

    sput-object v4, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    .line 245
    const-string v4, "def_tactileassist_enable"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .restart local v3    # "uri":Landroid/net/Uri;
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    const-string v4, "def_tactileassist_internal_enable"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 249
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    const-string v4, "def_tactileassist_level"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 252
    sget-object v4, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/server/TactileAssistSettings;->mTactileAssistObserver:Lcom/android/server/TactileAssistSettings$TactileAssistObserver;

    invoke-virtual {v4, v3, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TactileAssistSettings;IIII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/TactileAssistSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/TactileAssistSettings;->storeLevels(IIII)V

    return-void
.end method

.method private static getActuatorTypeString(I)Ljava/lang/String;
    .registers 4
    .param p0, "actuatorType"    # I

    .prologue
    .line 256
    const-string v0, ""

    .line 258
    .local v0, "retVal":Ljava/lang/String;
    if-nez p0, :cond_7

    .line 259
    const-string v0, "erm"

    .line 271
    :goto_6
    return-object v0

    .line 260
    :cond_7
    const/16 v1, 0x8

    if-ne p0, v1, :cond_f

    .line 261
    const-string/jumbo v0, "slow_erm"

    goto :goto_6

    .line 262
    :cond_f
    const/4 v1, 0x2

    if-ne p0, v1, :cond_15

    .line 263
    const-string v0, "lra"

    goto :goto_6

    .line 264
    :cond_15
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1c

    .line 265
    const-string/jumbo v0, "piezo"

    goto :goto_6

    .line 267
    :cond_1c
    const-string v1, "TactileAssist"

    const-string v2, "Error: getActuatorTypeString actuatorType does not point to an ERM, LRA or PIEZO actuator."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/TactileAssistSettings;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    if-nez v0, :cond_13

    .line 122
    const-class v1, Lcom/android/server/TactileAssistSettings;

    monitor-enter v1

    .line 123
    :try_start_7
    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    if-nez v0, :cond_12

    .line 124
    new-instance v0, Lcom/android/server/TactileAssistSettings;

    invoke-direct {v0, p0}, Lcom/android/server/TactileAssistSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    .line 126
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 128
    :cond_13
    sget-object v0, Lcom/android/server/TactileAssistSettings;->instance:Lcom/android/server/TactileAssistSettings;

    return-object v0

    .line 126
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getSpinUpTime(III)I
    .registers 19
    .param p0, "actIndex"    # I
    .param p1, "force"    # I
    .param p2, "riseTime"    # I

    .prologue
    .line 487
    const/16 v2, 0x9

    new-array v11, v2, [I

    fill-array-data v11, :array_64

    .line 500
    .local v11, "lookuptable":[I
    const/16 v2, 0xa

    new-array v12, v2, [I

    .line 501
    .local v12, "riseTimeStrength":[I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_c
    const/16 v2, 0x9

    if-ge v10, v2, :cond_1a

    .line 502
    aget v2, v11, v10

    aput v2, v12, v10

    .line 503
    aget v2, v12, v10

    move/from16 v0, p1

    if-gt v0, v2, :cond_38

    .line 507
    :cond_1a
    const/4 v2, 0x1

    if-ge v10, v2, :cond_3b

    .line 508
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aget v6, v12, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v14

    .line 518
    .local v14, "time":D
    :goto_2c
    move/from16 v0, p2

    int-to-double v2, v0

    mul-double/2addr v14, v2

    .line 519
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v14, v2

    .line 520
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v14

    double-to-int v2, v2

    return v2

    .line 501
    .end local v14    # "time":D
    :cond_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 509
    :cond_3b
    const/16 v2, 0x8

    if-le v10, v2, :cond_51

    .line 510
    const/16 v2, 0x8

    aget v2, v12, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    const/16 v6, 0x7f

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    move/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v14

    .restart local v14    # "time":D
    goto :goto_2c

    .line 512
    .end local v14    # "time":D
    :cond_51
    add-int/lit8 v2, v10, -0x1

    aget v2, v12, v2

    int-to-double v2, v2

    int-to-double v4, v10

    aget v6, v12, v10

    add-int/lit8 v7, v10, 0x1

    int-to-double v7, v7

    move/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/android/server/TactileAssistSettings;->interpolatedValue(DDIDI)D

    move-result-wide v14

    .restart local v14    # "time":D
    goto :goto_2c

    .line 487
    nop

    :array_64
    .array-data 4
        0x11
        0x2f
        0x3f
        0x4d
        0x5a
        0x65
        0x6d
        0x74
        0x7f
    .end array-data
.end method

.method public static interpolatedValue(DDIDI)D
    .registers 14
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # I
    .param p5, "y2"    # D
    .param p7, "x"    # I

    .prologue
    const-wide v4, -0x40af9db22d0e5604L    # -0.001

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 525
    int-to-double v0, p7

    sub-double/2addr v0, p0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_17

    sub-int v0, p7, p4

    int-to-double v0, v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_24

    :cond_17
    int-to-double v0, p7

    sub-double/2addr v0, p0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_27

    sub-int v0, p7, p4

    int-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_27

    .line 528
    :cond_24
    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    .line 532
    .end local p2    # "y1":D
    :cond_26
    :goto_26
    return-wide p2

    .line 530
    .restart local p2    # "y1":D
    :cond_27
    int-to-double v0, p7

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_26

    .line 531
    sub-int v0, p4, p7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3e

    move-wide p2, p5

    goto :goto_26

    .line 532
    :cond_3e
    sub-double v0, p5, p2

    int-to-double v2, p7

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    int-to-double v2, p4

    sub-double/2addr v2, p0

    div-double/2addr v0, v2

    add-double/2addr p2, v0

    goto :goto_26
.end method

.method private static isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 455
    const/16 v4, 0x8

    :try_start_2
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 456
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_44

    .line 457
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_44

    .line 458
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 459
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_22

    const-string v4, "com.immersion.android.haptictheme."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1d} :catch_25

    move-result v4

    if-eqz v4, :cond_22

    .line 461
    const/4 v4, 0x1

    .line 469
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_21
    return v4

    .line 457
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 465
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_25
    move-exception v1

    .line 466
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "TactileAssist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_44
    const/4 v4, 0x0

    goto :goto_21
.end method

.method public static isInEESMode([I)Z
    .registers 5
    .param p0, "SlowERM"    # [I

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v3, :cond_e

    .line 474
    aget v2, p0, v0

    if-eqz v2, :cond_b

    .line 481
    :cond_a
    :goto_a
    return v1

    .line 473
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 478
    :cond_e
    aget v2, p0, v3

    if-eqz v2, :cond_a

    .line 481
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private static storeAppList(Landroid/content/SharedPreferences$Editor;)V
    .registers 14
    .param p0, "ed"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v12, 0x4

    .line 413
    sget-object v10, Lcom/android/server/TactileAssistSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 414
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_73

    if-eqz p0, :cond_73

    .line 416
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 417
    .local v6, "packageInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 419
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    const-string v10, "TactileAssist"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 420
    const-string v10, "TactileAssist"

    const-string v11, "List of disabled apps :"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    .line 423
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 425
    .local v0, "ai":Landroid/content/pm/PackageInfo;
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_22

    .line 427
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 429
    .local v7, "pkgname":Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/android/server/TactileAssistSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 432
    const-string v10, "android.permission.VIBRATE"

    invoke-virtual {v8, v10, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_71

    const/4 v2, 0x1

    .line 435
    .local v2, "hasVibPerm":Z
    :goto_47
    if-eqz v2, :cond_22

    .line 437
    const-string v10, "TactileAssist"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 438
    const-string v10, "TactileAssist"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_56
    const-string v10, "disabled"

    invoke-interface {p0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_22

    .line 443
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v1, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_63
    if-ge v3, v5, :cond_22

    aget-object v9, v1, v3

    .line 444
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v11, "disabled"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 432
    .end local v1    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v2    # "hasVibPerm":Z
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_71
    const/4 v2, 0x0

    goto :goto_47

    .line 450
    .end local v0    # "ai":Landroid/content/pm/PackageInfo;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "packageInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "pkgname":Ljava/lang/String;
    :cond_73
    return-void
.end method

.method private declared-synchronized storeLevels(IIII)V
    .registers 9
    .param p1, "actuatorType"    # I
    .param p2, "strength"    # I
    .param p3, "density"    # I
    .param p4, "sharpness"    # I

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    const-string v1, "TactileAssist"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 394
    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actuator type value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "strength value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v1, "TactileAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sharpness value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_6c
    sget-object v1, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 402
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strength_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "density_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sharpness_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c5
    .catchall {:try_start_1 .. :try_end_c5} :catchall_c7

    .line 410
    monitor-exit p0

    return-void

    .line 393
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :catchall_c7
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getActuators()[I
    .registers 2

    .prologue
    .line 275
    sget-object v0, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    return-object v0
.end method

.method public declared-synchronized storeTactileAssistSettings(IIIZ)V
    .registers 16
    .param p1, "enable"    # I
    .param p2, "internalEnable"    # I
    .param p3, "intensity"    # I
    .param p4, "saveAppList"    # Z

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    const-string v5, "TactileAssist"

    const/4 v8, 0x4

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 292
    const-string v5, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enable value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "internal enable value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intensity value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v5, "TactileAssist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAppList value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_6b
    sget-object v5, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 299
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v5, -0x1

    if-eq p1, v5, :cond_7c

    .line 300
    const-string v8, "enable"

    if-nez p1, :cond_1fa

    const/4 v5, 0x0

    :goto_79
    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_7c
    const/4 v5, -0x1

    if-eq p2, v5, :cond_87

    .line 304
    const-string v8, "internal_enable"

    if-nez p2, :cond_1fd

    const/4 v5, 0x0

    :goto_84
    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_200

    .line 308
    :cond_87
    if-eqz p4, :cond_cb

    .line 313
    :try_start_89
    sget-object v5, Lcom/android/server/TactileAssistSettings;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 315
    .local v3, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_97
    :goto_97
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "s":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "disabled"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 317
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b6} :catch_b7
    .catchall {:try_start_89 .. :try_end_b6} :catchall_200

    goto :goto_97

    .line 320
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "s":Ljava/lang/String;
    :catch_b7
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b8
    const-string v5, "TactileAssist"

    const/4 v8, 0x6

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 322
    const-string v5, "TactileAssist"

    const-string v8, "Unable to cleanup the list of disabled apk."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c8
    invoke-static {v1}, Lcom/android/server/TactileAssistSettings;->storeAppList(Landroid/content/SharedPreferences$Editor;)V

    .line 331
    :cond_cb
    const-string v5, "android.process.acore"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string/jumbo v5, "system_server"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v5, "com.android.contacts"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v5, "com.android.camera"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v5, "com.android.gallery3d"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v5, "com.android.launcher"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string v5, "com.google.android.tts"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    const-string v5, "com.google.android.marvin.talkback"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v5, "com.svox.pico"

    const-string v8, "disabled"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    const/4 v5, -0x1

    if-eq p3, v5, :cond_1f8

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 346
    .local v6, "token":J
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    const/4 v8, -0x1

    if-eq v5, v8, :cond_14d

    .line 347
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_erm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    :cond_14d
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    const/4 v8, -0x1

    if-eq v5, v8, :cond_185

    .line 355
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_serm"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    :cond_185
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1bd

    .line 363
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_lra"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    :cond_1bd
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v8, 0x3

    aget v5, v5, v8

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1f5

    .line 371
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_density_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getDensity(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_strength_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getStrength(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    sget-object v5, Lcom/android/server/TactileAssistSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "def_tactileassist_sharpness_pzo"

    sget-object v9, Lcom/android/server/TactileAssistSettings;->mActuators:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, p3}, Lcom/android/server/TactileAssistSettings$TactileAssistBasicSettings;->getSharpness(II)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    :cond_1f5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f8
    .catchall {:try_start_b8 .. :try_end_1f8} :catchall_200

    .line 381
    .end local v6    # "token":J
    :cond_1f8
    monitor-exit p0

    return-void

    .line 300
    :cond_1fa
    const/4 v5, 0x1

    goto/16 :goto_79

    .line 304
    :cond_1fd
    const/4 v5, 0x1

    goto/16 :goto_84

    .line 291
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :catchall_200
    move-exception v5

    monitor-exit p0

    throw v5
.end method
