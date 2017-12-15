.class public final Landroid/bluetooth/BtUCallbackData;
.super Ljava/lang/Object;
.source "BtUCallbackData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BtUCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BtUCallbackData"


# instance fields
.field private mSvcName:Ljava/lang/String;

.field private mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Landroid/bluetooth/BtUCallbackData$1;

    invoke-direct {v0}, Landroid/bluetooth/BtUCallbackData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BtUCallbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "BtUCallbackData"

    const-string v1, "BtUCallbackData creator with Parcel"

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    .line 61
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 62
    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    .line 64
    :cond_2b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .registers 3
    .param p1, "svcName"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getSvcName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    const-string v0, "BtUCallbackData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSvcName called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .registers 4

    .prologue
    .line 108
    const-string v0, "BtUCallbackData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUuid called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    const-string v0, "BtUCallbackData"

    const-string/jumbo v3, "writeToParcel"

    invoke-static {v0, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 88
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    :cond_1b
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_2e

    :goto_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_2b

    .line 92
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    :cond_2b
    return-void

    :cond_2c
    move v0, v2

    .line 86
    goto :goto_f

    :cond_2e
    move v1, v2

    .line 90
    goto :goto_1f
.end method
