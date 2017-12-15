.class final Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;
.super Ljava/lang/Object;
.source "SmartClipDataRepositoryImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
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
        "Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 684
    const-string v1, "SmartClipDataRepositoryImpl"

    const-string v2, "SmartClipDataRepositoryImpl.createFromParcel called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 687
    .local v0, "data":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 688
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 692
    new-array v0, p1, [Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;->newArray(I)[Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    return-object v0
.end method
