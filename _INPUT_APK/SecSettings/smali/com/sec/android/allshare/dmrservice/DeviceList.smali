.class public Lcom/sec/android/allshare/dmrservice/DeviceList;
.super Ljava/lang/Object;
.source "DeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/DeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private devList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/sec/android/allshare/dmrservice/DeviceList$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/DeviceList$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/DeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/allshare/dmrservice/DeviceList;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/allshare/dmrservice/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 112
    return-void
.end method
