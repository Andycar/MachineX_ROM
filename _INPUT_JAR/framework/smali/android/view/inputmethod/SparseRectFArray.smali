.class public final Landroid/view/inputmethod/SparseRectFArray;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/SparseRectFArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCoordinates:[F

.field private final mFlagsArray:[I

.field private final mKeys:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 295
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V
    .registers 6
    .param p1, "builder"    # Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    if-nez v0, :cond_12

    .line 247
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 248
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 249
    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 258
    :goto_11
    return-void

    .line 251
    :cond_12
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    .line 252
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    .line 253
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    .line 254
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$200(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 255
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$300(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 256
    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$400(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    # getter for: Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I
    invoke-static {p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->access$100(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_11
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .param p2, "x1"    # Landroid/view/inputmethod/SparseRectFArray$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_5

    .line 107
    :cond_4
    :goto_4
    return v2

    .line 99
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 100
    goto :goto_4

    .line 102
    :cond_9
    instance-of v3, p1, Landroid/view/inputmethod/SparseRectFArray;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 105
    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    .line 107
    .local v0, "that":Landroid/view/inputmethod/SparseRectFArray;
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    iget-object v4, v0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    iget-object v4, v0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    iget-object v4, v0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_30

    :goto_2e
    move v2, v1

    goto :goto_4

    :cond_30
    move v1, v2

    goto :goto_2e
.end method

.method public get(I)Landroid/graphics/RectF;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-nez v3, :cond_6

    .line 272
    :cond_5
    :goto_5
    return-object v2

    .line 264
    :cond_6
    if-ltz p1, :cond_5

    .line 267
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 268
    .local v0, "arrayIndex":I
    if-ltz v0, :cond_5

    .line 271
    mul-int/lit8 v1, v0, 0x4

    .line 272
    .local v1, "baseCoordIndex":I
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_5
.end method

.method public getFlags(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .prologue
    .line 279
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-nez v1, :cond_5

    .line 289
    .end local p2    # "valueIfKeyNotFound":I
    :cond_4
    :goto_4
    return p2

    .line 282
    .restart local p2    # "valueIfKeyNotFound":I
    :cond_5
    if-ltz p1, :cond_4

    .line 285
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 286
    .local v0, "arrayIndex":I
    if-ltz v0, :cond_4

    .line 289
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget p2, v1, v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v3, v3

    if-nez v3, :cond_c

    :cond_a
    move v0, v2

    .line 91
    :goto_b
    return v0

    .line 83
    :cond_c
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v0, v3

    .line 85
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    int-to-float v3, v0

    iget-object v4, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 89
    :cond_1f
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v2, v3, v2

    add-int/2addr v0, v2

    .line 91
    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 113
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    if-nez v3, :cond_f

    .line 114
    :cond_c
    const-string v3, "SparseRectFArray{}"

    .line 136
    :goto_e
    return-object v3

    .line 116
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "SparseRectFArray{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    array-length v3, v3

    if-ge v1, v3, :cond_76

    .line 119
    if-eqz v1, :cond_26

    .line 120
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_26
    mul-int/lit8 v0, v1, 0x4

    .line 123
    .local v0, "baseIndex":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v3, ":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v0, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "]:flagsArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 135
    .end local v0    # "baseIndex":I
    :cond_76
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 73
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mCoordinates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 74
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray;->mFlagsArray:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    return-void
.end method
