.class public Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private blockLongPress:Z

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isLongPressDone:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private touch_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 24
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 25
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 77
    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 24
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 25
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 64
    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 24
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 25
    iput-wide v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 51
    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 52
    return-void
.end method


# virtual methods
.method public checkLongPressStatus()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    iget v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v0, :pswitch_data_0

    .line 106
    const-string v0, "Tap and Hold Delay"

    const-string v1, "Unknown Tap and Hold State"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 110
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "uptime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 119
    iput v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 120
    iput-boolean v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 121
    iput-boolean v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 130
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    if-nez v2, :cond_1

    .line 131
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 134
    return v4

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 123
    iget-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 124
    iget-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 125
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 126
    iput-boolean v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 156
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 157
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 158
    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 159
    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 163
    return-void
.end method
