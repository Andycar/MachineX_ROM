.class final Landroid/media/tv/TvStreamConfig$1;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
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
        "Landroid/media/tv/TvStreamConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Landroid/media/tv/TvStreamConfig$Builder;

    invoke-direct {v1}, Landroid/media/tv/TvStreamConfig$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->streamId(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->type(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvStreamConfig$Builder;->generation(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig$Builder;->build()Landroid/media/tv/TvStreamConfig;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v1

    .line 59
    :goto_31
    return-object v1

    .line 57
    :catch_32
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    const-string v2, "Exception creating TvStreamConfig from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvStreamConfig;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 65
    new-array v0, p1, [Landroid/media/tv/TvStreamConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->newArray(I)[Landroid/media/tv/TvStreamConfig;

    move-result-object v0

    return-object v0
.end method
