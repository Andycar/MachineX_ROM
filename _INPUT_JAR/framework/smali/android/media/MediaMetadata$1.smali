.class final Landroid/media/MediaMetadata$1;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadata;
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
        "Landroid/media/MediaMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaMetadata;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 513
    new-instance v0, Landroid/media/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;Landroid/media/MediaMetadata$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/MediaMetadata;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 518
    new-array v0, p1, [Landroid/media/MediaMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata$1;->newArray(I)[Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method
