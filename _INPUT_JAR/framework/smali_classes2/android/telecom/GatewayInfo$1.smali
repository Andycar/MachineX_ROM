.class final Landroid/telecom/GatewayInfo$1;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/GatewayInfo;
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
        "Landroid/telecom/GatewayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "gatewayPackageName":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 83
    .local v1, "gatewayUri":Landroid/net/Uri;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 84
    .local v2, "originalAddress":Landroid/net/Uri;
    new-instance v3, Landroid/telecom/GatewayInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/GatewayInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 89
    new-array v0, p1, [Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->newArray(I)[Landroid/telecom/GatewayInfo;

    move-result-object v0

    return-object v0
.end method
