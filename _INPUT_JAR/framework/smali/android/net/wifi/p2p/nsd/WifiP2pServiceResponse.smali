.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static MAX_BUF_SIZE:I


# instance fields
.field protected mData:[B

.field protected mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mServiceType:I

.field protected mStatus:I

.field protected mTransId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x400

    sput v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    .line 361
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "status"    # I
    .param p3, "transId"    # I
    .param p4, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p5, "data"    # [B

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    .line 121
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    .line 122
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    .line 123
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 124
    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 125
    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 321
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 322
    const/4 v0, 0x1

    .line 326
    :goto_5
    return v0

    .line 323
    :cond_6
    if-eqz p1, :cond_d

    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 326
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static hexStr2Bin(Ljava/lang/String;)[B
    .registers 7
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 280
    .local v3, "sz":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 282
    .local v0, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_2c

    .line 284
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    :try_start_17
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_27

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 285
    :catch_27
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const/4 v0, 0x0

    .line 290
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2c
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/util/List;
    .registers 19
    .param p0, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v13, "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    const-string v15, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "args":[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    .line 202
    const/4 v13, 0x0

    .line 269
    .end local v13    # "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_15
    :goto_15
    return-object v13

    .line 204
    .restart local v13    # "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_16
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 205
    .local v6, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x1

    aget-object v14, v8, v15

    .line 206
    .local v14, "srcAddr":Ljava/lang/String;
    iput-object v14, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 208
    const/4 v15, 0x3

    aget-object v15, v8, v15

    invoke-static {v15}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->hexStr2Bin(Ljava/lang/String;)[B

    move-result-object v9

    .line 209
    .local v9, "bin":[B
    if-nez v9, :cond_2b

    .line 210
    const/4 v13, 0x0

    goto :goto_15

    .line 213
    :cond_2b
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    .local v10, "dis":Ljava/io/DataInputStream;
    :cond_35
    :goto_35
    :try_start_35
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    move-result v15

    if-lez v15, :cond_15

    .line 225
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    add-int/lit8 v12, v15, -0x3

    .line 227
    .local v12, "length":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 228
    .local v3, "type":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 229
    .local v5, "transId":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 230
    .local v4, "status":I
    if-gez v12, :cond_59

    .line 231
    const/4 v13, 0x0

    goto :goto_15

    .line 233
    :cond_59
    if-nez v12, :cond_73

    .line 234
    if-nez v4, :cond_35

    .line 235
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_66} :catch_67

    goto :goto_35

    .line 262
    .end local v3    # "type":I
    .end local v4    # "status":I
    .end local v5    # "transId":I
    .end local v12    # "length":I
    :catch_67
    move-exception v11

    .line 263
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_15

    .line 269
    const/4 v13, 0x0

    goto :goto_15

    .line 240
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v3    # "type":I
    .restart local v4    # "status":I
    .restart local v5    # "transId":I
    .restart local v12    # "length":I
    :cond_73
    :try_start_73
    sget v15, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    if-le v12, v15, :cond_80

    .line 241
    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_35

    .line 244
    :cond_80
    new-array v7, v12, [B

    .line 245
    .local v7, "data":[B
    invoke-virtual {v10, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 248
    const/4 v15, 0x1

    if-ne v3, v15, :cond_98

    .line 249
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v2

    .line 257
    .local v2, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :goto_8c
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getStatus()I

    move-result v15

    if-nez v15, :cond_35

    .line 258
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 251
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_98
    const/4 v15, 0x2

    if-ne v3, v15, :cond_a0

    .line 252
    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v2

    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_8c

    .line 255
    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_a0
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_a5} :catch_67

    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_8c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    if-ne p1, p0, :cond_5

    .line 314
    :cond_4
    :goto_4
    return v1

    .line 308
    :cond_5
    instance-of v3, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    if-nez v3, :cond_b

    move v1, v2

    .line 309
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 312
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 314
    .local v0, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    if-ne v3, v4, :cond_32

    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    if-ne v3, v4, :cond_32

    iget-object v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_32
    move v1, v2

    goto :goto_4
.end method

.method public getRawData()[B
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-object v0
.end method

.method public getServiceType()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    return v0
.end method

.method public getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    return v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 331
    const/16 v0, 0x11

    .line 332
    .local v0, "result":I
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    add-int/lit16 v0, v1, 0x20f

    .line 333
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    add-int v0, v1, v3

    .line 334
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    add-int v0, v1, v3

    .line 335
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_27

    move v1, v2

    :goto_1c
    add-int v0, v3, v1

    .line 337
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-nez v3, :cond_30

    :goto_24
    add-int v0, v1, v2

    .line 338
    return v0

    .line 335
    :cond_27
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1c

    .line 337
    :cond_30
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24
.end method

.method public setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 181
    if-nez p1, :cond_3

    .line 183
    :goto_2
    return-void

    .line 182
    :cond_3
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "serviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 297
    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 348
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 352
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    if-nez v0, :cond_22

    .line 353
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    :goto_21
    return-void

    .line 355
    :cond_22
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_21
.end method
