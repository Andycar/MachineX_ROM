.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 582
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 253
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 256
    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 5
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 247
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 248
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 249
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 16
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, "compatFlags":I
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_50

    .line 102
    :cond_10
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_3a

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 105
    .local v7, "required":I
    :goto_16
    if-nez v7, :cond_1a

    .line 106
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 108
    :cond_1a
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_3d

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 110
    .local v4, "compat":I
    :goto_20
    if-ge v4, v7, :cond_23

    .line 111
    move v4, v7

    .line 113
    :cond_23
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 115
    .local v6, "largest":I
    const/16 v9, 0x140

    if-le v7, v9, :cond_3f

    .line 122
    or-int/lit8 v5, v5, 0x4

    .line 139
    :cond_2b
    :goto_2b
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 140
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 141
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 241
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :goto_37
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 242
    return-void

    .line 102
    :cond_3a
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_16

    .restart local v7    # "required":I
    :cond_3d
    move v4, v7

    .line 108
    goto :goto_20

    .line 123
    .restart local v4    # "compat":I
    .restart local v6    # "largest":I
    :cond_3f
    if-eqz v6, :cond_46

    if-le p3, v6, :cond_46

    .line 127
    or-int/lit8 v5, v5, 0xa

    goto :goto_2b

    .line 128
    :cond_46
    if-lt v4, p3, :cond_4b

    .line 131
    or-int/lit8 v5, v5, 0x4

    goto :goto_2b

    .line 132
    :cond_4b
    if-eqz p4, :cond_2b

    .line 135
    or-int/lit8 v5, v5, 0x8

    goto :goto_2b

    .line 148
    .end local v4    # "compat":I
    .end local v6    # "largest":I
    .end local v7    # "required":I
    :cond_50
    const/4 v0, 0x2

    .line 154
    .local v0, "EXPANDABLE":I
    const/16 v1, 0x8

    .line 160
    .local v1, "LARGE_SCREENS":I
    const/16 v2, 0x20

    .line 162
    .local v2, "XLARGE_SCREENS":I
    const/4 v8, 0x0

    .line 166
    .local v8, "sizeInfo":I
    const/4 v3, 0x0

    .line 168
    .local v3, "anyResizeable":Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_64

    .line 169
    or-int/lit8 v8, v8, 0x8

    .line 170
    const/4 v3, 0x1

    .line 171
    if-nez p4, :cond_64

    .line 175
    or-int/lit8 v8, v8, 0x22

    .line 178
    :cond_64
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_70

    .line 179
    const/4 v3, 0x1

    .line 180
    if-nez p4, :cond_70

    .line 181
    or-int/lit8 v8, v8, 0x22

    .line 184
    :cond_70
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_79

    .line 185
    const/4 v3, 0x1

    .line 186
    or-int/lit8 v8, v8, 0x2

    .line 189
    :cond_79
    if-eqz p4, :cond_7d

    .line 194
    and-int/lit8 v8, v8, -0x3

    .line 197
    :cond_7d
    or-int/lit8 v5, v5, 0x8

    .line 198
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_e2

    .line 217
    :cond_84
    :goto_84
    const/high16 v9, 0x10000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_c6

    .line 218
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c1

    .line 219
    and-int/lit8 v5, v5, -0x9

    .line 228
    :cond_8f
    :goto_8f
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_cb

    .line 229
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 230
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 231
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_37

    .line 200
    :pswitch_a2
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_a8

    .line 201
    and-int/lit8 v5, v5, -0x9

    .line 203
    :cond_a8
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_84

    .line 204
    or-int/lit8 v5, v5, 0x4

    goto :goto_84

    .line 208
    :pswitch_b2
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_b8

    .line 209
    and-int/lit8 v5, v5, -0x9

    .line 211
    :cond_b8
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_84

    .line 212
    or-int/lit8 v5, v5, 0x4

    goto :goto_84

    .line 220
    :cond_c1
    if-nez v3, :cond_8f

    .line 221
    or-int/lit8 v5, v5, 0x2

    goto :goto_8f

    .line 224
    :cond_c6
    and-int/lit8 v5, v5, -0x9

    .line 225
    or-int/lit8 v5, v5, 0x4

    goto :goto_8f

    .line 233
    :cond_cb
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 234
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000    # 160.0f

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 236
    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 237
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_37

    .line 198
    :pswitch_data_e2
    .packed-switch 0x3
        :pswitch_b2
        :pswitch_a2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 600
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/CompatibilityInfo$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 16
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 478
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 479
    .local v11, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 481
    .local v1, "height":I
    if-ge v11, v1, :cond_45

    .line 482
    move v9, v11

    .line 483
    .local v9, "shortSize":I
    move v2, v1

    .line 488
    .local v2, "longSize":I
    :goto_8
    const/high16 v12, 0x43a00000    # 320.0f

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 489
    .local v5, "newShortSize":I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 490
    .local v0, "aspect":F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_1f

    .line 491
    const v0, 0x3fe3bbbc

    .line 493
    :cond_1f
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 495
    .local v4, "newLongSize":I
    if-ge v11, v1, :cond_48

    .line 496
    move v6, v5

    .line 497
    .local v6, "newWidth":I
    move v3, v4

    .line 503
    .local v3, "newHeight":I
    :goto_29
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 504
    .local v10, "sw":F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 505
    .local v8, "sh":F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_4b

    move v7, v10

    .line 506
    .local v7, "scale":F
    :goto_36
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3e

    .line 507
    const/high16 v7, 0x3f800000    # 1.0f

    .line 510
    :cond_3e
    if-eqz p1, :cond_44

    .line 511
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 512
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 515
    :cond_44
    return v7

    .line 485
    .end local v0    # "aspect":F
    .end local v2    # "longSize":I
    .end local v3    # "newHeight":I
    .end local v4    # "newLongSize":I
    .end local v5    # "newShortSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "shortSize":I
    .end local v10    # "sw":F
    :cond_45
    move v9, v1

    .line 486
    .restart local v9    # "shortSize":I
    move v2, v11

    .restart local v2    # "longSize":I
    goto :goto_8

    .line 499
    .restart local v0    # "aspect":F
    .restart local v4    # "newLongSize":I
    .restart local v5    # "newShortSize":I
    :cond_48
    move v6, v4

    .line 500
    .restart local v6    # "newWidth":I
    move v3, v5

    .restart local v3    # "newHeight":I
    goto :goto_29

    .restart local v8    # "sh":F
    .restart local v10    # "sw":F
    :cond_4b
    move v7, v8

    .line 505
    goto :goto_36
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 6
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 456
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 459
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 460
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 461
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 463
    :cond_1a
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 464
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 465
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 466
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 468
    .end local v0    # "invertedRatio":F
    :cond_2e
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 430
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_40

    .line 433
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 439
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 440
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 441
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 442
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 443
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 445
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 446
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 449
    .end local v0    # "invertedRatio":F
    :cond_3f
    return-void

    .line 435
    :cond_40
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 436
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 520
    if-ne p0, p1, :cond_5

    .line 531
    :cond_4
    :goto_4
    return v3

    .line 524
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 525
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v5, v6, :cond_11

    move v3, v4

    goto :goto_4

    .line 526
    :cond_11
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v5, v6, :cond_19

    move v3, v4

    goto :goto_4

    .line 527
    :cond_19
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_23

    move v3, v4

    goto :goto_4

    .line 528
    :cond_23
    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v6, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_27} :catch_2d

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_4

    .line 530
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_2d
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 531
    goto :goto_4
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 561
    const/16 v0, 0x11

    .line 562
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 563
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 564
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 565
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 566
    return v0
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsScreen()Z
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 542
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 544
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 547
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 550
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 553
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 576
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 579
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 580
    return-void
.end method
