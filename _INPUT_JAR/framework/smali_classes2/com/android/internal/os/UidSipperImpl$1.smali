.class final Lcom/android/internal/os/UidSipperImpl$1;
.super Ljava/lang/Object;
.source "UidSipperImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidSipperImpl;
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
        "Lcom/android/internal/os/UidSipperImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/UidSipperImpl;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 314
    new-instance v0, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/UidSipperImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/os/UidSipperImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/UidSipperImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/os/UidSipperImpl;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/os/UidSipperImpl$1;->newArray(I)[Lcom/android/internal/os/UidSipperImpl;

    move-result-object v0

    return-object v0
.end method
