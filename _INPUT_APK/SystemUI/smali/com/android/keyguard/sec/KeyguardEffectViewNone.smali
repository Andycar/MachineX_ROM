.class public Lcom/android/keyguard/sec/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private mContext:Landroid/content/Context;

.field private touchHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v10, "VisualEffectCircleUnlockEffect"

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 23
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->DBG:Z

    .line 30
    const-string v10, "VisualEffectCircleUnlockEffect"

    const-string v11, "KeyguardEffectViewNone : Constructor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 34
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .local v8, "screenWidth":I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .local v7, "screenHeight":I
    if-ge v8, v7, :cond_1

    move v9, v8

    .line 38
    .local v9, "smallestWidth":I
    :goto_0
    int-to-float v10, v9

    const/high16 v11, 0x44870000    # 1080.0f

    div-float v6, v10, v11

    .line 40
    .local v6, "ratio":F
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenWidth : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenHeight : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ratio : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->touchHashmap:Ljava/util/HashMap;

    .line 54
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v0, v10, 0x2

    .line 55
    .local v0, "circleUnlockMaxWidth":I
    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v6

    float-to-int v5, v10

    .line 56
    .local v5, "outerStrokeWidth":I
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v6

    float-to-int v3, v10

    .line 57
    .local v3, "innerStrokeWidth":I
    const/16 v10, 0x1e

    new-array v4, v10, [I

    const/4 v10, 0x0

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_01:I

    aput v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_02:I

    aput v11, v4, v10

    const/4 v10, 0x2

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_03:I

    aput v11, v4, v10

    const/4 v10, 0x3

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_04:I

    aput v11, v4, v10

    const/4 v10, 0x4

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_05:I

    aput v11, v4, v10

    const/4 v10, 0x5

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_06:I

    aput v11, v4, v10

    const/4 v10, 0x6

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_07:I

    aput v11, v4, v10

    const/4 v10, 0x7

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_08:I

    aput v11, v4, v10

    const/16 v10, 0x8

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_09:I

    aput v11, v4, v10

    const/16 v10, 0x9

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_10:I

    aput v11, v4, v10

    const/16 v10, 0xa

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_11:I

    aput v11, v4, v10

    const/16 v10, 0xb

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_12:I

    aput v11, v4, v10

    const/16 v10, 0xc

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_13:I

    aput v11, v4, v10

    const/16 v10, 0xd

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_14:I

    aput v11, v4, v10

    const/16 v10, 0xe

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_15:I

    aput v11, v4, v10

    const/16 v10, 0xf

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_16:I

    aput v11, v4, v10

    const/16 v10, 0x10

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_17:I

    aput v11, v4, v10

    const/16 v10, 0x11

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_18:I

    aput v11, v4, v10

    const/16 v10, 0x12

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_19:I

    aput v11, v4, v10

    const/16 v10, 0x13

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_20:I

    aput v11, v4, v10

    const/16 v10, 0x14

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_21:I

    aput v11, v4, v10

    const/16 v10, 0x15

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_22:I

    aput v11, v4, v10

    const/16 v10, 0x16

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_23:I

    aput v11, v4, v10

    const/16 v10, 0x17

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_24:I

    aput v11, v4, v10

    const/16 v10, 0x18

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_25:I

    aput v11, v4, v10

    const/16 v10, 0x19

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_26:I

    aput v11, v4, v10

    const/16 v10, 0x1a

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_27:I

    aput v11, v4, v10

    const/16 v10, 0x1b

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_28:I

    aput v11, v4, v10

    const/16 v10, 0x1c

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_29:I

    aput v11, v4, v10

    const/16 v10, 0x1d

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_30:I

    aput v11, v4, v10

    .line 75
    .local v4, "lockSequenceImageId":[I
    new-instance v10, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    .line 76
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 78
    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 79
    .local v1, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 80
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v0, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    .line 81
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v5, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    .line 82
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v3, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    .line 83
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput-object v4, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    .line 84
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_arrow:I

    iput v11, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    .line 85
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 86
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isZeroProject()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_shortcut_min_width_offset:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->setMinWidthOffset(I)V

    .line 88
    sget v10, Lcom/android/keyguard/R$drawable;->keyguard_shortcut_arrow:I

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->setArrowForButton(I)V

    .line 91
    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    .line 92
    return-void

    .end local v0    # "circleUnlockMaxWidth":I
    .end local v1    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    .end local v3    # "innerStrokeWidth":I
    .end local v4    # "lockSequenceImageId":[I
    .end local v5    # "outerStrokeWidth":I
    .end local v6    # "ratio":F
    .end local v9    # "smallestWidth":I
    :cond_1
    move v9, v7

    .line 37
    goto/16 :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 167
    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 125
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2
    .param p1, "arrowForButtonId"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 103
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 104
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    .line 105
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 106
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 181
    :cond_0
    return-void
.end method

.method public setMinWidthOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 96
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 97
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 99
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 119
    :cond_0
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 149
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 156
    .end local v0    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
