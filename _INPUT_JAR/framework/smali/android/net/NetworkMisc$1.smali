.class final Landroid/net/NetworkMisc$1;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkMisc;
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
        "Landroid/net/NetworkMisc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 71
    new-instance v0, Landroid/net/NetworkMisc;

    invoke-direct {v0}, Landroid/net/NetworkMisc;-><init>()V

    .line 72
    .local v0, "networkMisc":Landroid/net/NetworkMisc;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    :goto_e
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v1, v2

    :goto_17
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_26

    :goto_1f
    iput-boolean v2, v0, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 75
    return-object v0

    :cond_22
    move v1, v3

    .line 72
    goto :goto_e

    :cond_24
    move v1, v3

    .line 73
    goto :goto_17

    :cond_26
    move v2, v3

    .line 74
    goto :goto_1f
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkMisc;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkMisc;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 80
    new-array v0, p1, [Landroid/net/NetworkMisc;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/net/NetworkMisc$1;->newArray(I)[Landroid/net/NetworkMisc;

    move-result-object v0

    return-object v0
.end method
