.class Landroid/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenViews:Ljava/util/ArrayList;

.field final synthetic val$nonExistingView:Landroid/view/View;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .registers 12

    .prologue
    .line 1366
    iput-object p1, p0, Landroid/app/BackStackRecord$2;->this$0:Landroid/app/BackStackRecord;

    iput-object p2, p0, Landroid/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    iput-object p5, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    iput-object p7, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iput-object p9, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1369
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1370
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v2, :cond_1c

    .line 1371
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1372
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$enteringViews:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->access$200(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1374
    :cond_1c
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    if-eqz v2, :cond_27

    .line 1375
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$exitingViews:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->access$200(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1377
    :cond_27
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    if-eqz v2, :cond_32

    .line 1378
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Landroid/app/BackStackRecord;->access$200(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1380
    :cond_32
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1381
    .local v1, "numViews":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, v1, :cond_4b

    .line 1382
    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$hiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1381
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1384
    :cond_4b
    iget-object v2, p0, Landroid/app/BackStackRecord$2;->val$overallTransition:Landroid/transition/Transition;

    iget-object v3, p0, Landroid/app/BackStackRecord$2;->val$nonExistingView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1385
    const/4 v2, 0x1

    return v2
.end method
