.class Lcom/android/systemui/egg/LLand$Obstacle;
.super Landroid/view/View;
.source "LLand.java"

# interfaces
.implements Lcom/android/systemui/egg/LLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Obstacle"
.end annotation


# instance fields
.field public h:F

.field public final hitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;F)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Obstacle;->this$0:Lcom/android/systemui/egg/LLand;

    .line 789
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 786
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/LLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    .line 790
    const/high16 v0, -0x10000

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Obstacle;->setBackgroundColor(I)V

    .line 791
    iput p3, p0, Lcom/android/systemui/egg/LLand$Obstacle;->h:F

    .line 792
    return-void
.end method


# virtual methods
.method public cleared(Lcom/android/systemui/egg/LLand$Player;)Z
    .locals 5
    .param p1, "p"    # Lcom/android/systemui/egg/LLand$Player;

    .prologue
    .line 805
    iget-object v3, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    array-length v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 806
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 807
    iget-object v3, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    float-to-int v2, v3

    .line 808
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v3, v2, :cond_0

    const/4 v3, 0x0

    .line 810
    .end local v2    # "x":I
    :goto_1
    return v3

    .line 806
    .restart local v2    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v2    # "x":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public intersects(Lcom/android/systemui/egg/LLand$Player;)Z
    .locals 6
    .param p1, "p"    # Lcom/android/systemui/egg/LLand$Player;

    .prologue
    .line 795
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    .line 796
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 797
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    float-to-int v2, v4

    .line 798
    .local v2, "x":I
    iget-object v4, p1, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 799
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/systemui/egg/LLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 801
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    return v4

    .line 796
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public step(JJFF)V
    .locals 2
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Obstacle;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Obstacle;->getHitRect(Landroid/graphics/Rect;)V

    .line 817
    return-void
.end method
