.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:clipBounds:clip"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 8
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 55
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 65
    :cond_b
    :goto_b
    return-void

    .line 59
    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 60
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    if-nez v1, :cond_b

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 75
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 70
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 80
    if-eqz p2, :cond_19

    if-eqz p3, :cond_19

    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 102
    :cond_19
    :goto_19
    return-object v3

    .line 85
    :cond_1a
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 86
    .local v2, "start":Landroid/graphics/Rect;
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 87
    .local v0, "end":Landroid/graphics/Rect;
    if-nez v2, :cond_32

    if-eqz v0, :cond_19

    .line 91
    :cond_32
    if-nez v2, :cond_65

    .line 92
    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "start":Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    .line 96
    .restart local v2    # "start":Landroid/graphics/Rect;
    :cond_3e
    :goto_3e
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 100
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 101
    new-instance v1, Landroid/animation/RectEvaluator;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v3}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 102
    .local v1, "evaluator":Landroid/animation/RectEvaluator;
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const-string v4, "clipBounds"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_19

    .line 93
    .end local v1    # "evaluator":Landroid/animation/RectEvaluator;
    :cond_65
    if-nez v0, :cond_3e

    .line 94
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:clipBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "end":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .restart local v0    # "end":Landroid/graphics/Rect;
    goto :goto_3e
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
