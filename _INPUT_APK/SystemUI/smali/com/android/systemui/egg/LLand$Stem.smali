.class Lcom/android/systemui/egg/LLand$Stem;
.super Lcom/android/systemui/egg/LLand$Obstacle;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stem"
.end annotation


# instance fields
.field mDrawShadow:Z

.field mPaint:Landroid/graphics/Paint;

.field mShadow:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;FZ)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F
    .param p4, "drawShadow"    # Z

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Stem;->this$0:Lcom/android/systemui/egg/LLand;

    .line 867
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/LLand$Obstacle;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    .line 862
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/LLand$Stem;->mPaint:Landroid/graphics/Paint;

    .line 863
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    .line 868
    iput-boolean p4, p0, Lcom/android/systemui/egg/LLand$Stem;->mDrawShadow:Z

    .line 869
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Stem;->mPaint:Landroid/graphics/Paint;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Stem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 871
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Lcom/android/systemui/egg/LLand$Obstacle;->onAttachedToWindow()V

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Stem;->setWillNotDraw(Z)V

    .line 877
    new-instance v0, Lcom/android/systemui/egg/LLand$Stem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/LLand$Stem$1;-><init>(Lcom/android/systemui/egg/LLand$Stem;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Stem;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 883
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 887
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 888
    .local v1, "h":I
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 889
    .local v0, "g":Landroid/graphics/drawable/GradientDrawable;
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 890
    int-to-float v3, v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 891
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 892
    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 893
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 894
    iget-boolean v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mDrawShadow:Z

    if-nez v3, :cond_0

    .line 902
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 896
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 897
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 898
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v6, v2

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 899
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 900
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 901
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Stem;->mShadow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/egg/LLand$Stem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 891
    :array_0
    .array-data 4
        -0x1
        -0x555556
    .end array-data
.end method
