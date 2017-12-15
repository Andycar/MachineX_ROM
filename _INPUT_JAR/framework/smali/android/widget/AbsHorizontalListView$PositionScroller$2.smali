.class Landroid/widget/AbsHorizontalListView$PositionScroller$2;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView$PositionScroller;II)V
    .registers 4

    .prologue
    .line 5737
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

    iput p2, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->val$position:I

    iput p3, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->val$boundPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5739
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

    iget v1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->val$position:I

    iget v2, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$2;->val$boundPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    .line 5740
    return-void
.end method
