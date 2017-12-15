.class Landroid/widget/AbsHorizontalListView$1;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 3

    .prologue
    .line 1603
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$1;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean p2, p0, Landroid/widget/AbsHorizontalListView$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1606
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$1;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView$1;->val$enabled:Z

    # invokes: Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$000(Landroid/widget/AbsHorizontalListView;Z)V

    .line 1607
    return-void
.end method
