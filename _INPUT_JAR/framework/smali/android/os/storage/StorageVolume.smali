.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private mActivitySecureContainer:Z

.field private final mAllowMassStorage:Z

.field private final mDescriptionId:I

.field private final mEmulated:Z

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private mState:Ljava/lang/String;

.field private mStorageId:I

.field private mSubSystem:Ljava/lang/String;

.field private mUserLabel:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 310
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    move v0, v1

    :goto_23
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_78

    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_44
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    :goto_73
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 95
    return-void

    :cond_76
    move v0, v2

    .line 83
    goto :goto_23

    :cond_78
    move v0, v2

    .line 84
    goto :goto_2c

    :cond_7a
    move v0, v2

    .line 85
    goto :goto_35

    :cond_7c
    move v0, v2

    .line 87
    goto :goto_44

    :cond_7e
    move v1, v2

    .line 94
    goto :goto_73
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/storage/StorageVolume$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V
    .registers 13
    .param p1, "path"    # Ljava/io/File;
    .param p2, "descriptionId"    # I
    .param p3, "primary"    # Z
    .param p4, "removable"    # Z
    .param p5, "emulated"    # Z
    .param p6, "mtpReserveSpace"    # I
    .param p7, "allowMassStorage"    # Z
    .param p8, "maxFileSize"    # J
    .param p10, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 67
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 68
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 69
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 70
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 71
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 72
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 73
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 74
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 75
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "path"    # Ljava/io/File;
    .param p2, "descriptionId"    # I
    .param p3, "primary"    # Z
    .param p4, "removable"    # Z
    .param p5, "emulated"    # Z
    .param p6, "mtpReserveSpace"    # I
    .param p7, "allowMassStorage"    # Z
    .param p8, "maxFileSize"    # J
    .param p10, "owner"    # Landroid/os/UserHandle;
    .param p11, "subSystem"    # Ljava/lang/String;
    .param p12, "activitySecureContainer"    # Z

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 355
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 356
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 357
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 358
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 359
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 360
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 361
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 362
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 363
    iput-object p11, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 364
    iput-boolean p12, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 365
    return-void
.end method

.method public static fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;
    .registers 16
    .param p0, "template"    # Landroid/os/storage/StorageVolume;
    .param p1, "path"    # Ljava/io/File;
    .param p2, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 99
    new-instance v0, Landroid/os/storage/StorageVolume;

    iget v2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    iget-boolean v3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    iget-boolean v4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iget-boolean v5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iget v6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iget-boolean v7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iget-wide v8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    iget-object v11, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    iget-boolean v12, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    move-object v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public allowMassStorage()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 289
    const-string v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 291
    const-string/jumbo v0, "mStorageId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string/jumbo v0, "mPath"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string/jumbo v0, "mDescriptionId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string/jumbo v0, "mPrimary"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    const-string/jumbo v0, "mRemovable"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string/jumbo v0, "mEmulated"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string/jumbo v0, "mMtpReserveSpace"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v0, "mAllowMassStorage"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string/jumbo v0, "mMaxFileSize"

    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v0, "mOwner"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v0, "mUuid"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string/jumbo v0, "mUserLabel"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string/jumbo v0, "mState"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    const-string/jumbo v0, "mSubSystem"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const-string v0, "mActivitySecureContainer"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 307
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 268
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 269
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 270
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 272
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getActivitySecureContainer()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionId()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    return v0
.end method

.method public getFatVolumeId()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 236
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_10

    .line 242
    :cond_f
    :goto_f
    return v1

    .line 240
    :cond_10
    :try_start_10
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1f} :catch_22

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_f

    .line 241
    :catch_22
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_f
.end method

.method public getMaxFileSize()J
    .registers 3

    .prologue
    .line 212
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getSubSystem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setActivitySecureContainer(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 390
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setStorageId(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 175
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 176
    return-void
.end method

.method public setSubSystem(Ljava/lang/String;)V
    .registers 2
    .param p1, "predefinedSubSystem"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setUserLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "userLabel"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 282
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 283
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    if-eqz v0, :cond_60

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_62

    move v0, v1

    :goto_22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_64

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_66

    move v0, v1

    :goto_37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-wide v4, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 338
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 339
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    if-eqz v0, :cond_68

    :goto_5c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return-void

    :cond_60
    move v0, v2

    .line 332
    goto :goto_1a

    :cond_62
    move v0, v2

    .line 333
    goto :goto_22

    :cond_64
    move v0, v2

    .line 334
    goto :goto_2a

    :cond_66
    move v0, v2

    .line 336
    goto :goto_37

    :cond_68
    move v1, v2

    .line 343
    goto :goto_5c
.end method
