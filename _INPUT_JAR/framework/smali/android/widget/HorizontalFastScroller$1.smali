.class Landroid/widget/HorizontalFastScroller$1;
.super Ljava/lang/Object;
.source "HorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalFastScroller;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    # getter for: Landroid/widget/HorizontalFastScroller;->mList:Landroid/widget/AbsHorizontalListView;
    invoke-static {v1}, Landroid/widget/HorizontalFastScroller;->access$000(Landroid/widget/HorizontalFastScroller;)Landroid/widget/AbsHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 221
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    # invokes: Landroid/widget/HorizontalFastScroller;->beginDrag()V
    invoke-static {v1}, Landroid/widget/HorizontalFastScroller;->access$100(Landroid/widget/HorizontalFastScroller;)V

    .line 223
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    iget-object v2, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    # getter for: Landroid/widget/HorizontalFastScroller;->mInitialTouchY:F
    invoke-static {v2}, Landroid/widget/HorizontalFastScroller;->access$200(Landroid/widget/HorizontalFastScroller;)F

    move-result v2

    # invokes: Landroid/widget/HorizontalFastScroller;->getPosFromMotionEvent(F)F
    invoke-static {v1, v2}, Landroid/widget/HorizontalFastScroller;->access$300(Landroid/widget/HorizontalFastScroller;F)F

    move-result v0

    .line 224
    .local v0, "pos":F
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    # invokes: Landroid/widget/HorizontalFastScroller;->scrollTo(F)V
    invoke-static {v1, v0}, Landroid/widget/HorizontalFastScroller;->access$400(Landroid/widget/HorizontalFastScroller;F)V

    .line 227
    .end local v0    # "pos":F
    :cond_22
    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$1;->this$0:Landroid/widget/HorizontalFastScroller;

    const/4 v2, 0x0

    # setter for: Landroid/widget/HorizontalFastScroller;->mHasPendingDrag:Z
    invoke-static {v1, v2}, Landroid/widget/HorizontalFastScroller;->access$502(Landroid/widget/HorizontalFastScroller;Z)Z

    .line 228
    return-void
.end method
