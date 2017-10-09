.class public Lcom/sec/android/allshare/dmrservice/BGMList;
.super Ljava/lang/Object;
.source "BGMList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/BGMList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bgmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/BGM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/sec/android/allshare/dmrservice/BGMList$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/BGMList$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/BGMList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGMList;->bgmList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGMList;->bgmList:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/allshare/dmrservice/BGMList;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/BGMList;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGMList;->bgmList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/allshare/dmrservice/BGM;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGMList;->bgmList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    return-void
.end method
