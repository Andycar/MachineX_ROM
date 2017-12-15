.class final Landroid/net/wifi/PPPOEInfo$1;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PPPOEInfo;
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
        "Landroid/net/wifi/PPPOEInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEInfo;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    .line 79
    .local v0, "info":Landroid/net/wifi/PPPOEInfo;
    invoke-static {}, Landroid/net/wifi/PPPOEInfo$Status;->values()[Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 81
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/PPPOEInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/wifi/PPPOEInfo$1;->newArray(I)[Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method
