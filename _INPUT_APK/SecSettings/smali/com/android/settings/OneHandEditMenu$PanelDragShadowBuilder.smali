.class public Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "OneHandEditMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandEditMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelDragShadowBuilder"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPanel:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/OneHandEditMenu;


# direct methods
.method public constructor <init>(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->this$0:Lcom/android/settings/OneHandEditMenu;

    .line 649
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 650
    const v0, 0x7f100269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    .line 651
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f020596

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 663
    :cond_0
    return-void
.end method

.method public restoreOriginalImage()V
    .locals 3

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 667
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mPanel:Landroid/widget/LinearLayout;

    const v2, 0x7f020594

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 671
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 674
    :cond_1
    return-void
.end method
