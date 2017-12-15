.class Landroid/widget/AbsHorizontalListView$PositionScroller$1;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView$PositionScroller;I)V
    .registers 3

    .prologue
    .line 5685
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$1;->this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

    iput p2, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5687
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$1;->this$1:Landroid/widget/AbsHorizontalListView$PositionScroller;

    iget v1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    .line 5688
    return-void
.end method
