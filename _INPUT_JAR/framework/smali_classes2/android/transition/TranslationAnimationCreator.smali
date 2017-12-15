.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$1;,
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .registers 22
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 53
    .local v7, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 54
    .local v8, "terminalY":F
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v4, 0x1020045

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v12, v3

    check-cast v12, [I

    .line 55
    .local v12, "startPosition":[I
    if-eqz v12, :cond_27

    .line 56
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int/2addr v3, p2

    int-to-float v3, v3

    add-float p4, v3, v7

    .line 57
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float p5, v3, v8

    .line 60
    :cond_27
    sub-float v3, p4, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v5, p2, v3

    .line 61
    .local v5, "startPosX":I
    sub-float v3, p5, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, p3, v3

    .line 63
    .local v6, "startPosY":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 64
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 65
    cmpl-float v3, p4, p6

    if-nez v3, :cond_4b

    cmpl-float v3, p5, p7

    if-nez v3, :cond_4b

    .line 66
    const/4 v10, 0x0

    .line 79
    :goto_4a
    return-object v10

    .line 68
    :cond_4b
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 69
    .local v11, "path":Landroid/graphics/Path;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 74
    .local v10, "anim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V

    .line 76
    .local v2, "listener":Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 78
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4a
.end method
