.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ObjectAnimator"


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 199
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 201
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 188
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private hasSameTargetAndProperties(Landroid/animation/Animator;)Z
    .registers 9
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    .line 769
    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_45

    move-object v4, p1

    .line 770
    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 771
    .local v3, "theirValues":[Landroid/animation/PropertyValuesHolder;
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_45

    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    array-length v6, v3

    if-ne v4, v6, :cond_45

    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    if-ge v0, v4, :cond_43

    .line 774
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v4, v0

    .line 775
    .local v1, "pvhMine":Landroid/animation/PropertyValuesHolder;
    aget-object v2, v3, v0

    .line 776
    .local v2, "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    :cond_3e
    move v4, v5

    .line 784
    .end local v0    # "i":I
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :goto_3f
    return v4

    .line 773
    .restart local v0    # "i":I
    .restart local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .restart local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 781
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_43
    const/4 v4, 0x1

    goto :goto_3f

    .end local v0    # "i":I
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_45
    move v4, v5

    .line 784
    goto :goto_3f
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 393
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 394
    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 373
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 374
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 375
    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 479
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 481
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 483
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 459
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 460
    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    .line 436
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 437
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 439
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 441
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 412
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 414
    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 284
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 286
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 288
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 264
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 265
    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    .line 242
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 243
    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 245
    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 247
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 218
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 220
    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 549
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 551
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 524
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 525
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;[[F)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[F

    .prologue
    .line 504
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 505
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 355
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 328
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 329
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Landroid/animation/ObjectAnimator;
    .registers 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[I

    .prologue
    .line 308
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 309
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TP;>;",
            "Landroid/animation/TypeConverter",
            "<TV;TP;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TP;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;TP;>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 652
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 678
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 623
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 624
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 625
    return-object v0
.end method

.method public static ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 601
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 573
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 575
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 576
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .registers 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 701
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 702
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 704
    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .registers 6
    .param p1, "fraction"    # F

    .prologue
    .line 942
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 943
    .local v2, "target":Ljava/lang/Object;
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    .line 945
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 954
    :cond_d
    return-void

    .line 949
    :cond_e
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 950
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .line 951
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v1, :cond_d

    .line 952
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 958
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 959
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 149
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 162
    :cond_7
    :goto_7
    return-object v1

    .line 150
    :cond_8
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_13

    .line 151
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 152
    :cond_13
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 154
    if-nez v0, :cond_42

    .line 155
    const-string v1, ""

    .line 159
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 157
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method initAnimation()V
    .registers 5

    .prologue
    .line 846
    iget-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    if-nez v3, :cond_1d

    .line 849
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 850
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_1a

    .line 851
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .line 852
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_1a

    .line 853
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 856
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1a
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 858
    .end local v2    # "target":Ljava/lang/Object;
    :cond_1d
    return-void
.end method

.method public setAutoCancel(Z)V
    .registers 2
    .param p1, "cancel"    # Z

    .prologue
    .line 765
    iput-boolean p1, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 766
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ObjectAnimator;
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 872
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 873
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2b

    .line 727
    :cond_b
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1d

    .line 728
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 735
    :goto_1c
    return-void

    .line 730
    :cond_1d
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1c

    .line 733
    :cond_2b
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1c
.end method

.method public varargs setIntValues([I)V
    .registers 5
    .param p1, "values"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2b

    .line 712
    :cond_b
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1d

    .line 713
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 720
    :goto_1c
    return-void

    .line 715
    :cond_1d
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1c

    .line 718
    :cond_2b
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_1c
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 6
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 739
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_30

    .line 742
    :cond_c
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_20

    .line 743
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 751
    :goto_1f
    return-void

    .line 745
    :cond_20
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1f

    .line 749
    :cond_30
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public setProperty(Landroid/util/Property;)V
    .registers 7
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_1c

    .line 115
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    .line 116
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 118
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1c
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_26

    .line 122
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 124
    :cond_26
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 126
    iput-boolean v4, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 127
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_1a

    .line 93
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    .line 94
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1a
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 102
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 895
    .local v0, "oldTarget":Ljava/lang/Object;
    if-eq v0, p1, :cond_e

    .line 896
    if-nez p1, :cond_f

    const/4 v1, 0x0

    :goto_9
    iput-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 898
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 900
    :cond_e
    return-void

    .line 896
    :cond_f
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setupEndValues()V
    .registers 5

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 919
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 920
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_19

    .line 921
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .line 922
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_19

    .line 923
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 926
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_19
    return-void
.end method

.method public setupStartValues()V
    .registers 5

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 906
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 907
    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_19

    .line 908
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .line 909
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_19

    .line 910
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 913
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_19
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 790
    sget-object v4, Landroid/animation/ObjectAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 791
    .local v1, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v1, :cond_8e

    .line 792
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 793
    .local v3, "numAnims":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_36

    .line 794
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_33

    .line 795
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 796
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_33

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 797
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 793
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 801
    :cond_36
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 802
    add-int/lit8 v2, v3, -0x1

    :goto_3e
    if-ltz v2, :cond_62

    .line 803
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_5f

    .line 804
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 805
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_5f

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 806
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 802
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5f
    add-int/lit8 v2, v2, -0x1

    goto :goto_3e

    .line 810
    :cond_62
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 811
    add-int/lit8 v2, v3, -0x1

    :goto_6a
    if-ltz v2, :cond_8e

    .line 812
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_8b

    .line 813
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 814
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_8b

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 815
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 811
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_8b
    add-int/lit8 v2, v2, -0x1

    goto :goto_6a

    .line 829
    .end local v2    # "i":I
    .end local v3    # "numAnims":I
    :cond_8e
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 830
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_55

    .line 968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_55

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 972
    .end local v0    # "i":I
    :cond_55
    return-object v1
.end method
