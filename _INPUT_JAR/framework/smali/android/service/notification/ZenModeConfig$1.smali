.class final Landroid/service/notification/ZenModeConfig$1;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
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
        "Landroid/service/notification/ZenModeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenModeConfig;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 482
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, p1}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/notification/ZenModeConfig;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 487
    new-array v0, p1, [Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$1;->newArray(I)[Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method
