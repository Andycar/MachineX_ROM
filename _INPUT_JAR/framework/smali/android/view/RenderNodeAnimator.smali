.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 392
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 97
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 104
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 112
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 113
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 115
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 116
    return-void
.end method

.method public constructor <init>(IIFF)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 97
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 104
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 139
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 9
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 94
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 97
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 104
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 119
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 121
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 10
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 94
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 97
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 104
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 133
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 135
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/view/RenderNodeAnimator;J)Z
    .registers 4
    .param p0, "x0"    # Landroid/view/RenderNodeAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    move-result v0

    return v0
.end method

.method private applyInterpolator()V
    .registers 7

    .prologue
    .line 158
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_5

    .line 168
    :goto_4
    return-void

    .line 161
    :cond_5
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 162
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v4, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v4}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v2

    .line 167
    .local v2, "ni":J
    :goto_15
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    goto :goto_4

    .line 164
    .end local v2    # "ni":J
    :cond_1f
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    .line 165
    .local v0, "duration":J
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    .restart local v2    # "ni":J
    goto :goto_15
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 449
    return-void
.end method

.method private checkMutable()V
    .registers 3

    .prologue
    .line 148
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_c

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    return-void
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 360
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_c

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 363
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_c
    return-object v0
.end method

.method private doStart()V
    .registers 4

    .prologue
    .line 192
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 193
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nStart(JLandroid/view/RenderNodeAnimator;)V

    .line 198
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1a

    .line 201
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 204
    :cond_1a
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 206
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 208
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 210
    :cond_28
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .registers 2

    .prologue
    .line 384
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 385
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_14

    .line 386
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .end local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    .line 387
    .restart local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 389
    :cond_14
    return-object v0
.end method

.method private init(J)V
    .registers 4
    .param p1, "ptr"    # J

    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 145
    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .registers 3
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .registers 2
    .param p0, "viewProperty"    # I

    .prologue
    .line 108
    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private notifyStartListeners()V
    .registers 5

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_16

    const/4 v2, 0x0

    .line 215
    .local v2, "numListeners":I
    :goto_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_1b

    .line 216
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 214
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_7

    .line 218
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_1b
    return-void
.end method

.method private processDelayed(J)Z
    .registers 8
    .param p1, "frameTimeMs"    # J

    .prologue
    .line 374
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 375
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    .line 380
    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 376
    :cond_c
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 377
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 378
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .registers 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 273
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-eqz v0, :cond_c

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_c
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 277
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    .line 278
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 222
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_42

    .line 223
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-ne v3, v8, :cond_15

    .line 224
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 225
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 227
    :cond_15
    iget-object v3, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v3}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 229
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_34

    move v2, v4

    .line 231
    .local v2, "numListeners":I
    :goto_25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    if-ge v0, v2, :cond_39

    .line 232
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 230
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_25

    .line 235
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_39
    iget-object v3, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v3, :cond_42

    .line 237
    iget-object v3, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v3, v8, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 240
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_42
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 3

    .prologue
    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 245
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 247
    :cond_e
    return-void
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNativeAnimator()J
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 297
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 323
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onFinished()V
    .registers 6

    .prologue
    .line 338
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 339
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 340
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 342
    :cond_f
    const/4 v3, 0x3

    iput v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 344
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 345
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_28

    const/4 v2, 0x0

    .line 346
    .local v2, "numListeners":I
    :goto_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v2, :cond_2d

    .line 347
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 345
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_19

    .line 353
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_2d
    iget-object v3, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v3}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 354
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 355
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .registers 4
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 459
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 460
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .registers 8
    .param p1, "duration"    # J

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 303
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_22
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 307
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    .line 308
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 329
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 330
    return-void
.end method

.method public setStartDelay(J)V
    .registers 6
    .param p1, "startDelay"    # J

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 288
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_23

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_23
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 292
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 293
    return-void
.end method

.method public setStartValue(F)V
    .registers 4
    .param p1, "startValue"    # F

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 282
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 283
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 265
    instance-of v1, p1, Landroid/view/GLES20RecordingCanvas;

    if-nez v1, :cond_c

    .line 266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a GLES20RecordingCanvas"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 268
    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 269
    .local v0, "recordingCanvas":Landroid/view/GLES20RecordingCanvas;
    iget-object v1, v0, Landroid/view/GLES20RecordingCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 270
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 261
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 262
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_c

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_c
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_18

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 181
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    .line 183
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-nez v0, :cond_39

    .line 184
    :cond_2a
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 185
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 189
    :goto_38
    return-void

    .line 187
    :cond_39
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    goto :goto_38
.end method
