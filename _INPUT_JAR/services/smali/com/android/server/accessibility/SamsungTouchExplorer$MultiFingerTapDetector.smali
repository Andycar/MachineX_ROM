.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFingerTapDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    }
.end annotation


# static fields
.field private static final LOG_MULTI_FINGER:Ljava/lang/String; = "MultiFingerTapDetector"


# instance fields
.field private final MSG_PERFORM_DOUBLE_TAP:I

.field private final MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final MSG_PERFORM_TRIPLE_TAP:I

.field private final STATE_CANCEL:I

.field private final STATE_READY:I

.field private final STATE_THREE_FINGER_DETECTION:I

.field private final STATE_TWO_FINGER_DETECTION:I

.field private isFirstTapDone:Z

.field private isSecondTapDone:Z

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPointerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1658
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_READY:I

    .line 1663
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_TWO_FINGER_DETECTION:I

    .line 1664
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_THREE_FINGER_DETECTION:I

    .line 1665
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_CANCEL:I

    .line 1668
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1671
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1674
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    .line 1677
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1680
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1683
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    .line 1684
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP:I

    .line 1685
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

    .line 1686
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_TRIPLE_TAP:I

    .line 1689
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    .line 2028
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 1658
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performSingleTap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTap()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTapAndHold()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTap()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .prologue
    .line 1658
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    return v0
.end method

.method private isMultiFingerTap()Z
    .registers 5

    .prologue
    .line 1903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 1904
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1905
    .local v1, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->isTapEvent()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1906
    const/4 v2, 0x0

    .line 1909
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :goto_1e
    return v2

    .line 1903
    .restart local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1909
    .end local v1    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    :cond_22
    const/4 v2, 0x1

    goto :goto_1e
.end method

.method private performDoubleTap()V
    .registers 3

    .prologue
    .line 1956
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_a

    .line 1957
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 1972
    :goto_9
    return-void

    .line 1960
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_2c

    .line 1971
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_9

    .line 1963
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1967
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1960
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method private performDoubleTapAndHold()V
    .registers 3

    .prologue
    .line 1980
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_a

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 1996
    :goto_9
    return-void

    .line 1984
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_2c

    .line 1995
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_9

    .line 1987
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1991
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1984
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method private performSingleTap()V
    .registers 3

    .prologue
    .line 1932
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_a

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 1948
    :goto_9
    return-void

    .line 1936
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_2c

    .line 1947
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_9

    .line 1939
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1943
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 1936
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method private performTripleTap()V
    .registers 3

    .prologue
    .line 2004
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_a

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 2022
    :goto_9
    return-void

    .line 2008
    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_2c

    .line 2021
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_9

    .line 2011
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 2016
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_f

    .line 2008
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1916
    const-string v0, "MultiFingerTapDetector"

    const-string v1, "clear the Multi-Finger tap detector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1919
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1920
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1921
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1923
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1924
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_2c6

    .line 1896
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1727
    :pswitch_8
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    if-ne v0, v1, :cond_13

    .line 1728
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1731
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1733
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1735
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    goto :goto_7

    .line 1739
    :pswitch_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    .line 1740
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_41
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ge v7, v0, :cond_63

    .line 1741
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1740
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 1745
    :cond_63
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    packed-switch v0, :pswitch_data_2d8

    .line 1792
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto :goto_7

    .line 1751
    :pswitch_6c
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_7c

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    .line 1753
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1759
    :cond_7c
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1760
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_7

    .line 1761
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1762
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1763
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1773
    :pswitch_a6
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_bb

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_bb

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b8

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bb

    .line 1776
    :cond_b8
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1782
    :cond_bb
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1783
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_7

    .line 1784
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 1785
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1786
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1799
    .end local v7    # "i":I
    :pswitch_e5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1800
    .local v6, "count":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_ea
    if-ge v7, v6, :cond_7

    .line 1801
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1802
    .local v9, "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1803
    .local v8, "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 1800
    add-int/lit8 v7, v7, 0x1

    goto :goto_ea

    .line 1808
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    .end local v9    # "pointerId":I
    :pswitch_10a
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - mDetectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isFirstTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isSecondTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - pointerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1813
    .restart local v9    # "pointerId":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    .line 1814
    .restart local v8    # "pInfo":Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    .line 1820
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isMultiFingerTap()Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 1823
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_1ec

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_1ec

    .line 1827
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e1

    .line 1828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1830
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1831
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d0

    .line 1832
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1835
    :cond_1d0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1839
    :cond_1e1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1841
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto/16 :goto_7

    .line 1843
    :cond_1ec
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_26d

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_26d

    .line 1848
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_22f

    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1851
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1852
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21c

    .line 1853
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1856
    :cond_21c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    add-int/lit8 v2, v2, 0x5a

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1860
    :cond_22f
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_239

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1861
    :cond_239
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    .line 1863
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1864
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25c

    .line 1865
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1868
    :cond_25c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1873
    :cond_26d
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_7

    .line 1874
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_285

    .line 1875
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1876
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1878
    :cond_285
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28f

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1879
    :cond_28f
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    .line 1880
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1881
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2af

    .line 1882
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1885
    :cond_2af
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1892
    :cond_2c0
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto/16 :goto_7

    .line 1725
    nop

    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3a
        :pswitch_e5
    .end packed-switch

    .line 1745
    :pswitch_data_2d8
    .packed-switch 0x2
        :pswitch_6c
        :pswitch_a6
    .end packed-switch
.end method
