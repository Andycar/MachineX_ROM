.class public Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceInfo"
.end annotation


# instance fields
.field private duration:Ljava/lang/String;

.field private filesize:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    return-void
.end method
