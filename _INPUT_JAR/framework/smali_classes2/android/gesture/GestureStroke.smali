.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .registers 10
    .param p1, "bbx"    # Landroid/graphics/RectF;
    .param p2, "len"    # F
    .param p3, "pts"    # [F
    .param p4, "times"    # [J

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 90
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    .line 91
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 92
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 51
    .local v3, "count":I
    mul-int/lit8 v10, v3, 0x2

    new-array v9, v10, [F

    .line 52
    .local v9, "tmpPoints":[F
    new-array v8, v3, [J

    .line 54
    .local v8, "times":[J
    const/4 v2, 0x0

    .line 55
    .local v2, "bx":Landroid/graphics/RectF;
    const/4 v6, 0x0

    .line 56
    .local v6, "len":F
    const/4 v5, 0x0

    .line 58
    .local v5, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v3, :cond_7c

    .line 59
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    .line 60
    .local v7, "p":Landroid/gesture/GesturePoint;
    mul-int/lit8 v10, v4, 0x2

    iget v11, v7, Landroid/gesture/GesturePoint;->x:F

    aput v11, v9, v10

    .line 61
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    iget v11, v7, Landroid/gesture/GesturePoint;->y:F

    aput v11, v9, v10

    .line 62
    iget-wide v10, v7, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v10, v8, v5

    .line 64
    if-nez v2, :cond_4a

    .line 65
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "bx":Landroid/graphics/RectF;
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 66
    .restart local v2    # "bx":Landroid/graphics/RectF;
    iget v10, v7, Landroid/gesture/GesturePoint;->y:F

    iput v10, v2, Landroid/graphics/RectF;->top:F

    .line 67
    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iput v10, v2, Landroid/graphics/RectF;->left:F

    .line 68
    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iput v10, v2, Landroid/graphics/RectF;->right:F

    .line 69
    iget v10, v7, Landroid/gesture/GesturePoint;->y:F

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    .line 70
    const/4 v6, 0x0

    .line 76
    :goto_45
    add-int/lit8 v5, v5, 0x1

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 72
    :cond_4a
    float-to-double v10, v6

    iget v12, v7, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v13, v4, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v13, v9, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v7, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v15, v4, -0x1

    mul-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, 0x1

    aget v15, v9, v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v6, v10

    .line 74
    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    iget v11, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v2, v10, v11}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_45

    .line 79
    .end local v7    # "p":Landroid/gesture/GesturePoint;
    :cond_7c
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 80
    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 81
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 82
    move-object/from16 v0, p0

    iput v6, v0, Landroid/gesture/GestureStroke;->length:F

    .line 83
    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 223
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v2, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 225
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 228
    :cond_16
    new-instance v3, Landroid/gesture/GestureStroke;

    invoke-direct {v3, v2}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object v3
.end method

.method private makePath()V
    .registers 15

    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 122
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 123
    .local v4, "localPoints":[F
    array-length v0, v4

    .line 125
    .local v0, "count":I
    const/4 v7, 0x0

    .line 127
    .local v7, "path":Landroid/graphics/Path;
    const/4 v5, 0x0

    .line 128
    .local v5, "mX":F
    const/4 v6, 0x0

    .line 130
    .local v6, "mY":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_42

    .line 131
    aget v8, v4, v3

    .line 132
    .local v8, "x":F
    add-int/lit8 v10, v3, 0x1

    aget v9, v4, v10

    .line 133
    .local v9, "y":F
    if-nez v7, :cond_22

    .line 134
    new-instance v7, Landroid/graphics/Path;

    .end local v7    # "path":Landroid/graphics/Path;
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 135
    .restart local v7    # "path":Landroid/graphics/Path;
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 136
    move v5, v8

    .line 137
    move v6, v9

    .line 130
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 139
    :cond_22
    sub-float v10, v8, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 140
    .local v1, "dx":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 141
    .local v2, "dy":F
    cmpl-float v10, v1, v13

    if-gez v10, :cond_36

    cmpl-float v10, v2, v13

    if-ltz v10, :cond_1f

    .line 142
    :cond_36
    add-float v10, v8, v5

    div-float/2addr v10, v12

    add-float v11, v9, v6

    div-float/2addr v11, v12

    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 143
    move v5, v8

    .line 144
    move v6, v9

    goto :goto_1f

    .line 149
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_42
    iput-object v7, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 150
    return-void
.end method


# virtual methods
.method public clearPath()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 236
    :cond_9
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 97
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 107
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 110
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 115
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 118
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 203
    .local v2, "pts":[F
    iget-object v3, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 204
    .local v3, "times":[J
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v0, v4

    .line 207
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_25

    .line 211
    aget v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 213
    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 215
    div-int/lit8 v4, v1, 0x2

    aget-wide v4, v3, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 209
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 217
    :cond_25
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .registers 23
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "numSample"    # I

    .prologue
    .line 162
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v9

    .line 163
    .local v9, "pts":[F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 165
    .local v10, "rect":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 167
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v12, p1, v16

    .line 168
    .local v12, "sx":F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    div-float v13, p2, v16

    .line 169
    .local v13, "sy":F
    cmpl-float v16, v12, v13

    if-lez v16, :cond_55

    move v11, v13

    .line 170
    .local v11, "scale":F
    :goto_36
    invoke-static {v9, v11, v11}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    .line 172
    const/4 v6, 0x0

    .line 173
    .local v6, "mX":F
    const/4 v7, 0x0

    .line 175
    .local v7, "mY":F
    const/4 v8, 0x0

    .line 177
    .local v8, "path":Landroid/graphics/Path;
    array-length v2, v9

    .line 179
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3e
    if-ge v5, v2, :cond_85

    .line 180
    aget v14, v9, v5

    .line 181
    .local v14, "x":F
    add-int/lit8 v16, v5, 0x1

    aget v15, v9, v16

    .line 182
    .local v15, "y":F
    if-nez v8, :cond_57

    .line 183
    new-instance v8, Landroid/graphics/Path;

    .end local v8    # "path":Landroid/graphics/Path;
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 184
    .restart local v8    # "path":Landroid/graphics/Path;
    invoke-virtual {v8, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    move v6, v14

    .line 186
    move v7, v15

    .line 179
    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x2

    goto :goto_3e

    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "mX":F
    .end local v7    # "mY":F
    .end local v8    # "path":Landroid/graphics/Path;
    .end local v11    # "scale":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_55
    move v11, v12

    .line 169
    goto :goto_36

    .line 188
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "mX":F
    .restart local v7    # "mY":F
    .restart local v8    # "path":Landroid/graphics/Path;
    .restart local v11    # "scale":F
    .restart local v14    # "x":F
    .restart local v15    # "y":F
    :cond_57
    sub-float v16, v14, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 189
    .local v3, "dx":F
    sub-float v16, v15, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 190
    .local v4, "dy":F
    const/high16 v16, 0x40400000    # 3.0f

    cmpl-float v16, v3, v16

    if-gez v16, :cond_6f

    const/high16 v16, 0x40400000    # 3.0f

    cmpl-float v16, v4, v16

    if-ltz v16, :cond_52

    .line 191
    :cond_6f
    add-float v16, v14, v6

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v17, v15, v7

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 192
    move v6, v14

    .line 193
    move v7, v15

    goto :goto_52

    .line 198
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_85
    return-object v8
.end method
