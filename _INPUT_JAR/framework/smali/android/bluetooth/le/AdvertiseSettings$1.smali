.class final Landroid/bluetooth/le/AdvertiseSettings$1;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
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
        "Landroid/bluetooth/le/AdvertiseSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseSettings;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 179
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertiseSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseSettings;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v0

    return-object v0
.end method
