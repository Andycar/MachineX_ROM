.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final DISMISS_DELAYED_TIME:I = 0x1f4

.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final RESIZING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private INTERPORATION:I

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSplitWindow:Z

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mMaxScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "MultiWindowConverter"

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DEBUG:Z

    .line 56
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE:F

    .line 57
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE:F

    .line 58
    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE:F

    .line 59
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE:F

    .line 60
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE_TOP:F

    .line 61
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE_TOP:F

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    .line 82
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 84
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 94
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 104
    return-void

    .line 94
    :array_44
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowPointerEventListener;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return p1
.end method

.method private calcPosX(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 286
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 287
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    packed-switch v0, :pswitch_data_1a

    .line 292
    :goto_13
    return p1

    .line 289
    :pswitch_14
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_13

    .line 287
    nop

    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_14
    .end packed-switch
.end method

.method private calcPosY(II)I
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 276
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    .line 277
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 282
    .end local p2    # "y":I
    :cond_1e
    :goto_1e
    return p2

    .line 279
    .restart local p2    # "y":I
    :cond_1f
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    .line 280
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_1e
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .registers 15
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 501
    float-to-int v6, p1

    .line 502
    .local v6, "x":I
    float-to-int v7, p2

    .line 503
    .local v7, "y":I
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 504
    .local v2, "touchableRegion":Landroid/graphics/Region;
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 505
    :try_start_c
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 506
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_cb

    .line 507
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 508
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 509
    .local v0, "flags":I
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 510
    .local v3, "type":I
    const/16 v8, 0x7d0

    if-ne v3, v8, :cond_45

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 513
    const/4 v4, 0x0

    monitor-exit v9

    .line 568
    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_44
    return-object v4

    .line 515
    .restart local v0    # "flags":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_45
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_4e

    .line 506
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 519
    :cond_4e
    and-int/lit8 v8, v0, 0x10

    if-nez v8, :cond_4b

    .line 523
    and-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_4b

    .line 527
    const/16 v8, 0x82f

    if-ne v3, v8, :cond_60

    .line 528
    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_44

    .line 567
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_5d
    move-exception v8

    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_c .. :try_end_5f} :catchall_5d

    throw v8

    .line 530
    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v3    # "type":I
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_60
    const/16 v8, 0x89b

    if-ne v3, v8, :cond_67

    .line 531
    const/4 v4, 0x0

    :try_start_65
    monitor-exit v9

    goto :goto_44

    .line 533
    :cond_67
    const/4 v8, 0x2

    if-eq v3, v8, :cond_86

    const/4 v8, 0x1

    if-eq v3, v8, :cond_86

    .line 535
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_4b

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_4b

    const/16 v8, 0x7d0

    if-lt v3, v8, :cond_4b

    const/16 v8, 0xbb7

    if-gt v3, v8, :cond_4b

    .line 539
    const/4 v4, 0x0

    monitor-exit v9

    goto :goto_44

    .line 544
    :cond_86
    if-eqz p3, :cond_91

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v10, -0x80000000

    and-int/2addr v8, v10

    if-nez v8, :cond_4b

    .line 551
    :cond_91
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v8

    if-nez v8, :cond_4b

    .line 556
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 557
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 558
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v8, v10, :cond_b3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_4b

    .line 560
    :cond_b3
    monitor-exit v9

    goto :goto_44

    .line 562
    :cond_b5
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v8, v10, :cond_4b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4b

    .line 564
    monitor-exit v9

    goto/16 :goto_44

    .line 567
    .end local v0    # "flags":I
    .end local v3    # "type":I
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_cb
    monitor-exit v9
    :try_end_cc
    .catchall {:try_start_65 .. :try_end_cc} :catchall_5d

    .line 568
    const/4 v4, 0x0

    goto/16 :goto_44
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    .line 297
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 298
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "parts":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 301
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 302
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 303
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 304
    .local v1, "appName":Ljava/lang/CharSequence;
    if-nez v1, :cond_43

    .line 305
    const-string v1, ""
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    .line 312
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_43
    :goto_43
    return-object v1

    .line 308
    :catch_44
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiWindowConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getApplicationName is error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    const/4 v1, 0x0

    goto :goto_43
.end method

