.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mForcedEndVisibility:I

.field private mForcedStartVisibility:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 79
    iput v1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 80
    iput v1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v2, 0x3

    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    .line 79
    iput v3, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 80
    iput v3, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    .line 86
    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 88
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    if-eqz v1, :cond_1e

    .line 90
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    .line 92
    :cond_1e
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;I)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
    .param p2, "forcedVisibility"    # I

    .prologue
    .line 127
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2c

    .line 128
    move v1, p2

    .line 132
    .local v1, "visibility":I
    :goto_4
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 135
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void

    .line 130
    .end local v0    # "loc":[I
    .end local v1    # "visibility":I
    :cond_2c
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .restart local v1    # "visibility":I
    goto :goto_4
.end method

.method private getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .registers 10
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v5}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    .line 187
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 188
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 189
    if-eqz p1, :cond_6e

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 190
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 191
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 196
    :goto_35
    if-eqz p2, :cond_73

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 197
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 198
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 203
    :goto_5d
    if-eqz p1, :cond_a8

    if-eqz p2, :cond_a8

    .line 204
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_78

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_78

    .line 234
    :cond_6d
    :goto_6d
    return-object v0

    .line 193
    :cond_6e
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 194
    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_35

    .line 200
    :cond_73
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 201
    iput-object v5, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_5d

    .line 208
    :cond_78
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_90

    .line 209
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_87

    .line 210
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 211
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d

    .line 212
    :cond_87
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_6d

    .line 213
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 214
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d

    .line 217
    :cond_90
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_6d

    .line 218
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_9f

    .line 219
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 220
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d

    .line 221
    :cond_9f
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6d

    .line 222
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 223
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d

    .line 227
    :cond_a8
    if-nez p1, :cond_b3

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_b3

    .line 228
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 229
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d

    .line 230
    :cond_b3
    if-nez p2, :cond_6d

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_6d

    .line 231
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 232
    iput-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_6d
.end method


