.class public Landroid/dirEncryption/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    .line 26
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    .line 34
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 35
    sput v2, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 33
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 67
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 3

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 233
    const-string v1, "EncPrefs found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 239
    :goto_10
    return-object v0

    .line 236
    :cond_11
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .registers 3
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 6

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 49
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_1
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v2, v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    .line 55
    :goto_e
    if-nez v2, :cond_1c

    .line 56
    const/4 v3, 0x0

    .line 58
    :goto_11
    return-object v3

    .line 50
    :catch_12
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception:: unable to get Storage Service"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    goto :goto_11
.end method

.method private haveEncPrefs()Z
    .registers 4

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 246
    const/4 v1, 0x1

    .line 249
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_9
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_9
    return-void
.end method

.method private restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 11

    .prologue
    .line 253
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 255
    .local v4, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v2, Ljava/io/File;

    const-string v8, "/efs/"

    const-string v9, "DirEncryption.Pref"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_22

    .line 257
    :cond_1a
    const-string/jumbo v8, "unable to get enc properties"

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    move-object v5, v4

    .line 281
    .end local v4    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v5, "policies":Ljava/lang/Object;
    :goto_21
    return-object v5

    .line 261
    .end local v5    # "policies":Ljava/lang/Object;
    .restart local v4    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_22
    const/4 v6, 0x0

    .line 263
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_23
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_67
    .catchall {:try_start_23 .. :try_end_28} :catchall_5d

    .line 264
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_28
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [C

    .line 265
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 267
    .local v3, "len":I
    if-lez v3, :cond_44

    .line 268
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3d} :catch_4a
    .catchall {:try_start_28 .. :try_end_3d} :catchall_64

    move-result-object v4

    .line 277
    :goto_3e
    :try_start_3e
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_5a

    move-object v6, v7

    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :goto_42
    move-object v5, v4

    .line 281
    .restart local v5    # "policies":Ljava/lang/Object;
    goto :goto_21

    .line 270
    .end local v5    # "policies":Ljava/lang/Object;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "len":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_44
    :try_start_44
    const-string v8, "There is no data to read for enc properties."

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_64

    goto :goto_3e

    .line 272
    .end local v0    # "buf":[C
    .end local v3    # "len":I
    :catch_4a
    move-exception v1

    move-object v6, v7

    .line 273
    .end local v7    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :goto_4c
    :try_start_4c
    const-string v8, "IOException:: unable to get enc properties"

    invoke-static {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_5d

    .line 277
    :try_start_54
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_42

    .line 278
    :catch_58
    move-exception v8

    goto :goto_42

    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "len":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_5a
    move-exception v8

    move-object v6, v7

    .line 279
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_42

    .line 276
    .end local v0    # "buf":[C
    .end local v3    # "len":I
    :catchall_5d
    move-exception v8

    .line 277
    :goto_5e
    :try_start_5e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    .line 278
    :goto_61
    throw v8

    :catch_62
    move-exception v9

    goto :goto_61

    .line 276
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_64
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_5e

    .line 272
    :catch_67
    move-exception v1

    goto :goto_4c
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .registers 3

    .prologue
    .line 124
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .registers 3

    .prologue
    .line 178
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 154
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_8

    .line 163
    :cond_7
    :goto_7
    return-object v4

    .line 156
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 157
    aget-object v1, v2, v0

    .line 158
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_28

    const-string/jumbo v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 160
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 156
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 3

    .prologue
    .line 129
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 71
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_13

    .line 72
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_16

    .line 74
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 79
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_13
    :goto_13
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 76
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_16
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getSavedUserID()I
    .registers 2

    .prologue
    .line 195
    sget v0, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .registers 2

    .prologue
    .line 187
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 118
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_f

    .line 119
    const/4 v1, 0x0

    .line 120
    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public isExternalSDRemovable()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 140
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_8

    .line 149
    :cond_7
    :goto_7
    return v4

    .line 142
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 143
    aget-object v1, v2, v0

    .line 144
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_25

    const-string/jumbo v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 146
    const/4 v4, 0x1

    goto :goto_7

    .line 142
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .registers 4

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 89
    const/4 v1, 0x1

    :goto_c
    return v1

    .line 85
    :catch_d
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .registers 5
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1f

    .line 168
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 169
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_18

    move v0, v1

    .line 174
    :goto_17
    return v0

    .line 171
    :cond_18
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 172
    const/4 v0, 0x1

    goto :goto_17

    :cond_1f
    move v0, v1

    .line 174
    goto :goto_17
.end method

.method public setSavedUserID(I)V
    .registers 2
    .param p1, "in"    # I

    .prologue
    .line 191
    sput p1, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    .line 192
    return-void
.end method

.method public setUserDiff(Z)V
    .registers 2
    .param p1, "in"    # Z

    .prologue
    .line 183
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 184
    return-void
.end method

.method public unmountHiddenVolume()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    .line 113
    :goto_22
    return v1

    .line 109
    :catch_23
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 111
    goto :goto_22
.end method

.method public unmountVolume()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "intentUnmount":Landroid/content/Intent;
    const-string/jumbo v4, "unmount"

    const-string/jumbo v5, "normal"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    const-string v4, "SD_CARD_ENCRYPTION_UNMOUNT intent has been sent"

    invoke-static {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 98
    :try_start_1e
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    .line 103
    :goto_2b
    return v2

    .line 99
    :catch_2c
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 101
    goto :goto_2b
.end method

.method public unmountVolumeByDiffUser()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 201
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 202
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    .line 210
    :goto_14
    return v1

    .line 203
    :cond_15
    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 204
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 205
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    goto :goto_14

    .line 206
    :cond_24
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_35
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_40

    .line 207
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    goto :goto_14

    .line 210
    :cond_40
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public updateSDcardState()V
    .registers 4

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v2

    if-eq v1, v2, :cond_29

    .line 215
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_29

    .line 216
    :cond_16
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 217
    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_21

    .line 218
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 221
    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_21
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_29

    .line 222
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    .line 226
    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_29
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 227
    return-void
.end method
