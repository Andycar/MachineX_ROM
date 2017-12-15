.class final Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;
.super Ljava/lang/Object;
.source "SmartClipMetaTagArrayImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
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
        "Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    const-string v1, "SmartClipMetaTagArrayImpl"

    const-string v2, "SmartClipMetaTagArrayImpl.createFromParcel called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 208
    .local v0, "data":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 209
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 213
    new-array v0, p1, [Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;->newArray(I)[Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    return-object v0
.end method
