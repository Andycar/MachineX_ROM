.class final Landroid/location/GpsClock$1;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsClock;
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
        "Landroid/location/GpsClock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 410
    new-instance v0, Landroid/location/GpsClock;

    invoke-direct {v0}, Landroid/location/GpsClock;-><init>()V

    .line 412
    .local v0, "gpsClock":Landroid/location/GpsClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    # setter for: Landroid/location/GpsClock;->mFlags:S
    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$002(Landroid/location/GpsClock;S)S

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    # setter for: Landroid/location/GpsClock;->mLeapSecond:S
    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$102(Landroid/location/GpsClock;S)S

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Landroid/location/GpsClock;->mType:B
    invoke-static {v0, v1}, Landroid/location/GpsClock;->access$202(Landroid/location/GpsClock;B)B

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mTimeInNs:J
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$302(Landroid/location/GpsClock;J)J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mTimeUncertaintyInNs:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$402(Landroid/location/GpsClock;D)D

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mFullBiasInNs:J
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$502(Landroid/location/GpsClock;J)J

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mBiasInNs:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$602(Landroid/location/GpsClock;D)D

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mBiasUncertaintyInNs:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$702(Landroid/location/GpsClock;D)D

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mDriftInNsPerSec:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$802(Landroid/location/GpsClock;D)D

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->access$902(Landroid/location/GpsClock;D)D

    .line 423
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsClock;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 428
    new-array v0, p1, [Landroid/location/GpsClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->newArray(I)[Landroid/location/GpsClock;

    move-result-object v0

    return-object v0
.end method
