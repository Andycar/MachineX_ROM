.class public final Landroid/util/SizeF;
.super Ljava/lang/Object;
.source "SizeF.java"


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "width"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/SizeF;->mWidth:F

    .line 44
    const-string v0, "height"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/util/SizeF;->mHeight:F

    .line 45
    return-void
.end method

.method private static invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SizeF: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v2, "string must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 138
    .local v1, "sep_ix":I
    if-gez v1, :cond_14

    .line 139
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 141
    :cond_14
    if-gez v1, :cond_1b

    .line 142
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 145
    :cond_1b
    :try_start_1b
    new-instance v2, Landroid/util/SizeF;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_33} :catch_3a

    return-object v2

    .line 147
    :catch_34
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 149
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3a
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_5

    .line 86
    :cond_4
    :goto_4
    return v2

    .line 79
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 80
    goto :goto_4

    .line 82
    :cond_9
    instance-of v3, p1, Landroid/util/SizeF;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 83
    check-cast v0, Landroid/util/SizeF;

    .line 84
    .local v0, "other":Landroid/util/SizeF;
    iget v3, p0, Landroid/util/SizeF;->mWidth:F

    iget v4, v0, Landroid/util/SizeF;->mWidth:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_22

    iget v3, p0, Landroid/util/SizeF;->mHeight:F

    iget v4, v0, Landroid/util/SizeF;->mHeight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_22

    :goto_20
    move v2, v1

    goto :goto_4

    :cond_22
    move v1, v2

    goto :goto_20
.end method

.method public getHeight()F
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Landroid/util/SizeF;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/SizeF;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
