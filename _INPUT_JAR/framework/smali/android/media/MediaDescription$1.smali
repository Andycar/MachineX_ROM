.class final Landroid/media/MediaDescription$1;
.super Ljava/lang/Object;
.source "MediaDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescription;
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
        "Landroid/media/MediaDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaDescription;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    new-instance v0, Landroid/media/MediaDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaDescription;-><init>(Landroid/os/Parcel;Landroid/media/MediaDescription$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/MediaDescription;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 169
    new-array v0, p1, [Landroid/media/MediaDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$1;->newArray(I)[Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method
