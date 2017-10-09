.class Ljava/net/AddressCache$AddressCacheKey;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressCacheKey"
.end annotation


# instance fields
.field private final mHostname:Ljava/lang/String;

.field private final mNetId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    .line 49
    iput p2, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_5

    .line 60
    :cond_4
    :goto_4
    return v1

    .line 56
    :cond_5
    instance-of v3, p1, Ljava/net/AddressCache$AddressCacheKey;

    if-nez v3, :cond_b

    move v1, v2

    .line 57
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 59
    check-cast v0, Ljava/net/AddressCache$AddressCacheKey;

    .line 60
    .local v0, "lhs":Ljava/net/AddressCache$AddressCacheKey;
    iget-object v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    iget v4, v0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    if-eq v3, v4, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 64
    const/16 v0, 0x11

    .line 65
    .local v0, "result":I
    iget v1, p0, Ljava/net/AddressCache$AddressCacheKey;->mNetId:I

    add-int/lit16 v0, v1, 0x20f

    .line 66
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/net/AddressCache$AddressCacheKey;->mHostname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 67
    return v0
.end method
