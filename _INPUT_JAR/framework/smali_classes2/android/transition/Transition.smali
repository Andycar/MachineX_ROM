.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$EpicenterCallback;,
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$TransitionListenerAdapter;,
        Landroid/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field mNameOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field private mPathMotion:Landroid/transition/PathMotion;

.field mPaused:Z

.field mPropagation:Landroid/transition/TransitionPropagation;

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 165
    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0}, Landroid/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    .line 199
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    .line 158
    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 177
    iput-wide v4, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 178
    iput-wide v4, p0, Landroid/transition/Transition;->mDuration:J

    .line 179
    iput-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 182
    iput-object v1, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 183
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 184
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 185
    iput-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 192
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    iput-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 194
    sget-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 203
    iput-object v1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 211
    iput-boolean v2, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 219
    iput v2, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 222
    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    .line 226
    iput-boolean v2, p0, Landroid/transition/Transition;->mEnded:Z

    .line 229
    iput-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 248
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 177
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 178
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Landroid/transition/Transition;->mDuration:J

    .line 179
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 182
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 183
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 184
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 185
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 186
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 187
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 188
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 189
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 190
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 191
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 192
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 194
    sget-object v5, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v5, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 203
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 211
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 219
    const/4 v5, 0x0

    iput v5, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 222
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/transition/Transition;->mPaused:Z

    .line 226
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/transition/Transition;->mEnded:Z

    .line 229
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 248
    sget-object v5, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v5, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 269
    sget-object v5, Lcom/android/internal/R$styleable;->Transition:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v2, v5

    .line 271
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-ltz v5, :cond_90

    .line 272
    invoke-virtual {p0, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 274
    :cond_90
    const/4 v5, 0x2

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v6, v5

    .line 275
    .local v6, "startDelay":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a0

    .line 276
    invoke-virtual {p0, v6, v7}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 278
    :cond_a0
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 279
    .local v4, "resID":I
    if-lez v4, :cond_af

    .line 280
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 282
    :cond_af
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "matchOrder":Ljava/lang/String;
    if-eqz v1, :cond_bd

    .line 284
    invoke-static {v1}, Landroid/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->setMatchOrder([I)V

    .line 286
    :cond_bd
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    return-void
.end method

.method static synthetic access$000(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/transition/Transition;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v3, 0x0

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 628
    iget-object v1, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 633
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 634
    iget-object v1, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v1, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 637
    :cond_31
    return-void
.end method

.method static addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V
    .registers 12
    .param p0, "transitionValuesMaps"    # Landroid/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v8, 0x0

    .line 1473
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1475
    .local v1, "id":I
    if-ltz v1, :cond_19

    .line 1476
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_68

    .line 1478
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1483
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1484
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2c

    .line 1485
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1487
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_67

    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 1494
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1495
    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1496
    .local v6, "position":I
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1497
    .local v2, "itemId":J
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_74

    .line 1499
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1500
    .local v0, "alreadyMatched":Landroid/view/View;
    if-eqz v0, :cond_67

    .line 1501
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1502
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1510
    .end local v0    # "alreadyMatched":Landroid/view/View;
    .end local v2    # "itemId":J
    .end local v4    # "listview":Landroid/widget/ListView;
    .end local v6    # "position":I
    :cond_67
    :goto_67
    return-void

    .line 1480
    .end local v5    # "name":Ljava/lang/String;
    :cond_68
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 1489
    .restart local v5    # "name":Ljava/lang/String;
    :cond_6e
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 1505
    .restart local v2    # "itemId":J
    .restart local v4    # "listview":Landroid/widget/ListView;
    .restart local v6    # "position":I
    :cond_74
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1506
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_67
.end method

.method private static alreadyContains([II)Z
    .registers 5
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .prologue
    .line 513
    aget v1, p0, p1

    .line 514
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_e

    .line 515
    aget v2, p0, v0

    if-ne v2, v1, :cond_b

    .line 516
    const/4 v2, 0x1

    .line 519
    :goto_a
    return v2

    .line 514
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 519
    :cond_e
    const/4 v2, 0x0

    goto :goto_a
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1544
    if-nez p1, :cond_3

    .line 1599
    :cond_2
    return-void

    .line 1547
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1548
    .local v1, "id":I
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1551
    :cond_17
    iget-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_23

    iget-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1554
    :cond_23
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_43

    if-eqz p1, :cond_43

    .line 1555
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1556
    .local v2, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v2, :cond_43

    .line 1557
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1556
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1562
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_66

    .line 1563
    new-instance v4, Landroid/transition/TransitionValues;

    invoke-direct {v4}, Landroid/transition/TransitionValues;-><init>()V

    .line 1564
    .local v4, "values":Landroid/transition/TransitionValues;
    iput-object p1, v4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1565
    if-eqz p2, :cond_a4

    .line 1566
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1570
    :goto_57
    iget-object v5, v4, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1572
    if-eqz p2, :cond_a8

    .line 1573
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, p1, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1578
    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_66
    :goto_66
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1580
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_7a

    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1583
    :cond_7a
    iget-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_86

    iget-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1586
    :cond_86
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_ae

    .line 1587
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1588
    .restart local v2    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_91
    if-ge v0, v2, :cond_ae

    .line 1589
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1568
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    .restart local v4    # "values":Landroid/transition/TransitionValues;
    :cond_a4
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_57

    .line 1575
    :cond_a8
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, p1, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_66

    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_ae
    move-object v3, p1

    .line 1594
    check-cast v3, Landroid/view/ViewGroup;

    .line 1595
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1596
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1210
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_8

    .line 1211
    if-eqz p2, :cond_9

    .line 1212
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1217
    :cond_8
    :goto_8
    return-object p0

    .line 1214
    :cond_9
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_8
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 839
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_14

    .line 840
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 841
    .restart local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 843
    :cond_14
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3
    .param p0, "match"    # I

    .prologue
    const/4 v0, 0x1

    .line 509
    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 7
    .param p0, "oldValues"    # Landroid/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1793
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1794
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1796
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v2, :cond_12

    if-nez v1, :cond_12

    .line 1798
    const/4 v0, 0x0

    .line 1811
    .local v0, "changed":Z
    :goto_11
    return v0

    .line 1799
    .end local v0    # "changed":Z
    :cond_12
    if-eqz v2, :cond_16

    if-nez v1, :cond_18

    .line 1801
    :cond_16
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_11

    .line 1804
    .end local v0    # "changed":Z
    :cond_18
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    :goto_1f
    goto :goto_11

    .end local v0    # "changed":Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 575
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_4a

    .line 576
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 577
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_47

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 578
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 579
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_47

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 580
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 581
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 582
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v0, :cond_47

    .line 583
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 591
    .end local v5    # "startView":Landroid/view/View;
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_29

    .line 529
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 530
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 531
    .local v0, "end":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_26

    .line 532
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 533
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 537
    .end local v0    # "end":Landroid/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_29
    return-void
.end method

.method private matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 548
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_3e

    .line 549
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 550
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_3b

    .line 551
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {p4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 552
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_3b

    .line 553
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 554
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 555
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_3b

    if-eqz v0, :cond_3b

    .line 556
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 564
    .end local v5    # "startView":Landroid/view/View;
    :cond_3e
    return-void
.end method

.method private matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 602
    .local v3, "numStartNames":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_4a

    .line 603
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 604
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_47

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 605
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 606
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_47

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 607
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 608
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 609
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v0, :cond_47

    .line 610
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 618
    .end local v5    # "startView":Landroid/view/View;
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .registers 8
    .param p1, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .prologue
    .line 641
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 643
    .local v2, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v3, p2, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v1, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 646
    .local v1, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3a

    .line 647
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_3e

    .line 646
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 649
    :pswitch_1e
    invoke-direct {p0, v2, v1}, Landroid/transition/Transition;->matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_1b

    .line 652
    :pswitch_22
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_1b

    .line 656
    :pswitch_2a
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1b

    .line 660
    :pswitch_32
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    goto :goto_1b

    .line 665
    :cond_3a
    invoke-direct {p0, v2, v1}, Landroid/transition/Transition;->addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 666
    return-void

    .line 647
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 9
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 290
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [I

    .line 292
    .local v1, "matches":[I
    const/4 v0, 0x0

    .line 293
    .local v0, "index":I
    :goto_10
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 294
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "token":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 296
    const/4 v5, 0x3

    aput v5, v1, v0

    .line 313
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 314
    goto :goto_10

    .line 297
    :cond_2c
    const-string v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 298
    const/4 v5, 0x1

    aput v5, v1, v0

    goto :goto_29

    .line 299
    :cond_38
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 300
    aput v7, v1, v0

    goto :goto_29

    .line 301
    :cond_43
    const-string/jumbo v5, "viewName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 302
    aput v7, v1, v0

    goto :goto_29

    .line 303
    :cond_4f
    const-string v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 304
    const/4 v5, 0x4

    aput v5, v1, v0

    goto :goto_29

    .line 305
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 306
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 307
    .local v2, "smallerMatches":[I
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 308
    move-object v1, v2

    .line 309
    add-int/lit8 v0, v0, -0x1

    .line 310
    goto :goto_29

    .line 311
    .end local v2    # "smallerMatches":[I
    :cond_6d
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown match type in matchOrder: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 315
    .end local v4    # "token":Ljava/lang/String;
    :cond_8c
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 876
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 887
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 889
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1942
    :cond_b
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .prologue
    .line 968
    if-lez p1, :cond_b

    .line 969
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 1024
    if-eqz p1, :cond_12

    .line 1025
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1028
    :cond_d
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    :cond_12
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 992
    if-eqz p1, :cond_12

    .line 993
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 996
    :cond_d
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_12
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v2, 0x0

    .line 1826
    if-nez p1, :cond_8

    .line 1827
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 1847
    :goto_7
    return-void

    .line 1829
    :cond_8
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 1830
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1832
    :cond_17
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    .line 1833
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1835
    :cond_2b
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1836
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1838
    :cond_38
    new-instance v0, Landroid/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/transition/Transition$3;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1845
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_7
.end method

.method areValuesChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 10
    .param p1, "oldValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 1766
    const/4 v5, 0x0

    .line 1769
    .local v5, "valuesChanged":Z
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 1770
    invoke-virtual {p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v4

    .line 1771
    .local v4, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 1772
    array-length v0, v4

    .line 1773
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 1774
    aget-object v6, v4, v1

    invoke-static {p1, p2, v6}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1775
    const/4 v5, 0x1

    .line 1788
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "properties":[Ljava/lang/String;
    :cond_18
    :goto_18
    return v5

    .line 1773
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "properties":[Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1780
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1c
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1781
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1782
    const/4 v5, 0x1

    .line 1783
    goto :goto_18
.end method

.method public canRemoveViews()Z
    .registers 2

    .prologue
    .line 2145
    iget-boolean v0, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    return v0
.end method

.method protected cancel()V
    .registers 7

    .prologue
    .line 1915
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1916
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1917
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1918
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1916
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1920
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_18
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 1921
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1923
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1924
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v3, :cond_3f

    .line 1925
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    .line 1924
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1928
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_3f
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .registers 7
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 2117
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v3, :cond_14

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2118
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v3}, Landroid/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v2

    .line 2119
    .local v2, "propertyNames":[Ljava/lang/String;
    if-nez v2, :cond_15

    .line 2133
    .end local v2    # "propertyNames":[Ljava/lang/String;
    :cond_14
    :goto_14
    return-void

    .line 2122
    .restart local v2    # "propertyNames":[Ljava/lang/String;
    :cond_15
    const/4 v0, 0x1

    .line 2123
    .local v0, "containsAll":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v3, v2

    if-ge v1, v3, :cond_25

    .line 2124
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2125
    const/4 v0, 0x0

    .line 2129
    :cond_25
    if-nez v0, :cond_14

    .line 2130
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v3, p1}, Landroid/transition/TransitionPropagation;->captureValues(Landroid/transition/TransitionValues;)V

    goto :goto_14

    .line 2123
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 1410
    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 1411
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_13

    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a7

    :cond_13
    iget-object v8, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a7

    :cond_1f
    iget-object v8, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 1414
    :cond_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6e

    .line 1415
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1416
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1417
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_61

    .line 1418
    new-instance v6, Landroid/transition/TransitionValues;

    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    .line 1419
    .local v6, "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1420
    if-eqz p2, :cond_64

    .line 1421
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1425
    :goto_52
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1427
    if-eqz p2, :cond_68

    .line 1428
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1414
    .end local v6    # "values":Landroid/transition/TransitionValues;
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1423
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    :cond_64
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_52

    .line 1430
    :cond_68
    iget-object v8, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_61

    .line 1434
    .end local v2    # "id":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_aa

    .line 1435
    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1436
    .restart local v7    # "view":Landroid/view/View;
    new-instance v6, Landroid/transition/TransitionValues;

    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    .line 1437
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1438
    if-eqz p2, :cond_9d

    .line 1439
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1443
    :goto_8b
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1445
    if-eqz p2, :cond_a1

    .line 1446
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1434
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 1441
    :cond_9d
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_8b

    .line 1448
    :cond_a1
    iget-object v8, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_9a

    .line 1452
    .end local v1    # "i":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_a7
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1454
    :cond_aa
    if-nez p2, :cond_f1

    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    if-eqz v8, :cond_f1

    .line 1455
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1456
    .local v3, "numOverrides":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1457
    .local v4, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_bc
    if-ge v1, v3, :cond_d4

    .line 1458
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1459
    .local v0, "fromName":Ljava/lang/String;
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 1461
    .end local v0    # "fromName":Ljava/lang/String;
    :cond_d4
    const/4 v1, 0x0

    :goto_d5
    if-ge v1, v3, :cond_f1

    .line 1462
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1463
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_ee

    .line 1464
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1465
    .local v5, "toName":Ljava/lang/String;
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .end local v5    # "toName":Ljava/lang/String;
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 1469
    .end local v1    # "i":I
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "view":Landroid/view/View;
    :cond_f1
    return-void
.end method

.method clearValues(Z)V
    .registers 4
    .param p1, "start"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1518
    if-eqz p1, :cond_22

    .line 1519
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1520
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1521
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1522
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1523
    iput-object v1, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1531
    :goto_21
    return-void

    .line 1525
    :cond_22
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1526
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1527
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1528
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1529
    iput-object v1, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_21
.end method

.method public clone()Landroid/transition/Transition;
    .registers 4

    .prologue
    .line 2172
    const/4 v1, 0x0

    .line 2174
    .local v1, "clone":Landroid/transition/Transition;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 2175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2176
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 2177
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 2178
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2179
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_24} :catch_25

    .line 2182
    :goto_24
    return-object v1

    .line 2180
    :catch_25
    move-exception v2

    goto :goto_24
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 38
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v25

    .line 686
    .local v25, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const-wide v20, 0x7fffffffffffffffL

    .line 687
    .local v20, "minStartDelay":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 688
    .local v19, "minAnimator":I
    new-instance v27, Landroid/util/SparseLongArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseLongArray;-><init>()V

    .line 689
    .local v27, "startDelays":Landroid/util/SparseLongArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 690
    .local v28, "startValuesListCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1b
    move/from16 v0, v28

    if-ge v15, v0, :cond_151

    .line 691
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/transition/TransitionValues;

    .line 692
    .local v26, "start":Landroid/transition/TransitionValues;
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/transition/TransitionValues;

    .line 693
    .local v14, "end":Landroid/transition/TransitionValues;
    if-eqz v26, :cond_3f

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 694
    const/16 v26, 0x0

    .line 696
    :cond_3f
    if-eqz v14, :cond_4c

    iget-object v6, v14, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 697
    const/4 v14, 0x0

    .line 699
    :cond_4c
    if-nez v26, :cond_53

    if-nez v14, :cond_53

    .line 690
    :cond_50
    :goto_50
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 703
    :cond_53
    if-eqz v26, :cond_61

    if-eqz v14, :cond_61

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/transition/Transition;->areValuesChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v6

    if-eqz v6, :cond_b6

    :cond_61
    const/16 v17, 0x1

    .line 704
    .local v17, "isChanged":Z
    :goto_63
    if-eqz v17, :cond_50

    .line 723
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v14}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v11

    .line 724
    .local v11, "animator":Landroid/animation/Animator;
    if-eqz v11, :cond_50

    .line 726
    const/4 v5, 0x0

    .line 727
    .local v5, "view":Landroid/view/View;
    const/4 v9, 0x0

    .line 728
    .local v9, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v14, :cond_148

    .line 729
    iget-object v5, v14, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v24

    .line 731
    .local v24, "properties":[Ljava/lang/String;
    if-eqz v5, :cond_fe

    if-eqz v24, :cond_fe

    move-object/from16 v0, v24

    array-length v6, v0

    if-lez v6, :cond_fe

    .line 732
    new-instance v9, Landroid/transition/TransitionValues;

    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    invoke-direct {v9}, Landroid/transition/TransitionValues;-><init>()V

    .line 733
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    iput-object v5, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 734
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/transition/TransitionValues;

    .line 735
    .local v22, "newValues":Landroid/transition/TransitionValues;
    if-eqz v22, :cond_b9

    .line 736
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_99
    move-object/from16 v0, v24

    array-length v6, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_b9

    .line 737
    iget-object v6, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v7, v24, v18

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v29, v24, v18

    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    add-int/lit8 v18, v18, 0x1

    goto :goto_99

    .line 703
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v17    # "isChanged":Z
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_b6
    const/16 v17, 0x0

    goto :goto_63

    .line 741
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v17    # "isChanged":Z
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_b9
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 742
    .local v23, "numExistingAnims":I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_bf
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_fe

    .line 743
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 744
    .local v10, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 745
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    if-eqz v6, :cond_144

    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-ne v6, v5, :cond_144

    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_e9

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f5

    :cond_e9
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 748
    :cond_f5
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    invoke-virtual {v6, v9}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 750
    const/4 v11, 0x0

    .line 759
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_fe
    :goto_fe
    if-eqz v11, :cond_50

    .line 760
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v6, :cond_127

    .line 761
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J

    move-result-wide v12

    .line 763
    .local v12, "delay":J
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 764
    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 766
    .end local v12    # "delay":J
    :cond_127
    new-instance v4, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v8

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V

    .line 768
    .restart local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    .line 742
    .restart local v10    # "anim":Landroid/animation/Animator;
    .restart local v18    # "j":I
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v23    # "numExistingAnims":I
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_144
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_bf

    .line 757
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_148
    if-eqz v26, :cond_14f

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_14e
    goto :goto_fe

    :cond_14f
    const/4 v5, 0x0

    goto :goto_14e

    .line 774
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v14    # "end":Landroid/transition/TransitionValues;
    .end local v17    # "isChanged":Z
    .end local v26    # "start":Landroid/transition/TransitionValues;
    :cond_151
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-eqz v6, :cond_184

    .line 775
    const/4 v15, 0x0

    :goto_158
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-ge v15, v6, :cond_184

    .line 776
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v16

    .line 777
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 778
    .restart local v11    # "animator":Landroid/animation/Animator;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v11}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v30

    add-long v12, v6, v30

    .line 779
    .restart local v12    # "delay":J
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 775
    add-int/lit8 v15, v15, 0x1

    goto :goto_158

    .line 782
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "delay":J
    .end local v16    # "index":I
    :cond_184
    return-void
.end method

.method protected end()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1883
    iget v4, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1884
    iget v4, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v4, :cond_6f

    .line 1885
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_32

    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 1886
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1888
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1889
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    if-ge v0, v1, :cond_32

    .line 1890
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 1889
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1893
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    .line 1894
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1895
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4c

    .line 1896
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1893
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1899
    .end local v3    # "view":Landroid/view/View;
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_6c

    .line 1900
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1901
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_69

    .line 1902
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1899
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1905
    .end local v3    # "view":Landroid/view/View;
    :cond_6c
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1907
    .end local v0    # "i":I
    :cond_6f
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 1147
    if-ltz p1, :cond_e

    .line 1148
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1150
    :cond_e
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 1201
    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1202
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1270
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 1089
    if-ltz p1, :cond_e

    .line 1090
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1092
    :cond_e
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1176
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1243
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1118
    return-object p0
.end method

.method public forceVisibility(IZ)V
    .registers 3
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    .line 2163
    return-void
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 342
    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1999
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_6

    .line 2000
    const/4 v0, 0x0

    .line 2002
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5
.end method

.method public getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;
    .registers 2

    .prologue
    .line 1988
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1627
    iget-object v7, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v7, :cond_c

    .line 1628
    iget-object v6, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v6, p1, p2}, Landroid/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v5

    .line 1651
    :cond_b
    :goto_b
    return-object v5

    .line 1630
    :cond_c
    if-eqz p2, :cond_14

    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1631
    .local v3, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_10
    if-nez v3, :cond_17

    move-object v5, v6

    .line 1632
    goto :goto_b

    .line 1630
    .end local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_14
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_10

    .line 1634
    .restart local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1635
    .local v0, "count":I
    const/4 v2, -0x1

    .line 1636
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_2e

    .line 1637
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 1638
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_29

    move-object v5, v6

    .line 1639
    goto :goto_b

    .line 1641
    :cond_29
    iget-object v7, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v7, p1, :cond_3c

    .line 1642
    move v2, v1

    .line 1646
    .end local v5    # "values":Landroid/transition/TransitionValues;
    :cond_2e
    const/4 v5, 0x0

    .line 1647
    .restart local v5    # "values":Landroid/transition/TransitionValues;
    if-ltz v2, :cond_b

    .line 1648
    if-eqz p2, :cond_3f

    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1649
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/transition/TransitionValues;
    check-cast v5, Landroid/transition/TransitionValues;

    .restart local v5    # "values":Landroid/transition/TransitionValues;
    goto :goto_b

    .line 1636
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1648
    :cond_3f
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_35
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2198
    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOverrides()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2159
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPathMotion()Landroid/transition/PathMotion;
    .registers 2

    .prologue
    .line 2081
    iget-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/transition/TransitionPropagation;
    .registers 2

    .prologue
    .line 2109
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 369
    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetViewNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1608
    iget-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v1, :cond_b

    .line 1609
    iget-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v1, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 1612
    :goto_a
    return-object v1

    .line 1611
    :cond_b
    if-eqz p2, :cond_18

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 1612
    .local v0, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_f
    iget-object v1, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    goto :goto_a

    .line 1611
    .end local v0    # "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :cond_18
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_f
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 10
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 796
    .local v2, "targetId":I
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    iget-object v4, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v5

    .line 834
    :goto_17
    return v4

    .line 799
    :cond_18
    iget-object v4, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v4, v5

    .line 800
    goto :goto_17

    .line 802
    :cond_26
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_48

    if-eqz p1, :cond_48

    .line 803
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 804
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    if-ge v0, v1, :cond_48

    .line 805
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 806
    .local v3, "type":Ljava/lang/Class;
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v4, v5

    .line 807
    goto :goto_17

    .line 804
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 811
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v3    # "type":Ljava/lang/Class;
    :cond_48
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_62

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 812
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    move v4, v5

    .line 813
    goto :goto_17

    .line 816
    :cond_62
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8c

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8c

    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_7e

    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8c

    :cond_7e
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_8a

    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8c

    :cond_8a
    move v4, v6

    .line 819
    goto :goto_17

    .line 821
    :cond_8c
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    :cond_a0
    move v4, v6

    .line 822
    goto/16 :goto_17

    .line 824
    :cond_a3
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_b6

    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    move v4, v6

    .line 825
    goto/16 :goto_17

    .line 827
    :cond_b6
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_d7

    .line 828
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bb
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_d7

    .line 829
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    move v4, v6

    .line 830
    goto/16 :goto_17

    .line 828
    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .end local v0    # "i":I
    :cond_d7
    move v4, v5

    .line 834
    goto/16 :goto_17
.end method

.method public pause(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 1662
    iget-boolean v8, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v8, :cond_60

    .line 1663
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1664
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1665
    .local v4, "numOldAnims":I
    if-eqz p1, :cond_36

    .line 1666
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v7

    .line 1667
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_36

    .line 1668
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    .line 1669
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_33

    if-eqz v7, :cond_33

    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1670
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1671
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    .line 1667
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1675
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_36
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5d

    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5d

    .line 1676
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1678
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1679
    .local v3, "numListeners":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4f
    if-ge v1, v3, :cond_5d

    .line 1680
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1683
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_5d
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1685
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    :cond_60
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 20
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1726
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1728
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/transition/Transition;->matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    .line 1730
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v15

    .line 1731
    .local v15, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1732
    .local v11, "numOldAnims":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v17

    .line 1733
    .local v17, "windowId":Landroid/view/WindowId;
    add-int/lit8 v10, v11, -0x1

    .local v10, "i":I
    :goto_2d
    if-ltz v10, :cond_82

    .line 1734
    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    .line 1735
    .local v7, "anim":Landroid/animation/Animator;
    if-eqz v7, :cond_79

    .line 1736
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/transition/Transition$AnimationInfo;

    .line 1737
    .local v12, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v12, :cond_79

    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v1, :cond_79

    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_79

    .line 1738
    iget-object v13, v12, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1739
    .local v13, "oldValues":Landroid/transition/TransitionValues;
    iget-object v14, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1740
    .local v14, "oldView":Landroid/view/View;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v16

    .line 1741
    .local v16, "startValues":Landroid/transition/TransitionValues;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v9

    .line 1742
    .local v9, "endValues":Landroid/transition/TransitionValues;
    if-nez v16, :cond_5f

    if-eqz v9, :cond_7c

    :cond_5f
    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    invoke-virtual {v1, v13, v9}, Landroid/transition/Transition;->areValuesChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v8, 0x1

    .line 1744
    .local v8, "cancel":Z
    :goto_68
    if-eqz v8, :cond_79

    .line 1745
    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1749
    :cond_76
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1733
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_79
    :goto_79
    add-int/lit8 v10, v10, -0x1

    goto :goto_2d

    .line 1742
    .restart local v9    # "endValues":Landroid/transition/TransitionValues;
    .restart local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .restart local v13    # "oldValues":Landroid/transition/TransitionValues;
    .restart local v14    # "oldView":Landroid/view/View;
    .restart local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_7c
    const/4 v8, 0x0

    goto :goto_68

    .line 1754
    .restart local v8    # "cancel":Z
    :cond_7e
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    .line 1761
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_82
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1762
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->runAnimators()V

    .line 1763
    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1954
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1961
    :cond_4
    :goto_4
    return-object p0

    .line 1957
    :cond_5
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1958
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1959
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 1044
    if-lez p1, :cond_7

    .line 1045
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1047
    :cond_7
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1315
    if-eqz p1, :cond_7

    .line 1316
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1318
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Ljava/lang/Class;

    .prologue
    .line 1332
    if-eqz p1, :cond_7

    .line 1333
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1335
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 1061
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1062
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1064
    :cond_b
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 1695
    iget-boolean v8, p0, Landroid/transition/Transition;->mPaused:Z

    if-eqz v8, :cond_62

    .line 1696
    iget-boolean v8, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v8, :cond_5f

    .line 1697
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1698
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1699
    .local v4, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v7

    .line 1700
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_38

    .line 1701
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    .line 1702
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_35

    if-eqz v7, :cond_35

    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1703
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1704
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    .line 1700
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1707
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    :cond_38
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5f

    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5f

    .line 1708
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1710
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1711
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_51
    if-ge v1, v3, :cond_5f

    .line 1712
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    .line 1711
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1716
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_5f
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1718
    :cond_62
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    .prologue
    .line 856
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 857
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v2

    .line 859
    .local v2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 863
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 864
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 865
    invoke-direct {p0, v0, v2}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    goto :goto_d

    .line 868
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_26
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 869
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 870
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 2141
    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 2142
    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 329
    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    .line 330
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .registers 2
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .prologue
    .line 1975
    iput-object p1, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    .line 1976
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 383
    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 384
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 6
    .param p1, "matches"    # [I

    .prologue
    .line 492
    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_a

    .line 493
    :cond_5
    sget-object v2, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v2, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 506
    :goto_9
    return-void

    .line 495
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 496
    aget v1, p1, v0

    .line 497
    .local v1, "match":I
    invoke-static {v1}, Landroid/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 498
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_1e
    invoke-static {p1, v0}, Landroid/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 504
    .end local v1    # "match":I
    :cond_2f
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/transition/Transition;->mMatchOrder:[I

    goto :goto_9
.end method

.method public setNameOverrides(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2154
    .local p1, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    .line 2155
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .registers 3
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .prologue
    .line 2043
    if-nez p1, :cond_7

    .line 2044
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 2048
    :goto_6
    return-void

    .line 2046
    :cond_7
    iput-object p1, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    goto :goto_6
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .registers 2
    .param p1, "transitionPropagation"    # Landroid/transition/TransitionPropagation;

    .prologue
    .line 2095
    iput-object p1, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    .line 2096
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 2136
    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2137
    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 356
    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 357
    return-object p0
.end method

.method protected start()V
    .registers 5

    .prologue
    .line 1857
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v3, :cond_2e

    .line 1858
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1859
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1861
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1862
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v1, :cond_2b

    .line 1863
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 1862
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1866
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1868
    :cond_2e
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1869
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2167
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2204
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/transition/Transition;->mDuration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_58

    .line 2205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/transition/Transition;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2207
    :cond_58
    iget-wide v2, p0, Landroid/transition/Transition;->mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7d

    .line 2208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/transition/Transition;->mStartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2210
    :cond_7d
    iget-object v2, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_a0

    .line 2211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2213
    :cond_a0
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b0

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 2214
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_104

    .line 2216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cd
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_104

    .line 2217
    if-lez v0, :cond_ea

    .line 2218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2220
    :cond_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2216
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 2223
    .end local v0    # "i":I
    :cond_104
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_144

    .line 2224
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10d
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_144

    .line 2225
    if-lez v0, :cond_12a

    .line 2226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2228
    :cond_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2224
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 2231
    .end local v0    # "i":I
    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2233
    :cond_157
    return-object v1
.end method
