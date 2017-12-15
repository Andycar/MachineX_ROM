.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$1;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 80
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 81
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 83
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 85
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 86
    return-void
.end method

.method static synthetic access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->computeClickPointInScreenUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .registers 3
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;

    .prologue
    .line 769
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 777
    :cond_4
    :goto_4
    return-void

    .line 772
    :cond_5
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 773
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 774
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_4
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .registers 6
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 765
    :cond_4
    return-void

    .line 760
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 761
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_4

    .line 762
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 763
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 781
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 782
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 797
    :cond_c
    :goto_c
    return-void

    .line 786
    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_21

    .line 787
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 788
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 791
    :cond_21
    if-eqz p2, :cond_c

    .line 792
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 793
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 794
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 795
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_c
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .registers 16
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 801
    if-nez p1, :cond_3

    .line 856
    :cond_2
    :goto_2
    return-void

    .line 805
    :cond_3
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v9, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 806
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 810
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 811
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 813
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 814
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 815
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_25

    .line 816
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 817
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 819
    :cond_25
    if-eqz p2, :cond_3a

    .line 820
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 822
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 823
    iget v9, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v9, v9

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 825
    :cond_3a
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 826
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 828
    if-eqz p2, :cond_2

    .line 829
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 830
    .local v1, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-eqz v9, :cond_2

    .line 834
    iget v9, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v10, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float v6, v9, v10

    .line 836
    .local v6, "scale":F
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 837
    .local v8, "visibleWinFrame":Landroid/graphics/Rect;
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 838
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 839
    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 840
    iget v9, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 842
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 843
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v5, v9, Landroid/graphics/Point;->x:I

    .line 844
    .local v5, "displayWidth":I
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v4, v9, Landroid/graphics/Point;->y:I

    .line 846
    .local v4, "displayHeight":I
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 847
    .local v7, "visibleDisplayFrame":Landroid/graphics/Rect;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 849
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 851
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v9

    if-nez v9, :cond_2

    .line 853
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto/16 :goto_2
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .registers 8
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_3

    .line 753
    :cond_2
    return-void

    .line 745
    :cond_3
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 746
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 748
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v3, :cond_2

    .line 749
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 750
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private computeClickPointInScreenUiThread(Landroid/os/Message;)V
    .registers 19
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 669
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 670
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 671
    .local v1, "accessibilityViewId":I
    iget v14, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 672
    .local v14, "virtualDescendantId":I
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 673
    .local v5, "interactionId":I
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 675
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/view/MagnificationSpec;

    .line 676
    .local v11, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .line 677
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 679
    const/4 v12, 0x0

    .line 680
    .local v12, "succeeded":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 682
    .local v8, "point":Landroid/graphics/Point;
    :try_start_20
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v15, :cond_30

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_a0

    if-nez v15, :cond_3d

    .line 716
    :cond_30
    const/4 v10, 0x0

    .line 717
    .local v10, "result":Landroid/graphics/Point;
    if-eqz v12, :cond_39

    .line 718
    :try_start_33
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V

    .line 719
    move-object v10, v8

    .line 721
    :cond_39
    invoke-interface {v4, v10, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setComputeClickPointInScreenActionResult(Landroid/graphics/Point;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_b0

    .line 726
    :goto_3c
    return-void

    .line 685
    .end local v10    # "result":Landroid/graphics/Point;
    :cond_3d
    const/4 v13, 0x0

    .line 686
    .local v13, "target":Landroid/view/View;
    const v15, 0x7fffffff

    if-eq v1, v15, :cond_89

    .line 687
    :try_start_43
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v13

    .line 691
    :goto_49
    if-eqz v13, :cond_7a

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7a

    .line 692
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 693
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_96

    .line 695
    const/4 v7, 0x0

    .line 696
    .local v7, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    const v15, 0x7fffffff

    if-eq v14, v15, :cond_90

    .line 697
    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 702
    :goto_63
    if-eqz v7, :cond_7a

    .line 703
    const/4 v12, 0x1

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 705
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 706
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/graphics/Point;->set(II)V
    :try_end_7a
    .catchall {:try_start_43 .. :try_end_7a} :catchall_a0

    .line 716
    .end local v3    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_7a
    :goto_7a
    const/4 v10, 0x0

    .line 717
    .restart local v10    # "result":Landroid/graphics/Point;
    if-eqz v12, :cond_83

    .line 718
    :try_start_7d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V

    .line 719
    move-object v10, v8

    .line 721
    :cond_83
    invoke-interface {v4, v10, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setComputeClickPointInScreenActionResult(Landroid/graphics/Point;I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_86} :catch_87

    goto :goto_3c

    .line 722
    :catch_87
    move-exception v15

    goto :goto_3c

    .line 689
    .end local v10    # "result":Landroid/graphics/Point;
    :cond_89
    :try_start_89
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_49

    .line 699
    .restart local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_90
    const/4 v15, -0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    goto :goto_63

    .line 708
    .end local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_96
    const v15, 0x7fffffff

    if-ne v14, v15, :cond_7a

    .line 710
    invoke-virtual {v13, v6, v8}, Landroid/view/View;->computeClickPointInScreenForAccessibility(Landroid/graphics/Region;Landroid/graphics/Point;)Z
    :try_end_9e
    .catchall {:try_start_89 .. :try_end_9e} :catchall_a0

    move-result v12

    goto :goto_7a

    .line 715
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v13    # "target":Landroid/view/View;
    :catchall_a0
    move-exception v15

    .line 716
    const/4 v10, 0x0

    .line 717
    .restart local v10    # "result":Landroid/graphics/Point;
    if-eqz v12, :cond_aa

    .line 718
    :try_start_a4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V

    .line 719
    move-object v10, v8

    .line 721
    :cond_aa
    invoke-interface {v4, v10, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setComputeClickPointInScreenActionResult(Landroid/graphics/Point;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_ad} :catch_ae

    .line 724
    :goto_ad
    throw v15

    .line 722
    :catch_ae
    move-exception v16

    goto :goto_ad

    :catch_b0
    move-exception v15

    goto :goto_3c
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 128
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 130
    .local v3, "flags":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 131
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 132
    .local v0, "accessibilityViewId":I
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 133
    .local v9, "virtualDescendantId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 134
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 136
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/view/MagnificationSpec;

    .line 137
    .local v8, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .line 139
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 141
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 142
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 144
    :try_start_20
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_2c

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_82

    if-nez v10, :cond_45

    .line 159
    :cond_2c
    :try_start_2c
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 160
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 161
    if-eqz v8, :cond_3b

    .line 162
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 164
    :cond_3b
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 165
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 166
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_44} :catch_9e

    .line 171
    :goto_44
    return-void

    .line 147
    :cond_45
    :try_start_45
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 148
    const/4 v7, 0x0

    .line 149
    .local v7, "root":Landroid/view/View;
    const v10, 0x7fffffff

    if-ne v0, v10, :cond_7d

    .line 150
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 154
    :goto_55
    if-eqz v7, :cond_62

    invoke-direct {p0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 155
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-virtual {v10, v7, v9, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_82

    .line 159
    :cond_62
    :try_start_62
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 160
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 161
    if-eqz v8, :cond_71

    .line 162
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 164
    :cond_71
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 165
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 166
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_7a} :catch_7b

    goto :goto_44

    .line 167
    :catch_7b
    move-exception v10

    goto :goto_44

    .line 152
    :cond_7d
    :try_start_7d
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_82

    move-result-object v7

    goto :goto_55

    .line 158
    .end local v7    # "root":Landroid/view/View;
    :catchall_82
    move-exception v10

    .line 159
    :try_start_83
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 160
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 161
    if-eqz v8, :cond_92

    .line 162
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 164
    :cond_92
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 165
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 166
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_9b} :catch_9c

    .line 169
    :goto_9b
    throw v10

    .line 167
    :catch_9c
    move-exception v11

    goto :goto_9b

    :catch_9e
    move-exception v10

    goto :goto_44
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .registers 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 289
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 291
    .local v5, "flags":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 292
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 293
    .local v16, "text":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 295
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v15, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 296
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 297
    .local v2, "accessibilityViewId":I
    iget v0, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v18, v0

    .line 298
    .local v18, "virtualDescendantId":I
    iget v11, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 299
    .local v11, "interactionId":I
    iget-object v12, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Region;

    .line 300
    .local v12, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 302
    const/4 v9, 0x0

    .line 304
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_148

    if-nez v19, :cond_6b

    .line 355
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 357
    if-eqz v15, :cond_62

    .line 358
    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    .line 360
    :cond_62
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 361
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6a} :catch_172

    .line 366
    :goto_6a
    return-void

    .line 307
    :cond_6b
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 308
    const/4 v14, 0x0

    .line 309
    .local v14, "root":Landroid/view/View;
    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v2, v0, :cond_d3

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v14

    .line 314
    :goto_89
    if-eqz v14, :cond_aa

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_aa

    .line 315
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    .line 316
    .local v13, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v13, :cond_e9

    .line 317
    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_de

    .line 318
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_a9
    .catchall {:try_start_6b .. :try_end_a9} :catchall_148

    move-result-object v9

    .line 355
    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_aa
    :goto_aa
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 357
    if-eqz v15, :cond_c8

    .line 358
    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    .line 360
    :cond_c8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 361
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_d0} :catch_d1

    goto :goto_6a

    .line 362
    :catch_d1
    move-exception v19

    goto :goto_6a

    .line 312
    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_89

    .line 321
    .restart local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_de
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    goto :goto_aa

    .line 324
    :cond_e9
    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_aa

    .line 325
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 326
    .local v7, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 327
    const/16 v19, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v14, v7, v0, v1}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 330
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_aa

    .line 331
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 332
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 333
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 334
    .local v17, "viewCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_114
    move/from16 v0, v17

    if-ge v8, v0, :cond_aa

    .line 335
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 336
    .local v6, "foundView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_13b

    .line 337
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    .line 338
    if-eqz v13, :cond_13e

    .line 339
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 342
    .local v10, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v10, :cond_13b

    .line 343
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    .end local v10    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_13b
    :goto_13b
    add-int/lit8 v8, v8, 0x1

    goto :goto_114

    .line 346
    :cond_13e
    invoke-virtual {v6}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_147
    .catchall {:try_start_d3 .. :try_end_147} :catchall_148

    goto :goto_13b

    .line 354
    .end local v6    # "foundView":Landroid/view/View;
    .end local v7    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "i":I
    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v14    # "root":Landroid/view/View;
    .end local v17    # "viewCount":I
    :catchall_148
    move-exception v19

    .line 355
    :try_start_149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 357
    if-eqz v15, :cond_167

    .line 358
    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->recycle()V

    .line 360
    :cond_167
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 361
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_16f} :catch_170

    .line 364
    :goto_16f
    throw v19

    .line 362
    :catch_170
    move-exception v20

    goto :goto_16f

    :catch_172
    move-exception v19

    goto/16 :goto_6a
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 204
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 205
    .local v3, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 207
    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 208
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 209
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 211
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/view/MagnificationSpec;

    .line 212
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 213
    .local v10, "viewId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .line 215
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 217
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 218
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 220
    :try_start_22
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_2e

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_b6

    if-nez v11, :cond_44

    .line 245
    :cond_2e
    :try_start_2e
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 246
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 247
    if-eqz v9, :cond_3d

    .line 248
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 250
    :cond_3d
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 251
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_43} :catch_cf

    .line 256
    :goto_43
    return-void

    .line 223
    :cond_44
    :try_start_44
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 224
    const/4 v8, 0x0

    .line 225
    .local v8, "root":Landroid/view/View;
    const v11, 0x7fffffff

    if-eq v0, v11, :cond_7e

    .line 226
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    .line 230
    :goto_54
    if-eqz v8, :cond_9e

    .line 231
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_b6

    move-result v7

    .line 233
    .local v7, "resolvedViewId":I
    if-gtz v7, :cond_83

    .line 245
    :try_start_66
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 246
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 247
    if-eqz v9, :cond_75

    .line 248
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 250
    :cond_75
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 251
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_7b} :catch_7c

    goto :goto_43

    .line 252
    :catch_7c
    move-exception v11

    goto :goto_43

    .line 228
    .end local v7    # "resolvedViewId":I
    :cond_7e
    :try_start_7e
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_54

    .line 236
    .restart local v7    # "resolvedViewId":I
    :cond_83
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v11, :cond_8f

    .line 237
    new-instance v11, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 239
    :cond_8f
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v11, v7, v4}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 240
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    .line 241
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v11}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_9e
    .catchall {:try_start_7e .. :try_end_9e} :catchall_b6

    .line 245
    .end local v7    # "resolvedViewId":I
    :cond_9e
    :try_start_9e
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 246
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 247
    if-eqz v9, :cond_ad

    .line 248
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 250
    :cond_ad
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 251
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_b3} :catch_b4

    goto :goto_43

    .line 252
    :catch_b4
    move-exception v11

    goto :goto_43

    .line 244
    .end local v8    # "root":Landroid/view/View;
    :catchall_b6
    move-exception v11

    .line 245
    :try_start_b7
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 246
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 247
    if-eqz v9, :cond_c6

    .line 248
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 250
    :cond_c6
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 251
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_cc} :catch_cd

    .line 254
    :goto_cc
    throw v11

    .line 252
    :catch_cd
    move-exception v12

    goto :goto_cc

    :catch_cf
    move-exception v11

    goto/16 :goto_43
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .registers 21
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 400
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 401
    .local v5, "flags":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 403
    .local v6, "focusType":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 404
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v9, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 405
    .local v9, "interactionId":I
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 406
    .local v2, "accessibilityViewId":I
    iget v15, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 407
    .local v15, "virtualDescendantId":I
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 409
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v13, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v13, Landroid/view/MagnificationSpec;

    .line 410
    .local v13, "spec":Landroid/view/MagnificationSpec;
    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Region;

    .line 411
    .local v10, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 413
    const/4 v7, 0x0

    .line 415
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_ad

    if-nez v16, :cond_67

    .line 469
    :cond_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 471
    if-eqz v13, :cond_5e

    .line 472
    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    .line 474
    :cond_5e
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 475
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_66} :catch_179

    .line 480
    :goto_66
    return-void

    .line 418
    :cond_67
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 419
    const/4 v12, 0x0

    .line 420
    .local v12, "root":Landroid/view/View;
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v2, v0, :cond_d5

    .line 421
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v12

    .line 425
    :goto_85
    if-eqz v12, :cond_f2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_f2

    .line 426
    packed-switch v6, :pswitch_data_17c

    .line 464
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown focus type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_ad
    .catchall {:try_start_67 .. :try_end_ad} :catchall_ad

    .line 468
    .end local v12    # "root":Landroid/view/View;
    :catchall_ad
    move-exception v16

    .line 469
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 471
    if-eqz v13, :cond_cc

    .line 472
    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    .line 474
    :cond_cc
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 475
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_d4} :catch_176

    .line 478
    :goto_d4
    throw v16

    .line 423
    .restart local v12    # "root":Landroid/view/View;
    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_85

    .line 428
    :pswitch_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 431
    .local v8, "host":Landroid/view/View;
    if-eqz v8, :cond_f2

    invoke-static {v8, v12}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_ef
    .catchall {:try_start_d5 .. :try_end_ef} :catchall_ad

    move-result v16

    if-nez v16, :cond_11d

    .line 469
    .end local v8    # "host":Landroid/view/View;
    :cond_f2
    :goto_f2
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 471
    if-eqz v13, :cond_110

    .line 472
    invoke-virtual {v13}, Landroid/view/MagnificationSpec;->recycle()V

    .line 474
    :cond_110
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 475
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_118} :catch_11a

    goto/16 :goto_66

    .line 476
    :catch_11a
    move-exception v16

    goto/16 :goto_66

    .line 435
    .restart local v8    # "host":Landroid/view/View;
    :cond_11d
    :try_start_11d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_f2

    .line 440
    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .line 441
    .local v11, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_14a

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f2

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    goto :goto_f2

    .line 446
    :cond_14a
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_f2

    .line 447
    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    goto :goto_f2

    .line 451
    .end local v8    # "host":Landroid/view/View;
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :pswitch_156
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 452
    .local v14, "target":Landroid/view/View;
    if-eqz v14, :cond_f2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_f2

    .line 455
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    .line 456
    .restart local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_16e

    .line 457
    invoke-virtual {v11, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 459
    :cond_16e
    if-nez v7, :cond_f2

    .line 460
    invoke-virtual {v14}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_173
    .catchall {:try_start_11d .. :try_end_173} :catchall_ad

    move-result-object v7

    goto/16 :goto_f2

    .line 476
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v12    # "root":Landroid/view/View;
    .end local v14    # "target":Landroid/view/View;
    :catch_176
    move-exception v17

    goto/16 :goto_d4

    :catch_179
    move-exception v16

    goto/16 :goto_66

    .line 426
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_156
        :pswitch_e0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .registers 6
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 730
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_9

    move-object v0, v2

    .line 737
    :cond_8
    :goto_8
    return-object v0

    .line 733
    :cond_9
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v0, v2

    .line 735
    goto :goto_8
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 513
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 514
    .local v4, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 516
    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 517
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 518
    .local v3, "direction":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 519
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 521
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Landroid/view/MagnificationSpec;

    .line 522
    .local v10, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    .line 524
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 526
    const/4 v7, 0x0

    .line 528
    .local v7, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_1c
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_28

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_7d

    if-nez v11, :cond_3e

    .line 546
    :cond_28
    :try_start_28
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 547
    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 548
    if-eqz v10, :cond_37

    .line 549
    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    .line 551
    :cond_37
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 552
    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3d} :catch_96

    .line 557
    :goto_3d
    return-void

    .line 531
    :cond_3e
    :try_start_3e
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v4, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 532
    const/4 v9, 0x0

    .line 533
    .local v9, "root":Landroid/view/View;
    const v11, 0x7fffffff

    if-eq v0, v11, :cond_78

    .line 534
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    .line 538
    :goto_4e
    if-eqz v9, :cond_60

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 539
    invoke-virtual {v9, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v8

    .line 540
    .local v8, "nextView":Landroid/view/View;
    if-eqz v8, :cond_60

    .line 541
    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_7d

    move-result-object v7

    .line 546
    .end local v8    # "nextView":Landroid/view/View;
    :cond_60
    :try_start_60
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 547
    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 548
    if-eqz v10, :cond_6f

    .line 549
    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    .line 551
    :cond_6f
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 552
    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_75} :catch_76

    goto :goto_3d

    .line 553
    :catch_76
    move-exception v11

    goto :goto_3d

    .line 536
    :cond_78
    :try_start_78
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7d

    goto :goto_4e

    .line 545
    .end local v9    # "root":Landroid/view/View;
    :catchall_7d
    move-exception v11

    .line 546
    :try_start_7e
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 547
    invoke-direct {p0, v7, v10}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 548
    if-eqz v10, :cond_8d

    .line 549
    invoke-virtual {v10}, Landroid/view/MagnificationSpec;->recycle()V

    .line 551
    :cond_8d
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 552
    invoke-interface {v2, v7, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_93} :catch_94

    .line 555
    :goto_93
    throw v11

    .line 553
    :catch_94
    move-exception v12

    goto :goto_93

    :catch_96
    move-exception v11

    goto :goto_3d
