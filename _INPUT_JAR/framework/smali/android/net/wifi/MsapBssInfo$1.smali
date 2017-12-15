.class final Landroid/net/wifi/MsapBssInfo$1;
.super Ljava/lang/Object;
.source "MsapBssInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MsapBssInfo;
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
        "Landroid/net/wifi/MsapBssInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MsapBssInfo;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 148
    new-instance v0, Landroid/net/wifi/MsapBssInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/MsapBssInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/net/wifi/MsapBssInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MsapBssInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/MsapBssInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Landroid/net/wifi/MsapBssInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/net/wifi/MsapBssInfo$1;->newArray(I)[Landroid/net/wifi/MsapBssInfo;

    move-result-object v0

    return-object v0
.end method
