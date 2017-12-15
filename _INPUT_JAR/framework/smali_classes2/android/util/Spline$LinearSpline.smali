.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .registers 9
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 238
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_f

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    .line 239
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_17
    array-length v0, p1

    .line 243
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_39

    .line 245
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aget v4, p2, v1

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    aget v5, p1, v1

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    aput v3, v2, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 247
    :cond_39
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 248
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 249
    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .registers 7
    .param p1, "x"    # F

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v2

    .line 255
    .local v1, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 274
    .end local p1    # "x":F
    :goto_a
    return p1

    .line 258
    .restart local p1    # "x":F
    :cond_b
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_18

    .line 259
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p1, v2, v3

    goto :goto_a

    .line 261
    :cond_18
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_29

    .line 262
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    add-int/lit8 v3, v1, -0x1

    aget p1, v2, v3

    goto :goto_a

    .line 267
    :cond_29
    const/4 v0, 0x0

    .line 268
    .local v0, "i":I
    :cond_2a
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_43

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 270
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v2, v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2a

    .line 271
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget p1, v2, v0

    goto :goto_a

    .line 274
    :cond_43
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v2, v2, v0

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v3, v3, v0

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v4, v4, v0

    sub-float v4, p1, v4

    mul-float/2addr v3, v4

    add-float p1, v2, v3

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v3

    .line 281
    .local v1, "n":I
    const-string v3, "LinearSpline{["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_4a

    .line 283
    if-eqz v0, :cond_17

    .line 284
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_17
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_42

    .line 289
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 291
    :cond_42
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 293
    :cond_4a
    const-string v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
