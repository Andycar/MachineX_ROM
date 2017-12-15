.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "ColorSpaceTransform.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final COUNT:I = 0x9

.field private static final COUNT_INT:I = 0x12

.field private static final OFFSET_DENOMINATOR:I = 0x1

.field private static final OFFSET_NUMERATOR:I = 0x0

.field private static final RATIONAL_SIZE:I = 0x2

.field private static final ROWS:I = 0x3


# instance fields
.field private final mElements:[I


# direct methods
.method public constructor <init>([I)V
    .registers 5
    .param p1, "elements"    # [I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v1, "elements must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v1, p1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_15

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "elements must be 18 length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_38

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 122
    :cond_38
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 123
    return-void
.end method

.method public constructor <init>([Landroid/util/Rational;)V
    .registers 6
    .param p1, "elements"    # [Landroid/util/Rational;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v1, "elements must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_15

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "elements must be 9 length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_15
    const/16 v1, 0x12

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    array-length v1, p1

    if-ge v0, v1, :cond_5a

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    aput v3, v1, v2

    .line 83
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    aput v3, v1, v2

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 85
    :cond_5a
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "row":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v4, v9, :cond_47

    .line 278
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_13
    if-ge v0, v9, :cond_38

    .line 280
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v2, 0x0

    aget v3, v6, v7

    .line 281
    .local v3, "numerator":I
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v7, v2, 0x1

    aget v1, v6, v7

    .line 282
    .local v1, "denominator":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    if-ge v0, v8, :cond_33

    .line 286
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_33
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_13

    .line 289
    .end local v1    # "denominator":I
    .end local v3    # "numerator":I
    :cond_38
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-ge v4, v8, :cond_44

    .line 291
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 294
    .end local v0    # "col":I
    :cond_47
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public copyElements([II)V
    .registers 7
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0x12

    .line 198
    const-string/jumbo v1, "offset must not be negative"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 199
    const-string v1, "destination must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, v3, :cond_19

    .line 201
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "destination too small to fit elements"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v3, :cond_27

    .line 206
    add-int v1, v0, p2

    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v2, v2, v0

    aput v2, p1, v1

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 208
    :cond_27
    return-void
.end method

.method public copyElements([Landroid/util/Rational;I)V
    .registers 10
    .param p1, "destination"    # [Landroid/util/Rational;
    .param p2, "offset"    # I

    .prologue
    const/16 v6, 0x9

    .line 163
    const-string/jumbo v4, "offset must not be negative"

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 164
    const-string v4, "destination must not be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    array-length v4, p1

    sub-int/2addr v4, p2

    if-ge v4, v6, :cond_19

    .line 166
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v5, "destination too small to fit elements"

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1b
    if-ge v1, v6, :cond_37

    .line 170
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x0

    aget v3, v4, v5

    .line 171
    .local v3, "numerator":I
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 173
    .local v0, "denominator":I
    add-int v4, v1, p2

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v3, v0}, Landroid/util/Rational;-><init>(II)V

    aput-object v5, p1, v4

    .line 169
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1b

    .line 175
    .end local v0    # "denominator":I
    .end local v3    # "numerator":I
    :cond_37
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 220
    if-nez p1, :cond_5

    .line 241
    :cond_4
    :goto_4
    return v9

    .line 223
    :cond_5
    if-ne p0, p1, :cond_9

    move v9, v10

    .line 224
    goto :goto_4

    .line 226
    :cond_9
    instance-of v11, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-eqz v11, :cond_4

    move-object v6, p1

    .line 227
    check-cast v6, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 228
    .local v6, "other":Landroid/hardware/camera2/params/ColorSpaceTransform;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    const/16 v11, 0x9

    if-ge v2, v11, :cond_43

    .line 229
    iget-object v11, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v12, v3, 0x0

    aget v4, v11, v12

    .line 230
    .local v4, "numerator":I
    iget-object v11, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v12, v3, 0x1

    aget v0, v11, v12

    .line 231
    .local v0, "denominator":I
    iget-object v11, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v12, v3, 0x0

    aget v5, v11, v12

    .line 232
    .local v5, "numeratorOther":I
    iget-object v11, v6, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v12, v3, 0x1

    aget v1, v11, v12

    .line 233
    .local v1, "denominatorOther":I
    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v4, v0}, Landroid/util/Rational;-><init>(II)V

    .line 234
    .local v7, "r":Landroid/util/Rational;
    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v5, v1}, Landroid/util/Rational;-><init>(II)V

    .line 235
    .local v8, "rOther":Landroid/util/Rational;
    invoke-virtual {v7, v8}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 228
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_12

    .end local v0    # "denominator":I
    .end local v1    # "denominatorOther":I
    .end local v4    # "numerator":I
    .end local v5    # "numeratorOther":I
    .end local v7    # "r":Landroid/util/Rational;
    .end local v8    # "rOther":Landroid/util/Rational;
    :cond_43
    move v9, v10

    .line 239
    goto :goto_4
.end method

.method public getElement(II)Landroid/util/Rational;
    .registers 7
    .param p1, "column"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v2, 0x3

    .line 136
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_d

    .line 137
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "column out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_d
    if-ltz p2, :cond_11

    if-lt p2, v2, :cond_1a

    .line 139
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "row out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_1a
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v1, v2, v3

    .line 143
    .local v1, "numerator":I
    iget-object v2, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v0, v2, v3

    .line 145
    .local v0, "denominator":I
    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    return-object v2
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 263
    const-string v0, "ColorSpaceTransform%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
