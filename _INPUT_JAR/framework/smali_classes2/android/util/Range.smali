.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 56
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 58
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_26

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_26
    return-void
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    .line 177
    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 181
    .end local p1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_10
    :goto_10
    return-object p1

    .line 178
    .restart local p1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_11
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_10

    .line 179
    iget-object p1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_10
.end method

.method public contains(Landroid/util/Range;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    const-string/jumbo v4, "value must not be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v4, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v5, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_23

    move v0, v2

    .line 135
    .local v0, "gteLower":Z
    :goto_13
    iget-object v4, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v5, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_25

    move v1, v2

    .line 137
    .local v1, "lteUpper":Z
    :goto_1e
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    :goto_22
    return v2

    .end local v0    # "gteLower":Z
    .end local v1    # "lteUpper":Z
    :cond_23
    move v0, v3

    .line 134
    goto :goto_13

    .restart local v0    # "gteLower":Z
    :cond_25
    move v1, v3

    .line 135
    goto :goto_1e

    .restart local v1    # "lteUpper":Z
    :cond_27
    move v2, v3

    .line 137
    goto :goto_22
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    const-string/jumbo v4, "value must not be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1f

    move v0, v2

    .line 115
    .local v0, "gteLower":Z
    :goto_11
    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_21

    move v1, v2

    .line 117
    .local v1, "lteUpper":Z
    :goto_1a
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    :goto_1e
    return v2

    .end local v0    # "gteLower":Z
    .end local v1    # "lteUpper":Z
    :cond_1f
    move v0, v3

    .line 114
    goto :goto_11

    .restart local v0    # "gteLower":Z
    :cond_21
    move v1, v3

    .line 115
    goto :goto_1a

    .restart local v1    # "lteUpper":Z
    :cond_23
    move v2, v3

    .line 117
    goto :goto_1e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    if-nez p1, :cond_5

    .line 159
    :cond_4
    :goto_4
    return v2

    .line 152
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 153
    goto :goto_4

    .line 154
    :cond_9
    instance-of v3, p1, Landroid/util/Range;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 156
    check-cast v0, Landroid/util/Range;

    .line 157
    .local v0, "other":Landroid/util/Range;
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, v0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, v0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_24
    move v2, v1

    goto :goto_4

    :cond_26
    move v1, v2

    goto :goto_24
.end method

.method public extend(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 278
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 285
    .end local p1    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_1a
    return-object p1

    .line 281
    .restart local p1    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_1b
    if-ltz v0, :cond_21

    if-gtz v1, :cond_21

    move-object p1, p0

    .line 283
    goto :goto_1a

    .line 285
    :cond_21
    if-ltz v0, :cond_2f

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    :goto_26
    if-gtz v1, :cond_33

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :goto_2a
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    goto :goto_1a

    :cond_2f
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_26

    :cond_33
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2a
.end method

.method public extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 309
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 311
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_1c

    if-gtz v1, :cond_1c

    .line 315
    .end local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :goto_1b
    return-object p0

    .restart local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .restart local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    .restart local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_1c
    if-ltz v0, :cond_20

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_20
    if-gtz v1, :cond_24

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_24
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_1b
.end method

.method public getLower()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 353
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersect(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 208
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 210
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 217
    .end local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_1a
    return-object p0

    .line 213
    .restart local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_1b
    if-ltz v0, :cond_21

    if-gtz v1, :cond_21

    move-object p0, p1

    .line 215
    goto :goto_1a

    .line 217
    :cond_21
    if-gtz v0, :cond_2f

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    :goto_26
    if-ltz v1, :cond_33

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :goto_2a
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_1a

    :cond_2f
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_26

    :cond_33
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2a
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 243
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1c

    if-ltz v1, :cond_1c

    .line 247
    .end local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :goto_1b
    return-object p0

    .restart local p0    # "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .restart local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    .restart local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_1c
    if-gtz v0, :cond_20

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_20
    if-ltz v1, :cond_24

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_24
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 345
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string v0, "[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
