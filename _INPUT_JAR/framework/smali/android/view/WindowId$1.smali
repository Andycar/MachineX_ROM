.class final Landroid/view/WindowId$1;
.super Ljava/lang/Object;
.source "WindowId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId;
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
        "Landroid/view/WindowId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowId;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 202
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/view/WindowId;

    invoke-direct {v1, v0}, Landroid/view/WindowId;-><init>(Landroid/os/IBinder;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/view/WindowId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/WindowId;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 206
    new-array v0, p1, [Landroid/view/WindowId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/view/WindowId$1;->newArray(I)[Landroid/view/WindowId;

    move-result-object v0

    return-object v0
.end method
