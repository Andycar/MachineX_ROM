.class final Landroid/graphics/Bitmap$1;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1645
    # invokes: Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/graphics/Bitmap;->access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1646
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_e

    .line 1647
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to unparcel Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1649
    :cond_e
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1637
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1652
    new-array v0, p1, [Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 1637
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->newArray(I)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
