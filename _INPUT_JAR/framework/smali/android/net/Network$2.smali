.class final Landroid/net/Network$2;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
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
        "Landroid/net/Network;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .local v0, "netId":I
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/net/Network$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/Network;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 303
    new-array v0, p1, [Landroid/net/Network;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/net/Network$2;->newArray(I)[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method
