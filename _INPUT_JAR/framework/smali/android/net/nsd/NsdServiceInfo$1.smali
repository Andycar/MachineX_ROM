.class final Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
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
        "Landroid/net/nsd/NsdServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    .line 265
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v1}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 266
    .local v1, "info":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_25

    .line 271
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;
    invoke-static {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->access$202(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_25} :catch_52

    .line 275
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mPort:I
    invoke-static {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->access$302(Landroid/net/nsd/NsdServiceInfo;I)I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    if-ge v0, v2, :cond_51

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "valueArray":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_43

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "valueLength":I
    new-array v3, v4, [B

    .line 284
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 286
    .end local v4    # "valueLength":I
    :cond_43
    # getter for: Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;
    invoke-static {v1}, Landroid/net/nsd/NsdServiceInfo;->access$400(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 288
    .end local v3    # "valueArray":[B
    :cond_51
    return-object v1

    .line 272
    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catch_52
    move-exception v5

    goto :goto_25
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 292
    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method