# virtual methods
.method areValuesChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 6
    .param p1, "oldValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 488
    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 491
    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_16

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_9

    :cond_16
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 146
    iget v0, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    .line 147
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 141
    iget v0, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    .line 142
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 240
    invoke-direct {p0, p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 241
    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v0, :cond_2e

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 243
    :cond_10
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_21

    .line 244
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 252
    :goto_20
    return-object v0

    .line 247
    :cond_21
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_20

    .line 252
    :cond_2e
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public forceVisibility(IZ)V
    .registers 3
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    .line 152
    if-eqz p2, :cond_5

    .line 153
    iput p1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    .line 157
    :goto_4
    return-void

    .line 155
    :cond_5
    iput p1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    goto :goto_4
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .registers 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 175
    if-nez p1, :cond_4

    .line 181
    :goto_3
    return v3

    .line 178
    :cond_4
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 181
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_23

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    :goto_21
    move v3, v2

    goto :goto_3

    :cond_23
    move v2, v3

    goto :goto_21
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 276
    iget v5, p0, Landroid/transition/Visibility;->mMode:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    if-nez p4, :cond_c

    .line 291
    :cond_b
    :goto_b
    return-object v4

    .line 279
    :cond_c
    if-nez p2, :cond_27

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 282
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    .line 284
    .local v3, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 285
    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-direct {p0, v3, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v2

    .line 287
    iget-boolean v5, v2, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v5, :cond_b

    .line 291
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v2    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v3    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_27
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_b
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 33
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 352
    const/4 v5, 0x0

    .line 482
    :cond_11
    :goto_11
    return-object v5

    .line 355
    :cond_12
    if-eqz p2, :cond_a9

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v23, v0

    .line 356
    .local v23, "startView":Landroid/view/View;
    :goto_1a
    if-eqz p4, :cond_ad

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 357
    .local v7, "endView":Landroid/view/View;
    :goto_20
    const/16 v16, 0x0

    .line 358
    .local v16, "overlayView":Landroid/view/View;
    const/16 v24, 0x0

    .line 359
    .local v24, "viewToKeep":Landroid/view/View;
    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_126

    .line 360
    :cond_2c
    if-eqz v7, :cond_b0

    .line 362
    move-object/from16 v16, v7

    .line 405
    :cond_30
    :goto_30
    move/from16 v11, p5

    .line 406
    .local v11, "finalVisibility":I
    move-object/from16 v9, p1

    .line 408
    .local v9, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v16, :cond_150

    .line 410
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v25, v0

    const-string v26, "android:visibility:screenLocation"

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    move-object/from16 v18, v25

    check-cast v18, [I

    .line 411
    .local v18, "screenLoc":[I
    const/16 v25, 0x0

    aget v19, v18, v25

    .line 412
    .local v19, "screenX":I
    const/16 v25, 0x1

    aget v20, v18, v25

    .line 413
    .local v20, "screenY":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 414
    .local v14, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 415
    const/16 v25, 0x0

    aget v25, v14, v25

    sub-int v25, v19, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 416
    const/16 v25, 0x1

    aget v25, v14, v25

    sub-int v25, v20, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 419
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_13e

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto/16 :goto_11

    .line 355
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v7    # "endView":Landroid/view/View;
    .end local v9    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v14    # "loc":[I
    .end local v16    # "overlayView":Landroid/view/View;
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    .end local v23    # "startView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    :cond_a9
    const/16 v23, 0x0

    goto/16 :goto_1a

    .line 356
    .restart local v23    # "startView":Landroid/view/View;
    :cond_ad
    const/4 v7, 0x0

    goto/16 :goto_20

    .line 363
    .restart local v7    # "endView":Landroid/view/View;
    .restart local v16    # "overlayView":Landroid/view/View;
    .restart local v24    # "viewToKeep":Landroid/view/View;
    :cond_b0
    if-eqz v23, :cond_30

    .line 367
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_bc

    .line 369
    move-object/from16 v16, v23

    goto/16 :goto_30

    .line 370
    :cond_bc
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/view/View;

    move/from16 v25, v0

    if-eqz v25, :cond_30

    .line 371
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 372
    .local v21, "startParent":Landroid/view/View;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v22

    .line 373
    .local v22, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v6

    .line 375
    .local v6, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v17

    .line 377
    .local v17, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_102

    .line 378
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_30

    .line 380
    :cond_102
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_30

    .line 381
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v12

    .line 382
    .local v12, "id":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_30

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v25, v0

    if-eqz v25, :cond_30

    .line 387
    move-object/from16 v16, v23

    goto/16 :goto_30

    .line 394
    .end local v6    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v17    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v21    # "startParent":Landroid/view/View;
    .end local v22    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_126
    const/16 v25, 0x4

    move/from16 v0, p5

    move/from16 v1, v25

    if-ne v0, v1, :cond_132

    .line 395
    move-object/from16 v24, v7

    goto/16 :goto_30

    .line 398
    :cond_132
    move-object/from16 v0, v23

    if-ne v0, v7, :cond_13a

    .line 399
    move-object/from16 v24, v7

    goto/16 :goto_30

    .line 401
    :cond_13a
    move-object/from16 v16, v23

    goto/16 :goto_30

    .line 422
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v9    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v14    # "loc":[I
    .restart local v18    # "screenLoc":[I
    .restart local v19    # "screenX":I
    .restart local v20    # "screenY":I
    :cond_13e
    move-object/from16 v8, v16

    .line 423
    .local v8, "finalOverlayView":Landroid/view/View;
    new-instance v25, Landroid/transition/Visibility$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v8}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_11

    .line 433
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "finalOverlayView":Landroid/view/View;
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_150
    if-eqz v24, :cond_1a8

    .line 434
    const/4 v15, -0x1

    .line 435
    .local v15, "originalVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_19d

    :cond_16f
    const/4 v13, 0x1

    .line 437
    .local v13, "isForcedVisibility":Z
    :goto_170
    if-nez v13, :cond_17b

    .line 438
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v15

    .line 439
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_17b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 442
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_19f

    .line 443
    move-object/from16 v10, v24

    .line 444
    .local v10, "finalViewToKeep":Landroid/view/View;
    new-instance v25, Landroid/transition/Visibility$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v10, v11}, Landroid/transition/Visibility$2;-><init>(Landroid/transition/Visibility;ZLandroid/view/View;I)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_11

    .line 435
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v10    # "finalViewToKeep":Landroid/view/View;
    .end local v13    # "isForcedVisibility":Z
    :cond_19d
    const/4 v13, 0x0

    goto :goto_170

    .line 477
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v13    # "isForcedVisibility":Z
    :cond_19f
    if-nez v13, :cond_11

    .line 478
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 482
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    .end local v15    # "originalVisibility":I
    :cond_1a8
    const/4 v5, 0x0

    goto/16 :goto_11
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 103
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_c

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_c
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 107
    return-void
.end method
