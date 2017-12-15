.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
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
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 375
    sget-object v3, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v2, Landroid/net/wifi/WifiSsid;

    .line 377
    .restart local v2    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_10
    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-direct/range {v1 .. v11}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJII)V

    .line 388
    .local v1, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9a

    const/4 v3, 0x1

    :goto_48
    iput-boolean v3, v1, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 396
    .local v13, "n":I
    if-eqz v13, :cond_9c

    .line 397
    new-array v3, v13, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v3, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    if-ge v0, v13, :cond_9c

    .line 399
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v4, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v4}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v4, v3, v0

    .line 400
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v3, v3, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 402
    .local v12, "len":I
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v3, v3, v0

    new-array v4, v12, [B

    iput-object v4, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 403
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 390
    .end local v0    # "i":I
    .end local v12    # "len":I
    .end local v13    # "n":I
    :cond_9a
    const/4 v3, 0x0

    goto :goto_48

    .line 406
    .restart local v13    # "n":I
    :cond_9c
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 410
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
