.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .registers 15
    .param p1, "entry"    # [I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v7, "entry must not be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, "numInputs":I
    array-length v3, p1

    .line 78
    .local v3, "left":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v7, p1

    if-ge v0, v7, :cond_6e

    .line 79
    aget v7, p1, v0

    invoke-static {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v1

    .line 81
    .local v1, "inputFormat":I
    add-int/lit8 v3, v3, -0x1

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 84
    if-ge v3, v11, :cond_30

    .line 85
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Input %x had no output format length listed"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :cond_30
    aget v4, p1, v0

    .line 90
    .local v4, "length":I
    add-int/lit8 v3, v3, -0x1

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 93
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_37
    if-ge v2, v4, :cond_43

    .line 94
    add-int v7, v0, v2

    aget v6, p1, v7

    .line 95
    .local v6, "outputFormat":I
    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 98
    .end local v6    # "outputFormat":I
    :cond_43
    if-lez v4, :cond_6b

    .line 99
    if-ge v3, v4, :cond_69

    .line 100
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    :cond_69
    add-int/2addr v0, v4

    .line 107
    sub-int/2addr v3, v4

    .line 110
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    .line 111
    goto :goto_d

    .line 113
    .end local v1    # "inputFormat":I
    .end local v2    # "j":I
    .end local v4    # "length":I
    :cond_6e
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    .line 114
    iput v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 236
    if-nez p1, :cond_4

    .line 247
    :cond_3
    :goto_3
    return v1

    .line 239
    :cond_4
    if-ne p0, p1, :cond_8

    .line 240
    const/4 v1, 0x1

    goto :goto_3

    .line 242
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 243
    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 245
    .local v0, "other":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_3
.end method

.method public getInputs()[I
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 130
    iget v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    new-array v2, v6, [I

    .line 132
    .local v2, "inputs":[I
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v4, v6

    .line 133
    .local v4, "left":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v6, v6

    if-ge v1, v6, :cond_63

    .line 134
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v0, v6, v1

    .line 136
    .local v0, "format":I
    add-int/lit8 v4, v4, -0x1

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 139
    if-ge v4, v10, :cond_2e

    .line 140
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Input %x had no output format length listed"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 144
    :cond_2e
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v5, v6, v1

    .line 145
    .local v5, "length":I
    add-int/lit8 v4, v4, -0x1

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    if-lez v5, :cond_5e

    .line 149
    if-ge v4, v5, :cond_5c

    .line 150
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 156
    :cond_5c
    add-int/2addr v1, v5

    .line 157
    sub-int/2addr v4, v5

    .line 160
    :cond_5e
    aput v0, v2, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 163
    .end local v0    # "format":I
    .end local v5    # "length":I
    :cond_63
    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v6

    return-object v6
.end method

.method public getOutputs(I)[I
    .registers 14
    .param p1, "format"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 180
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v3, v6

    .line 181
    .local v3, "left":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    array-length v6, v6

    if-ge v0, v6, :cond_71

    .line 182
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v1, v6, v0

    .line 184
    .local v1, "inputFormat":I
    add-int/lit8 v3, v3, -0x1

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 187
    if-ge v3, v10, :cond_29

    .line 188
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Input %x had no output format length listed"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 192
    :cond_29
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    aget v4, v6, v0

    .line 193
    .local v4, "length":I
    add-int/lit8 v3, v3, -0x1

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 196
    if-lez v4, :cond_57

    .line 197
    if-ge v3, v4, :cond_57

    .line 198
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 205
    :cond_57
    if-ne v1, p1, :cond_6e

    .line 206
    new-array v5, v4, [I

    .line 209
    .local v5, "outputs":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5c
    if-ge v2, v4, :cond_69

    .line 210
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    add-int v7, v0, v2

    aget v6, v6, v7

    aput v6, v5, v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 213
    :cond_69
    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    move-result-object v6

    return-object v6

    .line 216
    .end local v2    # "k":I
    .end local v5    # "outputs":[I
    :cond_6e
    add-int/2addr v0, v4

    .line 217
    sub-int/2addr v3, v4

    .line 219
    goto :goto_6

    .line 221
    .end local v1    # "inputFormat":I
    .end local v4    # "length":I
    :cond_71
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Input format %x was not one in #getInputs"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
