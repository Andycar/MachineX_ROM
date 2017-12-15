.class public Lcom/android/internal/transition/ActionBarTransition;
.super Ljava/lang/Object;
.source "ActionBarTransition.java"


# static fields
.field private static TRANSITIONS_ENABLED:Z = false

.field private static final TRANSITION_DURATION:I = 0x78

.field private static final sTransition:Landroid/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 30
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    .line 37
    sget-boolean v3, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v3, :cond_48

    .line 38
    new-instance v1, Landroid/transition/ChangeText;

    invoke-direct {v1}, Landroid/transition/ChangeText;-><init>()V

    .line 39
    .local v1, "tc":Landroid/transition/ChangeText;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    .line 40
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 41
    .local v0, "inner":Landroid/transition/TransitionSet;
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 42
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 43
    .local v2, "tg":Landroid/transition/TransitionSet;
    new-instance v3, Landroid/transition/Fade;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Landroid/transition/Fade;

    invoke-direct {v4, v5}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 45
    invoke-virtual {v2, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 46
    const-wide/16 v4, 0x78

    invoke-virtual {v2, v4, v5}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 47
    sput-object v2, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    .line 51
    :goto_47
    return-void

    .line 49
    .end local v0    # "inner":Landroid/transition/TransitionSet;
    .end local v1    # "tc":Landroid/transition/ChangeText;
    .end local v2    # "tg":Landroid/transition/TransitionSet;
    :cond_48
    const/4 v3, 0x0

    sput-object v3, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    goto :goto_47
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/transition/ActionBarTransition;->TRANSITIONS_ENABLED:Z

    if-eqz v0, :cond_9

    .line 55
    sget-object v0, Lcom/android/internal/transition/ActionBarTransition;->sTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 57
    :cond_9
    return-void
.end method
