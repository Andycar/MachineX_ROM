.class Landroid/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenFragmentViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/app/Fragment;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/View;Ljava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 13

    .prologue
    .line 1121
    iput-object p1, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iput-object p2, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    iput-object p3, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iput-object p5, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    iput-object p6, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/Transition;

    iput-object p7, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iput-boolean p8, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    iput-object p9, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    iput-object p11, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iput-object p12, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 8

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1127
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mContainerId:I

    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    # invokes: Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->access$000(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    .line 1130
    const/4 v5, 0x0

    .line 1131
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_5d

    .line 1132
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-boolean v2, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    # invokes: Landroid/app/BackStackRecord;->mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->access$100(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 1133
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->access$200(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1134
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1135
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1136
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    :goto_42
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->access$300(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1143
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    # invokes: Landroid/app/BackStackRecord;->setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    invoke-static {v0, v5, v1}, Landroid/app/BackStackRecord;->access$400(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    .line 1145
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    iget-boolean v4, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    # invokes: Landroid/app/BackStackRecord;->callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    invoke-static/range {v0 .. v5}, Landroid/app/BackStackRecord;->access$500(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    .line 1149
    :cond_5d
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_89

    .line 1150
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 1151
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_80

    .line 1152
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1153
    if-eqz v5, :cond_79

    .line 1154
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1156
    :cond_79
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    # invokes: Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->access$300(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1158
    :cond_80
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    # invokes: Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    invoke-static {v0, v1, v2}, Landroid/app/BackStackRecord;->access$600(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    .line 1160
    .end local v6    # "view":Landroid/view/View;
    :cond_89
    const/4 v0, 0x1

    return v0

    .line 1138
    :cond_8b
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_42
.end method
