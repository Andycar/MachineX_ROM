.class final Landroid/sec/clipboard/data/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardData;
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
        "Landroid/sec/clipboard/data/ClipboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, "format":I
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 194
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_d

    .line 199
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->readFormSource(Landroid/os/Parcel;)V

    .line 201
    :cond_d
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 206
    new-array v0, p1, [Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->newArray(I)[Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method
