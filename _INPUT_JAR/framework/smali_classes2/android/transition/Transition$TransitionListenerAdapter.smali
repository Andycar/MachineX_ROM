.class public Landroid/transition/Transition$TransitionListenerAdapter;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2312
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2308
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2316
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2320
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2304
    return-void
.end method