.end method

.method private isShown(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v12, 0x7fffffff

    .line 590
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 591
    .local v5, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 593
    .local v0, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 594
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v10, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 595
    .local v10, "virtualDescendantId":I
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 596
    .local v1, "action":I
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 597
    .local v6, "interactionId":I
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 599
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 601
    .local v3, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 603
    const/4 v8, 0x0

    .line 605
    .local v8, "succeeded":Z
    :try_start_1d
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_29

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_74

    if-nez v11, :cond_34

    .line 631
    :cond_29
    :try_start_29
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 632
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_82

    .line 637
    :goto_33
    return-void

    .line 608
    :cond_34
    :try_start_34
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 609
    const/4 v9, 0x0

    .line 610
    .local v9, "target":Landroid/view/View;
    if-eq v0, v12, :cond_62

    .line 611
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    .line 615
    :goto_41
    if-eqz v9, :cond_55

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 616
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 617
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v7, :cond_6d

    .line 618
    if-eq v10, v12, :cond_67

    .line 619
    invoke-virtual {v7, v10, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_74

    move-result v8

    .line 631
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_55
    :goto_55
    :try_start_55
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 632
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5f} :catch_60

    goto :goto_33

    .line 633
    :catch_60
    move-exception v11

    goto :goto_33

    .line 613
    :cond_62
    :try_start_62
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_41

    .line 622
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_67
    const/4 v11, -0x1

    invoke-virtual {v7, v11, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v8

    goto :goto_55

    .line 625
    :cond_6d
    if-ne v10, v12, :cond_55

    .line 626
    invoke-virtual {v9, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_74

    move-result v8

    goto :goto_55

    .line 630
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v9    # "target":Landroid/view/View;
    :catchall_74
    move-exception v11

    .line 631
    :try_start_75
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 632
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7f} :catch_80

    .line 635
    :goto_7f
    throw v11

    .line 633
    :catch_80
    move-exception v12

    goto :goto_7f

    :catch_82
    move-exception v11

    goto :goto_33
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .registers 4
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 860
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public computeClickPointInScreenClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/view/MagnificationSpec;)V
    .registers 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "interrogatingPid"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 643
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 644
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 646
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 647
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 648
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 649
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 650
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 651
    iput-object p9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 652
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 654
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p6, v2, :cond_35

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p7, v2

    if-nez v2, :cond_35

    .line 661
    invoke-static {p7, p8}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 666
    :goto_34
    return-void

    .line 664
    :cond_35
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34
.end method

.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 102
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 104
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 106
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 107
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 108
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 109
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 110
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 112
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 113
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_37

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_37

    .line 120
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 125
    :goto_36
    return-void

    .line 123
    :cond_37
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_36
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 262
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 263
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 264
    iput p7, v3, Landroid/os/Message;->arg1:I

    .line 266
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 267
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 268
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 270
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 271
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 272
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 273
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 274
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_3b

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_3b

    .line 281
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 286
    :goto_3a
    return-void

    .line 284
    :cond_3b
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 177
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 178
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 179
    iput p7, v3, Landroid/os/Message;->arg1:I

    .line 180
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 182
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 183
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 184
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 185
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 186
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 187
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 189
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_35

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_35

    .line 196
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 201
    :goto_34
    return-void

    .line 199
    :cond_35
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 372
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 373
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v3, Landroid/os/Message;->what:I

    .line 374
    iput p7, v3, Landroid/os/Message;->arg1:I

    .line 375
    iput p3, v3, Landroid/os/Message;->arg2:I

    .line 377
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 378
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 379
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 380
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 381
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 383
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 385
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_3b

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_3b

    .line 392
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 397
    :goto_3a
    return-void

    .line 395
    :cond_3b
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .registers 19
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 486
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 487
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 488
    iput p7, v3, Landroid/os/Message;->arg1:I

    .line 489
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 491
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 492
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 493
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 494
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 495
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 496
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 498
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v4, :cond_35

    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v4, p9, v4

    if-nez v4, :cond_35

    .line 505
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 510
    :goto_34
    return-void

    .line 508
    :cond_35
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 16
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    .line 563
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 564
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 565
    iput p7, v1, Landroid/os/Message;->arg1:I

    .line 566
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 568
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 569
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 570
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 571
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 572
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 573
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 575
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v2, :cond_37

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p9, v2

    if-nez v2, :cond_37

    .line 582
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 587
    :goto_36
    return-void

    .line 585
    :cond_37
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_36
.end method
