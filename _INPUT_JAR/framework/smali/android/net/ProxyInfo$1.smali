.class final Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
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
        "Landroid/net/ProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .registers 18
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 438
    .local v3, "port":I
    const/4 v4, 0x0

    .line 439
    .local v4, "username":Ljava/lang/String;
    const/4 v5, 0x0

    .line 441
    .local v5, "password":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_1e

    .line 442
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 443
    .local v15, "url":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 444
    .local v14, "localPort":I
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v15, v14}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    .line 469
    .end local v14    # "localPort":I
    .end local v15    # "url":Landroid/net/Uri;
    :goto_1d
    return-object v1

    .line 446
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_3a

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_3a

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 456
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "exclList":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "parsedExclList":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 461
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v4, :cond_54

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 462
    new-instance v1, Landroid/net/ProxyInfo;

    .end local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V

    .restart local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1d

    .line 465
    :cond_54
    new-instance v1, Landroid/net/ProxyInfo;

    .end local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    const/4 v13, 0x0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v6

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V

    .restart local v1    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1d
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 473
    new-array v0, p1, [Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method
