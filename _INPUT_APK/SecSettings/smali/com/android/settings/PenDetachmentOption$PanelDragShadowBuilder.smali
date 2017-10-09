.class public Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "PenDetachmentOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelDragShadowBuilder"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPanel:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method public constructor <init>(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->this$0:Lcom/android/settings/PenDetachmentOption;

    .line 737
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 738
    const v0, 0x7f100269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    .line 739
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f02050b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 751
    :cond_0
    return-void
.end method

.method public restoreOriginalImage()V
    .locals 3

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f020509

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 759
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 762
    :cond_1
    return-void
.end method
