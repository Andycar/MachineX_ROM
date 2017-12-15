.class Landroid/widget/HoverPopupWindow$5;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .registers 2

    .prologue
    .line 1077
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    # invokes: Landroid/widget/HoverPopupWindow;->showPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$1700(Landroid/widget/HoverPopupWindow;)V

    .line 1081
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1082
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$5;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    :cond_23
    return-void
.end method
