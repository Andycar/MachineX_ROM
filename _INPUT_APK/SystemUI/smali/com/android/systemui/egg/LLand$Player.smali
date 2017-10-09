.class Lcom/android/systemui/egg/LLand$Player;
.super Landroid/widget/ImageView;
.source "LLand.java"

# interfaces
.implements Lcom/android/systemui/egg/LLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Player"
.end annotation


# instance fields
.field public final corners:[F

.field public dv:F

.field private mBoosting:Z

.field private final sHull:[F

.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/LLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$Player;->this$0:Lcom/android/systemui/egg/LLand;

    .line 700
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 687
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/egg/LLand$Player;->sHull:[F

    .line 697
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$Player;->sHull:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    .line 702
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Player;->setBackgroundResource(I)V

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 705
    new-instance v0, Lcom/android/systemui/egg/LLand$Player$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/egg/LLand$Player$1;-><init>(Lcom/android/systemui/egg/LLand$Player;Lcom/android/systemui/egg/LLand;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Player;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 715
    return-void

    .line 687
    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
        0x3f333333    # 0.7f
        0x0
        0x3f6b851f    # 0.92f
        0x3ea8f5c3    # 0.33f
        0x3f6b851f    # 0.92f
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3da3d70a    # 0.08f
        0x3f400000    # 0.75f
        0x3da3d70a    # 0.08f
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method


# virtual methods
.method public below(I)Z
    .locals 5
    .param p1, "h"    # I

    .prologue
    .line 730
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    array-length v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 731
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 732
    iget-object v3, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    float-to-int v2, v3

    .line 733
    .local v2, "y":I
    if-lt v2, p1, :cond_0

    const/4 v3, 0x1

    .line 735
    .end local v2    # "y":I
    :goto_1
    return v3

    .line 731
    .restart local v2    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v2    # "y":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public boost()V
    .locals 5

    .prologue
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/LLand$Player;->mBoosting:Z

    .line 759
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/LLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z_BOOST:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 767
    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/LLand$Player;->setScaleX(F)V

    .line 768
    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/LLand$Player;->setScaleY(F)V

    .line 769
    return-void
.end method

.method public prepareCheckIntersections()V
    .locals 10

    .prologue
    .line 718
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/egg/LLand$Params;->PLAYER_HIT_SIZE:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 719
    .local v2, "inset":I
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v5

    iget v4, v5, Lcom/android/systemui/egg/LLand$Params;->PLAYER_HIT_SIZE:I

    .line 720
    .local v4, "scale":I
    iget-object v5, p0, Lcom/android/systemui/egg/LLand$Player;->sHull:[F

    array-length v5, v5

    div-int/lit8 v0, v5, 0x2

    .line 721
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 722
    iget-object v5, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v6, v1, 0x2

    int-to-float v7, v4

    iget-object v8, p0, Lcom/android/systemui/egg/LLand$Player;->sHull:[F

    mul-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    int-to-float v8, v2

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 723
    iget-object v5, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v7, v4

    iget-object v8, p0, Lcom/android/systemui/egg/LLand$Player;->sHull:[F

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    int-to-float v8, v2

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 726
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/android/systemui/egg/LLand$Player;->corners:[F

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 727
    return-void
.end method

.method public step(JJFF)V
    .locals 5
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/egg/LLand$Player;->mBoosting:Z

    if-eqz v2, :cond_3

    .line 742
    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/LLand$Params;->BOOST_DV:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    .line 746
    :goto_1
    iget v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    .line 749
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    mul-float/2addr v3, p6

    add-float v0, v2, v3

    .line 750
    .local v0, "y":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .end local v0    # "y":F
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/LLand$Player;->setTranslationY(F)V

    .line 751
    iget v1, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    int-to-float v2, v2

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/egg/LLand;->rlerp(FFF)F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/egg/LLand;->clamp(F)F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-static {v1, v4, v2}, Lcom/android/systemui/egg/LLand;->lerp(FFF)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/LLand$Player;->setRotation(F)V

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->prepareCheckIntersections()V

    goto :goto_0

    .line 744
    :cond_3
    iget v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->G:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    goto :goto_1

    .line 747
    :cond_4
    iget v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/egg/LLand$Player;->dv:F

    goto :goto_2
.end method

.method public unboost()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/LLand$Player;->mBoosting:Z

    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 775
    invoke-virtual {p0}, Lcom/android/systemui/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/egg/LLand;->access$200()Lcom/android/systemui/egg/LLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 780
    return-void
.end method
