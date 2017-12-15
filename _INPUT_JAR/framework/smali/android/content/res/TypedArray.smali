.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 999
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1000
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1001
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1002
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1003
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 1004
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 1005
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 960
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 961
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 962
    .local v1, "type":I
    if-nez v1, :cond_a

    .line 963
    const/4 v2, 0x0

    .line 972
    :goto_9
    return v2

    .line 965
    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 966
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 967
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 968
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 969
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 970
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 971
    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_31
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 972
    const/4 v2, 0x1

    goto :goto_9

    .line 971
    :cond_35
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 976
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 977
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 978
    .local v0, "cookie":I
    if-gez v0, :cond_19

    .line 979
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v3, :cond_17

    .line 980
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 995
    :cond_16
    :goto_16
    return-object v2

    .line 983
    :cond_17
    const/4 v2, 0x0

    goto :goto_16

    .line 986
    :cond_19
    const/4 v2, 0x0

    .line 987
    .local v2, "result":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_2a

    .line 988
    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 991
    :cond_2a
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_16

    .line 992
    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    add-int/lit8 v4, p1, 0x3

    aget v4, v1, v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_16
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .prologue
    .line 44
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 45
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_22

    .line 46
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 49
    mul-int/lit8 v1, p1, 0x6

    .line 50
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_17

    .line 59
    .end local v0    # "attrs":Landroid/content/res/TypedArray;
    .end local v1    # "fullLen":I
    :goto_16
    return-object v0

    .line 54
    .restart local v0    # "attrs":Landroid/content/res/TypedArray;
    .restart local v1    # "fullLen":I
    :cond_17
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 55
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    goto :goto_16

    .line 59
    .end local v1    # "fullLen":I
    :cond_22
    new-instance v0, Landroid/content/res/TypedArray;

    .end local v0    # "attrs":Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [I

    invoke-direct {v0, p0, v2, v3, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    goto :goto_16
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .registers 9

    .prologue
    .line 903
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_c

    .line 904
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 907
    :cond_c
    const/4 v2, 0x0

    .line 909
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 910
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 911
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_34

    .line 912
    mul-int/lit8 v5, v4, 0x6

    .line 913
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_22

    .line 911
    :cond_1f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 918
    :cond_22
    add-int/lit8 v6, v5, 0x0

    const/4 v7, 0x0

    aput v7, v3, v6

    .line 920
    add-int/lit8 v6, v5, 0x1

    aget v1, v3, v6

    .line 921
    .local v1, "attr":I
    if-eqz v1, :cond_1f

    .line 926
    if-nez v2, :cond_31

    .line 927
    new-array v2, v0, [I

    .line 929
    :cond_31
    aput v1, v2, v4

    goto :goto_1f

    .line 932
    .end local v1    # "attr":I
    .end local v5    # "index":I
    :cond_34
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .registers 9
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 273
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_c

    .line 274
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 278
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 279
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 280
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 295
    .end local p2    # "defValue":Z
    :goto_16
    return p2

    .line 282
    .restart local p2    # "defValue":Z
    :cond_17
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2a

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2a

    .line 284
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    :goto_26
    move p2, v3

    goto :goto_16

    :cond_28
    const/4 v3, 0x0

    goto :goto_26

    .line 287
    :cond_2a
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 288
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 289
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to boolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p2

    goto :goto_16

    .line 293
    :cond_53
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getChangingConfigurations()I
    .registers 8

    .prologue
    .line 944
    const/4 v1, 0x0

    .line 946
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 947
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 948
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_1b

    .line 949
    mul-int/lit8 v4, v3, 0x6

    .line 950
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    aget v5, v2, v6

    .line 951
    .local v5, "type":I
    if-nez v5, :cond_15

    .line 948
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 954
    :cond_15
    add-int/lit8 v6, v4, 0x4

    aget v6, v2, v6

    or-int/2addr v1, v6

    goto :goto_12

    .line 956
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_1b
    return v1
.end method

.method public getColor(II)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 382
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_c

    .line 383
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 387
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 388
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 389
    .local v2, "type":I
    if-nez v2, :cond_17

    .line 401
    .end local p2    # "defValue":I
    :cond_16
    :goto_16
    return p2

    .line 391
    .restart local p2    # "defValue":I
    :cond_17
    const/16 v4, 0x10

    if-lt v2, v4, :cond_24

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_24

    .line 393
    add-int/lit8 v4, p1, 0x1

    aget p2, v1, v4

    goto :goto_16

    .line 394
    :cond_24
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3c

    .line 395
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 396
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 397
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 399
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_16

    .line 402
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_58

    .line 403
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    :cond_58
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(IF)F
    .registers 8
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 492
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 493
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 497
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 498
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 499
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 502
    .end local p2    # "defValue":F
    :goto_16
    return p2

    .line 501
    .restart local p2    # "defValue":F
    :cond_17
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 502
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p2

    goto :goto_16

    .line 504
    :cond_25
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 505
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_41
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelOffset(II)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 530
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 531
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 535
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 536
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 537
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 540
    .end local p2    # "defValue":I
    :goto_16
    return p2

    .line 539
    .restart local p2    # "defValue":I
    :cond_17
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 540
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_16

    .line 542
    :cond_25
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 543
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_41
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelSize(II)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 569
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 570
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 573
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 574
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 575
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 576
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 579
    .end local p2    # "defValue":I
    :goto_16
    return p2

    .line 578
    .restart local p2    # "defValue":I
    :cond_17
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 579
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_16

    .line 581
    :cond_25
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 582
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_41
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 753
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_c

    .line 754
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 758
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 759
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 760
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_34
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 764
    :goto_3e
    return-object v1

    :cond_3f
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public getFloat(IF)F
    .registers 10
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 340
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_c

    .line 341
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 345
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 346
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 347
    .local v2, "type":I
    if-nez v2, :cond_17

    .line 366
    .end local p2    # "defValue":F
    :goto_16
    return p2

    .line 349
    .restart local p2    # "defValue":F
    :cond_17
    const/4 v4, 0x4

    if-ne v2, v4, :cond_23

    .line 350
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    goto :goto_16

    .line 351
    :cond_23
    const/16 v4, 0x10

    if-lt v2, v4, :cond_31

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_31

    .line 353
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float p2, v4

    goto :goto_16

    .line 356
    :cond_31
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 357
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 358
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting to float: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 360
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_60

    .line 361
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_16

    .line 364
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_60
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getFraction(IIIF)F
    .registers 10
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 671
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 672
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 676
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 677
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 678
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 681
    .end local p4    # "defValue":F
    :goto_16
    return p4

    .line 680
    .restart local p4    # "defValue":F
    :cond_17
    const/4 v2, 0x6

    if-ne v1, v2, :cond_25

    .line 681
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p4

    goto :goto_16

    .line 683
    :cond_25
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 684
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_41
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(I)I
    .registers 4
    .param p1, "at"    # I

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .registers 3

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 307
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_c

    .line 308
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 312
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 313
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 314
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 329
    .end local p2    # "defValue":I
    :goto_16
    return p2

    .line 316
    .restart local p2    # "defValue":I
    :cond_17
    const/16 v3, 0x10

    if-lt v1, v3, :cond_24

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_24

    .line 318
    add-int/lit8 v3, p1, 0x1

    aget p2, v0, v3

    goto :goto_16

    .line 321
    :cond_24
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 322
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 323
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result p2

    goto :goto_16

    .line 327
    :cond_4d
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getInteger(II)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 455
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 456
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 460
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 461
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 462
    .local v1, "type":I
    if-nez v1, :cond_17

    .line 466
    .end local p2    # "defValue":I
    :goto_16
    return p2

    .line 464
    .restart local p2    # "defValue":I
    :cond_17
    const/16 v2, 0x10

    if-lt v1, v2, :cond_24

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_24

    .line 466
    add-int/lit8 v2, p1, 0x1

    aget p2, v0, v2

    goto :goto_16

    .line 467
    :cond_24
    const/4 v2, 0x2

    if-ne v1, v2, :cond_40

    .line 468
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_40
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to integer: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLayoutDimension(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 637
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 638
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 642
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 643
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 644
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_21

    .line 646
    add-int/lit8 v2, p1, 0x1

    aget p2, v0, v2

    .line 652
    .end local p2    # "defValue":I
    :cond_20
    :goto_20
    return p2

    .line 647
    .restart local p2    # "defValue":I
    :cond_21
    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    .line 648
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_20
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 603
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 607
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 608
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 609
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_21

    .line 611
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 613
    :goto_20
    return v2

    .line 612
    :cond_21
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f

    .line 613
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_20

    .line 615
    :cond_2f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 616
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_4b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": You must supply a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .registers 11
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_d

    .line 238
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_d
    mul-int/lit8 p1, p1, 0x6

    .line 242
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 243
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 244
    .local v2, "type":I
    add-int/lit8 v5, p1, 0x4

    aget v5, v1, v5

    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_1f

    .line 261
    :cond_1e
    :goto_1e
    return-object v4

    .line 247
    :cond_1f
    if-eqz v2, :cond_1e

    .line 249
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2d

    .line 250
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 253
    :cond_2d
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 254
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 255
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converting to string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 259
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_58
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 207
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_c

    .line 208
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 212
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 213
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 214
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    .line 215
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 216
    .local v0, "cookie":I
    if-gez v0, :cond_2c

    .line 217
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .end local v0    # "cookie":I
    :goto_2b
    return-object v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 866
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 867
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "<internal>"

    goto :goto_16
.end method

.method public getResourceId(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 706
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 707
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 711
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 712
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1d

    .line 713
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 714
    .local v1, "resid":I
    if-eqz v1, :cond_1d

    .line 718
    .end local v1    # "resid":I
    :goto_1c
    return v1

    :cond_1d
    move v1, p2

    goto :goto_1c
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_d

    .line 169
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_d
    mul-int/lit8 p1, p1, 0x6

    .line 173
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 174
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 175
    .local v2, "type":I
    if-nez v2, :cond_18

    .line 189
    :cond_17
    :goto_17
    return-object v4

    .line 177
    :cond_18
    const/4 v5, 0x3

    if-ne v2, v5, :cond_24

    .line 178
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    .line 181
    :cond_24
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 182
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 183
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converting to string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    .line 187
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4f
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    .line 137
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_d
    mul-int/lit8 p1, p1, 0x6

    .line 141
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 142
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 143
    .local v1, "type":I
    if-nez v1, :cond_18

    .line 156
    :goto_17
    return-object v3

    .line 145
    :cond_18
    const/4 v4, 0x3

    if-ne v1, v4, :cond_20

    .line 146
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_17

    .line 149
    :cond_20
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 150
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 151
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_17

    .line 154
    :cond_45
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 778
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_c

    .line 779
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 782
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 783
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 784
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 786
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getThemeAttributeId(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 732
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_c

    .line 733
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 737
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 738
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 739
    add-int/lit8 v1, p1, 0x1

    aget p2, v0, v1

    .line 741
    .end local p2    # "defValue":I
    :cond_1b
    return p2
.end method

.method public getType(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 813
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 814
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 818
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 799
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 800
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_c
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 829
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_c

    .line 830
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_c
    mul-int/lit8 p1, p1, 0x6

    .line 834
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 835
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 836
    .local v1, "type":I
    if-eqz v1, :cond_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public length()I
    .registers 3

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_c

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_c
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 851
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_c

    .line 852
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 856
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 859
    .end local v0    # "value":Landroid/util/TypedValue;
    :goto_16
    return-object v0

    .restart local v0    # "value":Landroid/util/TypedValue;
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public recycle()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 878
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_22

    .line 879
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 885
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 886
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 888
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 889
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "index"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 431
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_c

    .line 432
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_c
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 436
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 437
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_34
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/res/Resources;->twLoadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 442
    :goto_3c
    return-object v1

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3c
.end method
