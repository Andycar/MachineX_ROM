.class Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/widget/ActionBarContainer;
    .param p2, "x1"    # Lcom/android/internal/widget/ActionBarContainer$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    :cond_19
    :goto_19
    return-void

    .line 359
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$500(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19
.end method

.method public getOpacity()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 392
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 393
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-ne v2, v0, :cond_5d

    .line 408
    :cond_1e
    :goto_1e
    return v0

    .line 398
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$500(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_3d

    :cond_3b
    move v0, v1

    .line 400
    goto :goto_1e

    .line 402
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$600(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$700(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_1e

    :cond_5d
    move v0, v1

    .line 408
    goto :goto_1e
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 380
    :cond_19
    :goto_19
    return-void

    .line 376
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_19
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 384
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 388
    return-void
.end method
