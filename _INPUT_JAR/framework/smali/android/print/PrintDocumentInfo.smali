.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mContentType:I

.field private mDataSize:J

.field private mName:Ljava/lang/String;

.field private mPageCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 351
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintDocumentInfo$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/print/PrintDocumentInfo$1;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrintDocumentInfo;)V
    .registers 4
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 123
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 124
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 125
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p2, "x1"    # Landroid/print/PrintDocumentInfo$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    return-void
.end method

.method static synthetic access$102(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/print/PrintDocumentInfo;)I
    .registers 2
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 70
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method static synthetic access$202(Landroid/print/PrintDocumentInfo;I)I
    .registers 2
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return p1
.end method

.method static synthetic access$302(Landroid/print/PrintDocumentInfo;I)I
    .registers 2
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return p1
.end method

.method private contentTyepToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "contentType"    # I

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_c

    .line 267
    const-string v0, "CONTENT_TYPE_UNKNOWN"

    :goto_5
    return-object v0

    .line 261
    :pswitch_6
    const-string v0, "CONTENT_TYPE_DOCUMENT"

    goto :goto_5

    .line 264
    :pswitch_9
    const-string v0, "CONTENT_TYPE_PHOTO"

    goto :goto_5

    .line 259
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_5

    .line 243
    :cond_4
    :goto_4
    return v1

    .line 224
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 225
    goto :goto_4

    .line 227
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 228
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 230
    check-cast v0, Landroid/print/PrintDocumentInfo;

    .line 231
    .local v0, "other":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    move v1, v2

    .line 232
    goto :goto_4

    .line 234
    :cond_24
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget v4, v0, Landroid/print/PrintDocumentInfo;->mContentType:I

    if-eq v3, v4, :cond_2c

    move v1, v2

    .line 235
    goto :goto_4

    .line 237
    :cond_2c
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v4, v0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-eq v3, v4, :cond_34

    move v1, v2

    .line 238
    goto :goto_4

    .line 240
    :cond_34
    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iget-wide v6, v0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 241
    goto :goto_4
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return v0
.end method

.method public getDataSize()J
    .registers 3

    .prologue
    .line 180
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 209
    const/16 v0, 0x1f

    .line 210
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 211
    .local v1, "result":I
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/lit8 v1, v2, 0x1f

    .line 212
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    add-int v1, v2, v3

    .line 213
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    add-int v1, v2, v3

    .line 214
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 215
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v3, v4

    add-int/2addr v2, v3

    shr-int/lit8 v1, v2, 0x20

    .line 216
    return v1

    .line 211
    :cond_2b
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public setDataSize(J)V
    .registers 4
    .param p1, "dataSize"    # J

    .prologue
    .line 191
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintDocumentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTyepToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    return-void
.end method
