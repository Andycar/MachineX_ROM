.class final Landroid/hardware/location/ActivityRecognitionEvent$1;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionEvent;
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
        "Landroid/hardware/location/ActivityRecognitionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityRecognitionEvent;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "activity":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "eventType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    .local v2, "timestampNs":J
    new-instance v4, Landroid/hardware/location/ActivityRecognitionEvent;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityRecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/ActivityRecognitionEvent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Landroid/hardware/location/ActivityRecognitionEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionEvent$1;->newArray(I)[Landroid/hardware/location/ActivityRecognitionEvent;

    move-result-object v0

    return-object v0
.end method
