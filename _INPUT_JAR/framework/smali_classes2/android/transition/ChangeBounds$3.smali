.class Landroid/transition/ChangeBounds$3;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 289
    iput-object p1, p0, Landroid/transition/ChangeBounds$3;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$3;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 294
    iget-object v0, p0, Landroid/transition/ChangeBounds$3;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$3;->mCanceled:Z

    .line 296
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$3;->mCanceled:Z

    if-nez v0, :cond_a

    .line 301
    iget-object v0, p0, Landroid/transition/ChangeBounds$3;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 303
    :cond_a
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 307
    iget-object v0, p0, Landroid/transition/ChangeBounds$3;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 308
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 312
    iget-object v0, p0, Landroid/transition/ChangeBounds$3;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 313
    return-void
.end method
