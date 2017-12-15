.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckDisabledHWMenuKey:Z

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 245
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 254
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 255
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 256
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 257
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 258
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 259
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 260
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 261
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 262
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 264
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 266
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 268
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 269
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 283
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 284
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 285
    .local v1, "config":Landroid/content/res/Configuration;
    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    .line 287
    .local v3, "density":F
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v12

    if-eqz v12, :cond_e4

    .line 288
    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float v9, v3, v12

    .line 293
    .local v9, "sizeAndDensity":F
    :goto_1c
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 294
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 295
    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v12, v3

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 296
    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 297
    const/high16 v12, 0x41800000    # 16.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 300
    const-string/jumbo v12, "window"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 301
    .local v10, "win":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 302
    .local v4, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 303
    .local v8, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 304
    iget v12, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v12, 0x4

    iget v13, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v13

    iput v12, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 306
    const/4 v12, 0x0

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 307
    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 309
    iget-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v12, :cond_96

    .line 310
    const v12, 0x10e0075

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 313
    .local v2, "configVal":I
    packed-switch v2, :pswitch_data_fc

    .line 316
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .line 318
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_8a
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_e7

    const/4 v12, 0x1

    :goto_91
    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 319
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_e9

    .line 338
    .end local v2    # "configVal":I
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :cond_96
    :goto_96
    const v12, 0x1120015

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 340
    const-string v12, "0"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "advancedTouchSlop":I
    if-nez v0, :cond_ae

    const v12, 0x105000a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .end local v0    # "advancedTouchSlop":I
    :cond_ae
    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 343
    iget v12, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v12, v12, 0x2

    iput v12, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 345
    iget v12, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v12, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 347
    const v12, 0x105000b

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 349
    const v12, 0x105000c

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 351
    const v12, 0x10e006d

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x112009a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->mCheckDisabledHWMenuKey:Z

    .line 355
    return-void

    .line 290
    .end local v4    # "display":Landroid/view/Display;
    .end local v8    # "size":Landroid/graphics/Point;
    .end local v9    # "sizeAndDensity":F
    .end local v10    # "win":Landroid/view/WindowManager;
    :cond_e4
    move v9, v3

    .restart local v9    # "sizeAndDensity":F
    goto/16 :goto_1c

    .line 318
    .restart local v2    # "configVal":I
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v8    # "size":Landroid/graphics/Point;
    .restart local v10    # "win":Landroid/view/WindowManager;
    .restart local v11    # "wm":Landroid/view/IWindowManager;
    :cond_e7
    const/4 v12, 0x0

    goto :goto_91

    .line 320
    :catch_e9
    move-exception v5

    .line 321
    .local v5, "ex":Landroid/os/RemoteException;
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_96

    .line 327
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :pswitch_ee
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 328
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_96

    .line 332
    :pswitch_f5
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 333
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_96

    .line 313
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_f5
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 366
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 368
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 369
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_22

    .line 370
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 371
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    :cond_22
    return-object v0
.end method

.method public static getDoubleTapMinTime()I
    .registers 1

    .prologue
    .line 493
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .registers 1

    .prologue
    .line 482
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .registers 1

    .prologue
    .line 513
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .registers 1

    .prologue
    .line 503
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .registers 1

    .prologue
    .line 473
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .registers 1

    .prologue
    .line 455
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .registers 1

    .prologue
    .line 448
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .registers 2

    .prologue
    .line 440
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .registers 1

    .prologue
    .line 432
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .registers 1

    .prologue
    .line 400
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .registers 1

    .prologue
    .line 407
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .registers 1

    .prologue
    .line 737
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .prologue
    .line 599
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .registers 1

    .prologue
    .line 464
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 611
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .registers 2

    .prologue
    .line 702
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .registers 3

    .prologue
    .line 727
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .registers 2

    .prologue
    .line 558
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .registers 2

    .prologue
    .line 675
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .registers 2

    .prologue
    .line 636
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .registers 2

    .prologue
    .line 691
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .registers 2

    .prologue
    .line 683
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .registers 2

    .prologue
    .line 566
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .registers 2

    .prologue
    .line 549
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .registers 2

    .prologue
    .line 753
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mCheckDisabledHWMenuKey:Z

    if-eqz v0, :cond_6

    .line 754
    const/4 v0, 0x0

    .line 756
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_5
.end method

.method public isFadingMarqueeEnabled()Z
    .registers 2

    .prologue
    .line 765
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
