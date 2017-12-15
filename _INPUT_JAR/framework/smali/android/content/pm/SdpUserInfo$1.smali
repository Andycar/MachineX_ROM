.class final Landroid/content/pm/SdpUserInfo$1;
.super Ljava/lang/Object;
.source "SdpUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SdpUserInfo;
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
        "Landroid/content/pm/SdpUserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SdpUserInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 75
    new-instance v0, Landroid/content/pm/SdpUserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/SdpUserInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/SdpUserInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/pm/SdpUserInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SdpUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/SdpUserInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 79
    new-array v0, p1, [Landroid/content/pm/SdpUserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/pm/SdpUserInfo$1;->newArray(I)[Landroid/content/pm/SdpUserInfo;

    move-result-object v0

    return-object v0
.end method
