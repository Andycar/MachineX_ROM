.class final Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 2

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 2172
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    .prologue
    .line 2172
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 2235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    .line 2236
    return-void
.end method

.method private isPending()Z
    .registers 2

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 2188
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16

    .line 2189
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2190
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->clear()V

    .line 2192
    :cond_16
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2177
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 2178
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    .line 2181
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 2182
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2183
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    .line 2201
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 2230
    :cond_10
    :goto_10
    return-void

    .line 2205
    :cond_11
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2206
    .local v1, "pointerId":I
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2208
    .local v2, "pointerIndex":I
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;

    move-result-object v0

    .line 2209
    .local v0, "clickLocation":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)Z
    invoke-static {v3, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2213
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I
    invoke-static {v3, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3102(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2214
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3202(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2215
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3302(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2217
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3400(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    .line 2219
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v4, 0x4

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I
    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3502(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I

    .line 2220
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3600(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;I)V

    .line 2222
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2229
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->clear()V

    goto :goto_10
.end method
