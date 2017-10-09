.class public Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;,
        Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/ItemMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field private mimeType:Ljava/lang/String;

.field private subtitleuri:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 44
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 44
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 220
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->readFromParcel(Landroid/os/Parcel;)V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "conType":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 238
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return-void
.end method
