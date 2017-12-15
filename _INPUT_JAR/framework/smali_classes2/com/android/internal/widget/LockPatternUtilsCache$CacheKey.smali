.class final Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache$1;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    .registers 4

    .prologue
    .line 259
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 264
    instance-of v2, p1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    if-nez v2, :cond_6

    .line 267
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 266
    check-cast v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    .line 267
    .local v0, "o":Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    iget v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    iget v3, v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    .line 254
    iput p2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    .line 255
    return-object p0
.end method
