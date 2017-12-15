.class Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field mEvaluator:Landroid/animation/TypeEvaluator;

.field mFirstKeyframe:Landroid/animation/Keyframe;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Landroid/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe;)V
    .registers 4
    .param p1, "keyframes"    # [Landroid/animation/Keyframe;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 48
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 49
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 50
    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/KeyframeSet;
    .registers 9
    .param p0, "values"    # [F

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "badValue":Z
    array-length v3, p0

    .line 83
    .local v3, "numKeyframes":I
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v2, v4, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 84
    .local v2, "keyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    if-ne v3, v7, :cond_3a

    .line 85
    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v6

    .line 86
    const/high16 v4, 0x3f800000    # 1.0f

    aget v5, p0, v6

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v7

    .line 87
    aget v4, p0, v6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 88
    const/4 v0, 0x1

    .line 100
    :cond_2b
    if-eqz v0, :cond_34

    .line 101
    const-string v4, "Animator"

    const-string v5, "Bad value (NaN) in float animator"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_34
    new-instance v4, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v4, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v4

    .line 91
    :cond_3a
    aget v4, p0, v6

    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v6

    .line 92
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_45
    if-ge v1, v3, :cond_2b

    .line 93
    int-to-float v4, v1

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v1

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v1

    .line 95
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 96
    const/4 v0, 0x1

    .line 92
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_45
.end method

.method public static varargs ofInt([I)Landroid/animation/KeyframeSet;
    .registers 8
    .param p0, "values"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 65
    array-length v2, p0

    .line 66
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe$IntKeyframe;

    .line 67
    .local v1, "keyframes":[Landroid/animation/Keyframe$IntKeyframe;
    if-ne v2, v6, :cond_27

    .line 68
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    .line 69
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v6

    .line 77
    :cond_21
    new-instance v3, Landroid/animation/IntKeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v3

    .line 71
    :cond_27
    aget v3, p0, v4

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    .line 72
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_32
    if-ge v0, v2, :cond_21

    .line 73
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public static varargs ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .registers 9
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;

    .prologue
    .line 108
    array-length v6, p0

    .line 109
    .local v6, "numKeyframes":I
    const/4 v1, 0x0

    .line 110
    .local v1, "hasFloat":Z
    const/4 v2, 0x0

    .line 111
    .local v2, "hasInt":Z
    const/4 v3, 0x0

    .line 112
    .local v3, "hasOther":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v6, :cond_1b

    .line 113
    aget-object v7, p0, v4

    instance-of v7, v7, Landroid/animation/Keyframe$FloatKeyframe;

    if-eqz v7, :cond_11

    .line 114
    const/4 v1, 0x1

    .line 112
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 115
    :cond_11
    aget-object v7, p0, v4

    instance-of v7, v7, Landroid/animation/Keyframe$IntKeyframe;

    if-eqz v7, :cond_19

    .line 116
    const/4 v2, 0x1

    goto :goto_e

    .line 118
    :cond_19
    const/4 v3, 0x1

    goto :goto_e

    .line 121
    :cond_1b
    if-eqz v1, :cond_35

    if-nez v2, :cond_35

    if-nez v3, :cond_35

    .line 122
    new-array v0, v6, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 123
    .local v0, "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v4, 0x0

    :goto_24
    if-ge v4, v6, :cond_2f

    .line 124
    aget-object v7, p0, v4

    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v7, v0, v4

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 126
    :cond_2f
    new-instance v7, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v7, v0}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 134
    .end local v0    # "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    :goto_34
    return-object v7

    .line 127
    :cond_35
    if-eqz v2, :cond_4f

    if-nez v1, :cond_4f

    if-nez v3, :cond_4f

    .line 128
    new-array v5, v6, [Landroid/animation/Keyframe$IntKeyframe;

    .line 129
    .local v5, "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v6, :cond_49

    .line 130
    aget-object v7, p0, v4

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v7, v5, v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 132
    :cond_49
    new-instance v7, Landroid/animation/IntKeyframeSet;

    invoke-direct {v7, v5}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    goto :goto_34

    .line 134
    .end local v5    # "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    :cond_4f
    new-instance v7, Landroid/animation/KeyframeSet;

    invoke-direct {v7, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    goto :goto_34
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .registers 8
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 139
    array-length v2, p0

    .line 140
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe$ObjectKeyframe;

    .line 141
    .local v1, "keyframes":[Landroid/animation/Keyframe$ObjectKeyframe;
    if-ne v2, v6, :cond_27

    .line 142
    invoke-static {v5}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    .line 143
    const/high16 v3, 0x3f800000    # 1.0f

    aget-object v4, p0, v4

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v6

    .line 150
    :cond_21
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v3

    .line 145
    :cond_27
    aget-object v3, p0, v4

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    .line 146
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_32
    if-ge v0, v2, :cond_21

    .line 147
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public static ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .registers 2
    .param p0, "path"    # Landroid/graphics/Path;

    .prologue
    .line 154
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .registers 3
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "error"    # F

    .prologue
    .line 158
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-object v0
.end method


# virtual methods
.method public clone()Landroid/animation/KeyframeSet;
    .registers 7

    .prologue
    .line 180
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 181
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 182
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe;

    .line 183
    .local v2, "newKeyframes":[Landroid/animation/Keyframe;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v4, :cond_1c

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 186
    :cond_1c
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 187
    .local v3, "newSet":Landroid/animation/KeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

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
    .line 32
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .registers 11
    .param p1, "fraction"    # F

    .prologue
    .line 205
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_22

    .line 206
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v6, :cond_f

    .line 207
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 209
    :cond_f
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 252
    :goto_21
    return-object v6

    .line 212
    :cond_22
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_5a

    .line 213
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    .line 214
    .local v3, "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 215
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_3a

    .line 216
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 218
    :cond_3a
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 219
    .local v4, "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 221
    .local v2, "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_21

    .line 223
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    .end local v4    # "prevFraction":F
    :cond_5a
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_98

    .line 224
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v7, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    .line 225
    .local v5, "prevKeyframe":Landroid/animation/Keyframe;
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 226
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_78

    .line 227
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 229
    :cond_78
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 230
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 232
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_21

    .line 235
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    .end local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    :cond_98
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 236
    .restart local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_9b
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v0, v6, :cond_da

    .line 237
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    .line 238
    .restart local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_d6

    .line 239
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 240
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_b9

    .line 241
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 243
    :cond_b9
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 244
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 246
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_21

    .line 249
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    :cond_d6
    move-object v5, v3

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 252
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    :cond_da
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_21
.end method

.method public invalidateCache()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 170
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 257
    const-string v1, " "

    .line 258
    .local v1, "returnVal":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v0, v2, :cond_2d

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 261
    :cond_2d
    return-object v1
.end method
