.class final Landroid/net/NetworkKey$1;
.super Ljava/lang/Object;
.source "NetworkKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkKey;
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
        "Landroid/net/NetworkKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkKey;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    new-instance v0, Landroid/net/NetworkKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/NetworkKey;-><init>(Landroid/os/Parcel;Landroid/net/NetworkKey$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/net/NetworkKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkKey;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkKey;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 127
    new-array v0, p1, [Landroid/net/NetworkKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/net/NetworkKey$1;->newArray(I)[Landroid/net/NetworkKey;

    move-result-object v0

    return-object v0
.end method
