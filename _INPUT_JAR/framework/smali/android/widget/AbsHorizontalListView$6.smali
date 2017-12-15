.class Landroid/widget/AbsHorizontalListView$6;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 8290
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 8292
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$5300(Landroid/widget/AbsHorizontalListView;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$5400(Landroid/widget/AbsHorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 8308
    :cond_10
    :goto_10
    return-void

    .line 8296
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 8297
    .local v0, "motion":I
    packed-switch v0, :pswitch_data_42

    goto :goto_10

    .line 8299
    :pswitch_19
    const-string v1, "[Motion-DoubleTap]"

    # invokes: Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$5500(Ljava/lang/String;)V

    .line 8300
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3b

    .line 8301
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView;->setSelection(I)V

    .line 8303
    :cond_3b
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$6;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    goto :goto_10

    .line 8297
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method
