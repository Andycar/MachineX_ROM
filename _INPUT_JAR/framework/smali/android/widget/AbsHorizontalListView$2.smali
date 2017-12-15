.class Landroid/widget/AbsHorizontalListView$2;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;Z)V
    .registers 3

    .prologue
    .line 1653
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$2;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean p2, p0, Landroid/widget/AbsHorizontalListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1656
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$2;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView$2;->val$alwaysShow:Z

    # invokes: Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$100(Landroid/widget/AbsHorizontalListView;Z)V

    .line 1657
    return-void
.end method
