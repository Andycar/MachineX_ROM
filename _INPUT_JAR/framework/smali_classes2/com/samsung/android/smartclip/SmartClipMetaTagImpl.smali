.class public Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
.super Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
.source "SmartClipMetaTagImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SmartClipMetaTagImpl"


# instance fields
.field protected mExtraData:[B

.field protected mParcelableData:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 35
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 35
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    .line 83
    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "extraData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 35
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    .line 72
    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraData()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->setType(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->setValue(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "extraDataLen":I
    if-lez v0, :cond_2f

    .line 130
    new-array v5, v0, [B

    iput-object v5, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    .line 131
    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 137
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    move v1, v4

    .line 138
    .local v1, "parcelableDataExist":Z
    :goto_26
    if-ne v1, v4, :cond_34

    .line 139
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    .line 143
    :goto_2e
    return-void

    .line 133
    .end local v1    # "parcelableDataExist":Z
    :cond_2f
    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    goto :goto_1f

    .line 137
    :cond_32
    const/4 v1, 0x0

    goto :goto_26

    .line 141
    .restart local v1    # "parcelableDataExist":Z
    :cond_34
    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    goto :goto_2e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    if-eqz v0, :cond_2c

    .line 103
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mExtraData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    :goto_1e
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    if-eqz v0, :cond_30

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    :goto_2b
    return-void

    .line 106
    :cond_2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 114
    :cond_30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b
.end method
