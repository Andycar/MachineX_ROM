.class public Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static mHeight:F

.field private static mHeightForPen:F

.field private static mIsSupportCocktailBar:Z

.field private static mWidth:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mEdge:Z

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    .line 35
    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mCurrentUser:I

    .line 38
    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    .line 39
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    .line 40
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    .line 41
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    .line 42
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktail/CocktailFeatures;->isSupportCocktail(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktail/CocktailFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v0, 0x1

    :cond_48
    sput-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    .line 43
    return-void
.end method

.method private checkCocktailBar(I)I
    .registers 5
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 126
    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eq v0, v2, :cond_d

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 128
    :cond_d
    const/4 p1, 0x0

    .line 133
    :cond_e
    :goto_e
    return p1

    .line 129
    :cond_f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_e

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-ne v0, v2, :cond_e

    .line 131
    :cond_1b
    const/4 p1, 0x0

    goto :goto_e
.end method

.method public static getEdgeFlag(ILandroid/view/MotionEvent;)I
    .registers 9
    .param p0, "screenWidth"    # I
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 106
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 107
    .local v3, "y":F
    const/4 v0, 0x0

    .line 108
    .local v0, "flag":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 109
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    sput v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    .line 111
    :cond_18
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_20

    move v1, v0

    .line 122
    .end local v0    # "flag":I
    .local v1, "flag":I
    :goto_1f
    return v1

    .line 114
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_20
    const/4 v0, 0x1

    .line 116
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_47

    .line 117
    or-int/lit8 v0, v0, 0x4

    .line 121
    :cond_29
    :goto_29
    const-string v4, "MultiWindowEdgeDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 122
    .end local v0    # "flag":I
    .restart local v1    # "flag":I
    goto :goto_1f

    .line 118
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_47
    int-to-float v4, p0

    sget v5, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_29

    .line 119
    or-int/lit8 v0, v0, 0x8

    goto :goto_29
.end method

.method private isKnox()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 96
    const-string/jumbo v1, "true"

    const-string v2, "dev.knoxapp.running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 101
    :cond_12
    :goto_12
    return v0

    .line 98
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 101
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_50

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_50

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_50

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isKnox()Z

    move-result v2

    if-nez v2, :cond_50

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_50

    :cond_3c
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_51

    :cond_50
    move v0, v1

    :cond_51
    return v0
.end method


# virtual methods
.method public isEdge()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    return v0
.end method

.method public onTouchEvent(ILandroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "screenWidth"    # I
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    .line 47
    .local v1, "lastResizing":Z
    sget-boolean v2, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v2, :cond_1c

    .line 48
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    .line 50
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_50

    :cond_25
    :goto_25
    :pswitch_25
    move v2, v1

    .line 74
    :goto_26
    return v2

    .line 52
    :pswitch_27
    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v0

    .line 53
    .local v0, "edge":I
    sget-boolean v2, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v2, :cond_33

    .line 54
    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->checkCocktailBar(I)I

    move-result v0

    .line 56
    :cond_33
    const/4 v2, 0x5

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x9

    if-ne v0, v2, :cond_48

    .line 57
    :cond_3a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    .line 58
    const/4 v1, 0x1

    .line 63
    :goto_3e
    invoke-direct {p0, p2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 64
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    move v2, v3

    .line 65
    goto :goto_26

    .line 60
    :cond_48
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    .line 61
    const/4 v1, 0x0

    goto :goto_3e

    .line 71
    .end local v0    # "edge":I
    :pswitch_4c
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    goto :goto_25

    .line 50
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_27
        :pswitch_4c
        :pswitch_25
        :pswitch_4c
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    .line 79
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mCurrentUser:I

    .line 151
    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .registers 5

    .prologue
    .line 137
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 139
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "multiWindowUIIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "com.sec.android.multiwindow.gesture.overlayHelp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    .line 147
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_1f
    :goto_1f
    return-void

    .line 143
    :catch_20
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
