.class final Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;
.super Ljava/lang/Object;
.source "SmartClipMetaTagImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
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
        "Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v1, "SmartClipMetaTagImpl"

    const-string v2, "SmartClipMetaTagImpl.createFromParcel called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-direct {v0, v3, v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, "data":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 152
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 156
    new-array v0, p1, [Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;->newArray(I)[Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-result-object v0

    return-object v0
.end method
