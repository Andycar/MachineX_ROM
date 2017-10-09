.class public final Ljava/lang/reflect/ArtMethod;
.super Ljava/lang/Object;
.source "ArtMethod.java"


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexCacheResolvedMethods:[Ljava/lang/reflect/ArtMethod;

.field dexCacheResolvedTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexCacheStrings:[Ljava/lang/String;

.field private dexCodeItemOffset:I

.field private dexMethodIndex:I

.field private entryPointFromInterpreter:J

.field private entryPointFromJni:J

.field private entryPointFromQuickCompiledCode:J

.field private gcMap:J

.field private methodIndex:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z
    .registers 8
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ArtMethod;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 146
    .local v0, "dex":Lcom/android/dex/Dex;
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDexMethodIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v2

    .line 147
    .local v2, "types":[S
    array-length v4, v2

    array-length v5, p1

    if-eq v4, v5, :cond_16

    .line 155
    :cond_15
    :goto_15
    return v3

    .line 150
    :cond_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v4, v2

    if-ge v1, v4, :cond_27

    .line 151
    aget-short v4, v2, v1

    invoke-direct {p0, v0, v4}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aget-object v5, p1, v1

    if-ne v4, v5, :cond_15

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 155
    :cond_27
    const/4 v3, 0x1

    goto :goto_15
.end method

.method public static equalMethodParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z
    .registers 3
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ArtMethod;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/ArtMethod;->equalConstructorParameters(Ljava/lang/reflect/ArtMethod;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;
    .registers 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexStringIndex"    # I

    .prologue
    .line 220
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->dexCacheStrings:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 221
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 222
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "s":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 223
    .restart local v0    # "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->dexCacheStrings:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 225
    :cond_14
    return-object v0
.end method

.method private getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .registers 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "dexTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->dexCacheResolvedTypes:[Ljava/lang/Class;

    aget-object v0, v1, p2

    .line 235
    .local v0, "resolvedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_c

    .line 236
    iget-object v1, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    .line 238
    :cond_c
    return-object v0
.end method

.method public static getMethodName(Ljava/lang/reflect/ArtMethod;)Ljava/lang/String;
    .registers 2
    .param p0, "artMethod"    # Ljava/lang/reflect/ArtMethod;

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;

    move-result-object p0

    .line 136
    invoke-direct {p0}, Ljava/lang/reflect/ArtMethod;->getNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getNameNative()Ljava/lang/String;
.end method


# virtual methods
.method compareParameters([Ljava/lang/Class;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v3

    .line 195
    .local v3, "dex":Lcom/android/dex/Dex;
    iget v7, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v3, v7}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v6

    .line 196
    .local v6, "types":[S
    array-length v7, v6

    array-length v8, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 197
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v5, :cond_33

    .line 198
    aget-short v7, v6, v4

    invoke-direct {p0, v3, v7}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v1, p1, v4

    .line 200
    .local v1, "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_30

    .line 201
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 202
    .local v2, "comparison":I
    if-eqz v2, :cond_30

    .line 207
    .end local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "comparison":I
    :goto_2f
    return v2

    .line 197
    .restart local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 207
    .end local v0    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    array-length v7, v6

    array-length v8, p1

    sub-int v2, v7, v8

    goto :goto_2f
.end method

.method findOverriddenMethodIfProxy()Ljava/lang/reflect/ArtMethod;
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 253
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->dexCacheResolvedMethods:[Ljava/lang/reflect/ArtMethod;

    iget v1, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    aget-object p0, v0, v1

    .line 255
    .end local p0    # "this":Ljava/lang/reflect/ArtMethod;
    :cond_e
    return-object p0
.end method

.method public getAccessFlags()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Ljava/lang/reflect/ArtMethod;->accessFlags:I

    return v0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method getDexMethodIndex()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    return v0
.end method

.method getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-static {v0, v1}, Llibcore/reflect/AnnotationAccess;->getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method getParameterTypes()[Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/reflect/ArtMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 169
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v4, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v3

    .line 170
    .local v3, "types":[S
    array-length v4, v3

    if-nez v4, :cond_14

    .line 171
    sget-object v2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 178
    :cond_13
    return-object v2

    .line 173
    :cond_14
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/Class;

    .line 174
    .local v2, "parametersArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 176
    aget-short v4, v3, v1

    invoke-direct {p0, v0, v4}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method getReturnType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v2, p0, Ljava/lang/reflect/ArtMethod;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    .line 183
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/ArtMethod;->dexMethodIndex:I

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->returnTypeIndexFromMethodIndex(I)I

    move-result v1

    .line 185
    .local v1, "returnTypeIndex":I
    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/ArtMethod;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method
