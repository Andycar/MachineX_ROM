.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    # setter for: Landroid/location/Location;->mTime:J
    invoke-static {v0, v6, v7}, Landroid/location/Location;->access$002(Landroid/location/Location;J)J

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    # setter for: Landroid/location/Location;->mElapsedRealtimeNanos:J
    invoke-static {v0, v6, v7}, Landroid/location/Location;->access$102(Landroid/location/Location;J)J

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    # setter for: Landroid/location/Location;->mLatitude:D
    invoke-static {v0, v6, v7}, Landroid/location/Location;->access$202(Landroid/location/Location;D)D

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    # setter for: Landroid/location/Location;->mLongitude:D
    invoke-static {v0, v6, v7}, Landroid/location/Location;->access$302(Landroid/location/Location;D)D

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7c

    move v2, v3

    :goto_2e
    # setter for: Landroid/location/Location;->mHasAltitude:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$402(Landroid/location/Location;Z)Z

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    # setter for: Landroid/location/Location;->mAltitude:D
    invoke-static {v0, v6, v7}, Landroid/location/Location;->access$502(Landroid/location/Location;D)D

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    move v2, v3

    :goto_3f
    # setter for: Landroid/location/Location;->mHasSpeed:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$602(Landroid/location/Location;Z)Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mSpeed:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$702(Landroid/location/Location;F)F

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_80

    move v2, v3

    :goto_50
    # setter for: Landroid/location/Location;->mHasBearing:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$802(Landroid/location/Location;Z)Z

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mBearing:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$902(Landroid/location/Location;F)F

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_82

    move v2, v3

    :goto_61
    # setter for: Landroid/location/Location;->mHasAccuracy:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$1002(Landroid/location/Location;Z)Z

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mAccuracy:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$1102(Landroid/location/Location;F)F

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Landroid/location/Location;->mExtras:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/location/Location;->access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_84

    :goto_78
    # setter for: Landroid/location/Location;->mIsFromMockProvider:Z
    invoke-static {v0, v3}, Landroid/location/Location;->access$1302(Landroid/location/Location;Z)Z

    .line 883
    return-object v0

    :cond_7c
    move v2, v4

    .line 873
    goto :goto_2e

    :cond_7e
    move v2, v4

    .line 875
    goto :goto_3f

    :cond_80
    move v2, v4

    .line 877
    goto :goto_50

    :cond_82
    move v2, v4

    .line 879
    goto :goto_61

    :cond_84
    move v3, v4

    .line 882
    goto :goto_78
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 888
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
