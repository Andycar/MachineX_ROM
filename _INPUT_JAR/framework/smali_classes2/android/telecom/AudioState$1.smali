.class final Landroid/telecom/AudioState$1;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/AudioState;
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
        "Landroid/telecom/AudioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-nez v3, :cond_15

    const/4 v0, 0x0

    .line 136
    .local v0, "isMuted":Z
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "route":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "supportedRouteMask":I
    new-instance v3, Landroid/telecom/AudioState;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/AudioState;-><init>(ZII)V

    return-object v3

    .line 135
    .end local v0    # "isMuted":Z
    .end local v1    # "route":I
    .end local v2    # "supportedRouteMask":I
    :cond_15
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/AudioState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/AudioState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 143
    new-array v0, p1, [Landroid/telecom/AudioState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/telecom/AudioState$1;->newArray(I)[Landroid/telecom/AudioState;

    move-result-object v0

    return-object v0
.end method
