.class final Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ItemMetaData;
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
        "Lcom/sec/android/allshare/dmrservice/ItemMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 210
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;-><init>(Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/dmrservice/ItemMetaData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 215
    new-array v0, p1, [Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;->newArray(I)[Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    move-result-object v0

    return-object v0
.end method
