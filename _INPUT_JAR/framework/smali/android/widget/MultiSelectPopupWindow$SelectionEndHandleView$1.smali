.class Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;
.super Landroid/view/ViewOutlineProvider;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;)V
    .registers 2

    .prologue
    .line 1698
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 1702
    const/4 v0, 0x3

    .line 1703
    .local v0, "delta":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    iget v4, v4, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1705
    .local v2, "radius":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1706
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget v3, v3, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget v5, v5, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1707
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-boolean v3, v3, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_4f

    .line 1708
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget v5, v5, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    sub-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1710
    :cond_4f
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 1711
    return-void
.end method