.method private isCancelArea(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 433
    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 435
    .local v0, "limitHieght":I
    if-ge p2, v0, :cond_12

    .line 436
    const/4 v1, 0x1

    .line 438
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isTerminativeArea(II)Z
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 442
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 443
    .local v0, "dInfo":Landroid/view/DisplayInfo;
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 444
    .local v6, "screenWidth":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 445
    .local v5, "screenHeight":I
    const v1, 0x3e051eb8    # 0.13f

    .line 446
    .local v1, "dh":F
    const v3, 0x3e3851ec    # 0.18f

    .line 447
    .local v3, "dv":F
    const v2, 0x3e570a3d    # 0.21f

    .line 448
    .local v2, "dht":F
    const v4, 0x3db851ec    # 0.09f

    .line 450
    .local v4, "dvt":F
    if-ge v5, v6, :cond_27

    .line 451
    const v1, 0x3db851ec    # 0.09f

    .line 452
    const v3, 0x3e570a3d    # 0.21f

    .line 453
    const v2, 0x3e3851ec    # 0.18f

    .line 454
    const v4, 0x3e051eb8    # 0.13f

    .line 457
    :cond_27
    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v8, :sswitch_data_7a

    .line 480
    :cond_2c
    const/4 v7, 0x0

    :goto_2d
    return v7

    .line 459
    :sswitch_2e
    int-to-float v8, v6

    mul-float/2addr v8, v1

    float-to-int v8, v8

    if-ge p1, v8, :cond_40

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_40

    .line 460
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 463
    :cond_40
    int-to-float v8, v6

    mul-float/2addr v8, v2

    float-to-int v8, v8

    if-le p1, v8, :cond_2c

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_2c

    .line 464
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 470
    :sswitch_52
    int-to-float v8, v6

    sub-float v9, v10, v1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-le p1, v8, :cond_66

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    if-le p2, v8, :cond_66

    .line 471
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 474
    :cond_66
    int-to-float v8, v6

    sub-float v9, v10, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-ge p1, v8, :cond_2c

    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v8, v8

    if-ge p2, v8, :cond_2c

    .line 475
    const-string v8, "MultiWindowConverter"

    const-string v9, "MultiWindow changing is blocked by terminative area"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 457
    :sswitch_data_7a
    .sparse-switch
        0x5 -> :sswitch_2e
        0x9 -> :sswitch_52
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 484
    const v0, 0x3d8f5c29    # 0.07f

    .line 485
    .local v0, "dh":F
    const v1, 0x3d4ccccd    # 0.05f

    .line 486
    .local v1, "dv":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_13

    .line 487
    const v0, 0x3d4ccccd    # 0.05f

    .line 488
    const v1, 0x3d8f5c29    # 0.07f

    .line 490
    :cond_13
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 491
    .local v2, "limitHieght":I
    if-ge p2, v2, :cond_1b

    .line 497
    :cond_1a
    :goto_1a
    return v3

    .line 494
    :cond_1b
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1a

    .line 497
    const/4 v3, 0x1

    goto :goto_1a
.end method

.method private showFullScreenGuide()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 265
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v0, :sswitch_data_1c

    .line 273
    :goto_10
    return-void

    .line 267
    :sswitch_11
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_10

    .line 270
    :sswitch_15
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_10

    .line 265
    nop

    :sswitch_data_1c
    .sparse-switch
        0x5 -> :sswitch_11
        0x9 -> :sswitch_15
    .end sparse-switch
.end method

.method private showGuide(II)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 394
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int v2, v4, p1

    .line 395
    .local v2, "width":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int v0, v4, p2

    .line 396
    .local v0, "height":I
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_32

    const/4 v1, 0x1

    .line 400
    .local v1, "isLandscape":Z
    :goto_10
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_1c

    if-nez p2, :cond_1c

    .line 401
    if-nez v1, :cond_34

    .line 402
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 412
    :cond_1c
    :goto_1c
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_27

    .line 413
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 415
    :cond_27
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 417
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v4, :sswitch_data_6a

    .line 430
    :goto_31
    return-void

    .end local v1    # "isLandscape":Z
    :cond_32
    move v1, v3

    .line 396
    goto :goto_10

    .line 404
    .restart local v1    # "isLandscape":Z
    :cond_34
    if-nez p1, :cond_3b

    .line 405
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1c

    .line 407
    :cond_3b
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1c

    .line 419
    :sswitch_44
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 422
    :sswitch_4a
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_63

    if-eqz v1, :cond_63

    if-nez p2, :cond_63

    .line 424
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 426
    :cond_63
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_31

    .line 417
    nop

    :sswitch_data_6a
    .sparse-switch
        0x5 -> :sswitch_44
        0x9 -> :sswitch_4a
    .end sparse-switch
.end method


# virtual methods
.method public dismissGuide(Z)V
    .registers 6
    .param p1, "immediate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 242
    if-nez p1, :cond_14

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :cond_13
    :goto_13
    return-void

    .line 255
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 256
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 257
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    goto :goto_13
.end method

.method public init()V
    .registers 6

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 107
    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x7d6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 109
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    .line 113
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 121
    .local v0, "action":I
    if-nez v0, :cond_16

    .line 122
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 129
    .local v4, "dInfo":Landroid/view/DisplayInfo;
    iget v10, v4, Landroid/view/DisplayInfo;->appWidth:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    .line 130
    iget v10, v4, Landroid/view/DisplayInfo;->appHeight:I

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    .line 134
    .end local v4    # "dInfo":Landroid/view/DisplayInfo;
    :cond_16
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-virtual {v10, v11, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 238
    :cond_20
    :goto_20
    return-void

    .line 139
    :cond_21
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v10

    if-nez v10, :cond_20

    .line 144
    packed-switch v0, :pswitch_data_24e

    goto :goto_20

    .line 146
    :pswitch_2f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    .line 147
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    .line 150
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 151
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    .line 152
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    int-to-float v11, v10

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    int-to-float v12, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_ab

    const/4 v10, 0x1

    :goto_5c
    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->startResizing(Lcom/android/server/wm/WindowState;)Z

    .line 153
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-static {v10, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    .line 154
    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start to resize multiwindow: mResizing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",flag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 152
    :cond_ab
    const/4 v10, 0x0

    goto :goto_5c

    .line 158
    :pswitch_ad
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 159
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 161
    .local v9, "y":I
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-gt v10, v11, :cond_cd

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-le v10, v11, :cond_20

    .line 162
    :cond_cd
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_dd

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_20

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isTerminativeArea(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v10, :cond_20

    .line 165
    :cond_dd
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v10, :cond_e9

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion(II)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-eqz v10, :cond_20

    .line 168
    :cond_e9
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_20

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f6

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_20

    .line 173
    :cond_f6
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v10, :cond_172

    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v10, :cond_172

    .line 174
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v10

    if-nez v10, :cond_116

    .line 175
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 177
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_20

    .line 180
    :cond_116
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 182
    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_16d

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_16d

    .line 184
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v3, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 185
    .local v3, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040ba4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 188
    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not supported popup window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v3    # "context":Landroid/content/Context;
    :cond_16d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_20

    .line 194
    :cond_172
    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isCancelArea(II)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 195
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    .line 196
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    goto/16 :goto_20

    .line 200
    :cond_180
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    .line 201
    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosY(II)I

    move-result v2

    .line 202
    .local v2, "adjustY":I
    invoke-direct {p0, v8, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosX(II)I

    move-result v1

    .line 203
    .local v1, "adjustX":I
    if-eq v2, v9, :cond_1a7

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v2, v10, :cond_1a7

    .line 204
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 208
    :goto_1a2
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto/16 :goto_20

    .line 206
    :cond_1a7
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_1a2

    .line 212
    .end local v1    # "adjustX":I
    .end local v2    # "adjustY":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :pswitch_1ae
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    if-eqz v10, :cond_228

    .line 213
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    .line 214
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v12}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 215
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x2

    invoke-direct {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 216
    .local v6, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 218
    const/16 v10, 0x800

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 219
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11, v6}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_1f5

    .line 222
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 223
    .local v7, "w":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_1f5

    .line 224
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    .line 227
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_1f5
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "GEST"

    invoke-static {v10, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",bound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_228
    :pswitch_228
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    .line 233
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    .line 234
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 235
    const-string v10, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow changing is ended by gesture.:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 144
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_1ae
        :pswitch_ad
        :pswitch_228
    .end packed-switch
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->setCurrentUser(I)V

    .line 579
    :cond_9
    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    .line 573
    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .registers 16
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 316
    if-nez p1, :cond_f

    .line 317
    const-string v8, "MultiWindowConverter"

    const-string v10, "The top window does not support multi-window"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 390
    :goto_e
    return v9

    .line 328
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 329
    .local v7, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 331
    if-eqz v7, :cond_26

    iget v8, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v8, :cond_26

    .line 332
    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 333
    const-string v8, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with launcher"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 337
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 338
    .local v5, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v8, 0x1000000

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_40

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_40

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_ab

    :cond_40
    move v6, v10

    .line 342
    .local v6, "notSupport":Z
    :goto_41
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-ne v8, v10, :cond_58

    .line 343
    iput-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    .line 344
    new-instance v8, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    .line 346
    :cond_58
    const/4 v1, 0x0

    .line 347
    .local v1, "currentTask":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .line 348
    .local v4, "mainWindowTitle":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 350
    .local v2, "currentTaskInfo":Ljava/lang/String;
    if-eqz v7, :cond_ad

    .line 351
    :try_start_5d
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v1, v0

    .line 352
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v8, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8d} :catch_b6

    move-result-object v4

    .line 363
    :goto_8e
    if-eqz v6, :cond_db

    .line 364
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 365
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 366
    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 367
    iput v13, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 369
    const-string v8, "MultiWindowConverter"

    const-string v10, "This application or window do not support multiwindow"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v1    # "currentTask":Lcom/android/server/wm/Task;
    .end local v2    # "currentTaskInfo":Ljava/lang/String;
    .end local v4    # "mainWindowTitle":Ljava/lang/CharSequence;
    .end local v6    # "notSupport":Z
    :cond_ab
    move v6, v9

    .line 338
    goto :goto_41

    .line 355
    .restart local v1    # "currentTask":Lcom/android/server/wm/Task;
    .restart local v2    # "currentTaskInfo":Ljava/lang/String;
    .restart local v4    # "mainWindowTitle":Ljava/lang/CharSequence;
    .restart local v6    # "notSupport":Z
    :cond_ad
    :try_start_ad
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b4} :catch_b6

    move-result-object v4

    goto :goto_8e

    .line 357
    :catch_b6
    move-exception v3

    .line 358
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mainWindowTitle is error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8e

    .line 373
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_db
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 374
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 375
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    .line 376
    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    .line 378
    const-string v8, "MultiWindowConverter"

    const-string v10, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput v13, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_e

    .line 384
    :cond_fc
    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    .line 385
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 387
    const-string v8, "MultiWindowConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiWindow is changing by gesture:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move v9, v10

    .line 390
    goto/16 :goto_e
.end method
