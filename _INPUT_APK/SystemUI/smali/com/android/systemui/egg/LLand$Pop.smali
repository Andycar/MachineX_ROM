.class Lcom/android/systemui/egg/LLand$Pop;
.super Lcom/android/systemui/egg/LLand$Obstacle;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pop"
.end annotation


# instance fields
.field cx:I

.field cy:I

.field mRotate:I

.field r:I

.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 823
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Pop;->this$0:Lcom/android/systemui/egg/LLand;

    .line 824
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/LLand$Obstacle;-><init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V

    .line 825
    sget-object v1, Lcom/android/systemui/egg/LLand;->POPS:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Lcom/android/systemui/egg/LLand;->irand(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 826
    .local v0, "idx":I
    sget-object v1, Lcom/android/systemui/egg/LLand;->POPS:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLand$Pop;->setBackgroundResource(I)V

    .line 827
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLand$Pop;->setScaleX(F)V

    .line 828
    sget-object v1, Lcom/android/systemui/egg/LLand;->POPS:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/systemui/egg/LLand$Pop;->mRotate:I

    .line 829
    new-instance v1, Lcom/android/systemui/egg/LLand$Pop$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/egg/LLand$Pop$1;-><init>(Lcom/android/systemui/egg/LLand$Pop;Lcom/android/systemui/egg/LLand;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLand$Pop;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 836
    return-void

    .line 827
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 828
    :cond_1
    invoke-static {}, Lcom/android/systemui/egg/LLand;->frand()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public intersects(Lcom/android/systemui/egg/LLand$Player;)Z
    .locals 8
    .param p1, "p"    # Lcom/android/systemui/egg/LLand$Player;

    .prologue
    .line 839
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    .line 840
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 841
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    float-to-int v2, v4

    .line 842
    .local v2, "x":I
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 843
    .local v3, "y":I
    iget v4, p0, Lcom/android/systemui/egg/LLand$Pop;->cx:I

    sub-int v4, v2, v4

    int-to-double v4, v4

    iget v6, p0, Lcom/android/systemui/egg/LLand$Pop;->cy:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/android/systemui/egg/LLand$Pop;->r:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    .line 845
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    return v4

    .line 840
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public step(JJFF)V
    .locals 3
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .prologue
    .line 850
    invoke-super/range {p0 .. p6}, Lcom/android/systemui/egg/LLand$Obstacle;->step(JJFF)V

    .line 851
    iget v0, p0, Lcom/android/systemui/egg/LLand$Pop;->mRotate:I

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Pop;->getRotation()F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v1, p6

    iget v2, p0, Lcom/android/systemui/egg/LLand$Pop;->mRotate:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Pop;->setRotation(F)V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/egg/LLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/egg/LLand$Pop;->cx:I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/egg/LLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/egg/LLand$Pop;->cy:I

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Pop;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/egg/LLand$Pop;->r:I

    .line 858
    return-void
.end method
