.class final Landroid/net/wifi/WifiScanner$OperationResult$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$OperationResult;
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
        "Landroid/net/wifi/WifiScanner$OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 742
    .local v1, "reason":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v2, v1, v0}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 747
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$OperationResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;

    move-result-object v0

    return-object v0
.end method
