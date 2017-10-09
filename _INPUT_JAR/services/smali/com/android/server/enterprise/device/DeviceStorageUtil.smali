.class public Lcom/android/server/enterprise/device/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"

.field private static mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->ERROR:I

    .line 203
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->SIZE_INVALID:I

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 75
    return-void
.end method

.method private externalSdCardAvailable()Z
    .registers 3

    .prologue
    .line 228
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "externalSdCardState":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 230
    const/4 v1, 0x0

    .line 232
    :goto_9
    return v1

    :cond_a
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 220
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "externalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 222
    const/4 v1, 0x0

    .line 224
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 236
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "internalSdCardPath":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 8
    .param p1, "size"    # J

    .prologue
    .line 206
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    .line 207
    const/4 v1, 0x0

    .line 216
    :goto_7
    return-object v1

    .line 209
    :cond_8
    const/4 v1, 0x0

    .line 211
    .local v1, "sizeStr":Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 212
    :catch_10
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public getAvailableExternalMemorySize()J
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    .line 141
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 142
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 143
    .local v5, "path":Ljava/io/File;
    if-nez v5, :cond_f

    .line 154
    .end local v5    # "path":Ljava/io/File;
    :cond_e
    :goto_e
    return-wide v8

    .line 146
    .restart local v5    # "path":Ljava/io/File;
    :cond_f
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 147
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 148
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v7

    int-to-long v0, v7

    .line 149
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    goto :goto_e

    .line 151
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :catch_25
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .registers 13

    .prologue
    const-wide/16 v10, -0x1

    .line 78
    const-wide/16 v6, 0x0

    .line 84
    .local v6, "size":J
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 85
    .local v5, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 86
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 87
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 88
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 92
    if-nez v5, :cond_24

    .line 105
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_23
    return-wide v10

    .line 95
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "blockSize":J
    .restart local v5    # "path":Ljava/io/File;
    .restart local v8    # "stat":Landroid/os/StatFs;
    :cond_24
    new-instance v8, Landroid/os/StatFs;

    .end local v8    # "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v8    # "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 97
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v9

    int-to-long v0, v9

    .line 98
    mul-long v10, v0, v2

    add-long/2addr v6, v10

    move-wide v10, v6

    .line 101
    goto :goto_23

    .line 102
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :catch_3c
    move-exception v4

    .line 103
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    .line 159
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 160
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 161
    .local v3, "path":Ljava/io/File;
    if-nez v3, :cond_f

    .line 172
    .end local v3    # "path":Ljava/io/File;
    :cond_e
    :goto_e
    return-wide v8

    .line 164
    .restart local v3    # "path":Ljava/io/File;
    :cond_f
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 166
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v5

    int-to-long v6, v5

    .line 167
    .local v6, "totalBlocks":J
    mul-long v8, v6, v0

    goto :goto_e

    .line 169
    .end local v0    # "blockSize":J
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :catch_25
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .registers 13

    .prologue
    const-wide/16 v10, -0x1

    .line 109
    const-wide/16 v4, 0x0

    .line 115
    .local v4, "size":J
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 116
    .local v3, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 118
    .local v0, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v8, v7

    .line 119
    .local v8, "totalBlocks":J
    mul-long v4, v8, v0

    .line 122
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 123
    if-nez v3, :cond_24

    .line 136
    .end local v0    # "blockSize":J
    .end local v3    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    .end local v8    # "totalBlocks":J
    :goto_23
    return-wide v10

    .line 126
    .restart local v0    # "blockSize":J
    .restart local v3    # "path":Ljava/io/File;
    .restart local v6    # "stat":Landroid/os/StatFs;
    .restart local v8    # "totalBlocks":J
    :cond_24
    new-instance v6, Landroid/os/StatFs;

    .end local v6    # "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v6    # "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 128
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v7

    int-to-long v8, v7

    .line 129
    mul-long v10, v8, v0

    add-long/2addr v4, v10

    move-wide v10, v4

    .line 132
    goto :goto_23

    .line 133
    .end local v0    # "blockSize":J
    .end local v3    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    .end local v8    # "totalBlocks":J
    :catch_3c
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
