.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# instance fields
.field private final globalTimeForTouch:I

.field private mPressTime:J

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 12439
    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12440
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 12441
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 12442
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->globalTimeForTouch:I

    .line 12443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/TextView;
    .param p2, "x1"    # Landroid/widget/TextView$1;

    .prologue
    .line 12439
    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 12447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 12448
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 12449
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 12451
    .local v7, "rawY":F
    packed-switch v0, :pswitch_data_88

    .line 12483
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 12453
    :pswitch_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long v2, v8, v10

    .line 12454
    .local v2, "elipseTime":J
    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 12455
    .local v4, "moveX":F
    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 12456
    .local v5, "moveY":F
    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static {v9}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static {v10}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v10

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_6d

    const/4 v1, 0x1

    .line 12457
    .local v1, "flag":Z
    :goto_3f
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_6f

    const-wide/16 v8, 0x3e8

    cmp-long v8, v2, v8

    if-gez v8, :cond_6f

    if-eqz v1, :cond_6f

    .line 12458
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;
    invoke-static {v8}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_f

    .line 12462
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_f

    .line 12456
    .end local v1    # "flag":Z
    :cond_6d
    const/4 v1, 0x0

    goto :goto_3f

    .line 12465
    .restart local v1    # "flag":Z
    :cond_6f
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_f

    .line 12466
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_f

    .line 12472
    .end local v1    # "flag":Z
    .end local v2    # "elipseTime":J
    .end local v4    # "moveX":F
    .end local v5    # "moveY":F
    :pswitch_7d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    .line 12473
    iput v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 12474
    iput v7, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    goto :goto_f

    .line 12451
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
