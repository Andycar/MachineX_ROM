.class final Landroid/net/LinkAddress$1;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v0

    .line 306
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "prefixLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    return-object v4

    .line 301
    .end local v1    # "flags":I
    .end local v2    # "prefixLength":I
    .end local v3    # "scope":I
    :catch_1b
    move-exception v4

    goto :goto_9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkAddress;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 313
    new-array v0, p1, [Landroid/net/LinkAddress;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->newArray(I)[Landroid/net/LinkAddress;

    move-result-object v0

    return-object v0
.end method
