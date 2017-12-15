.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final DEBUG_NATIVE:Z = false

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 11
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_17

    aget-wide v0, v2, v3

    .line 170
    .local v0, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7, p2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, "res":I
    if-eq v5, v6, :cond_14

    .line 175
    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :goto_13
    return v5

    .line 169
    .restart local v0    # "apkHandle":J
    .restart local v5    # "res":I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :cond_17
    move v5, v6

    .line 175
    goto :goto_13
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .registers 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 292
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "abi":I
    if-ltz v0, :cond_26

    .line 298
    aget-object v5, p2, v0

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_24

    .line 301
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v3, "isaSubdir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 303
    move-object v4, v3

    .line 308
    .end local v3    # "isaSubdir":Ljava/io/File;
    .local v4, "subDir":Ljava/io/File;
    :goto_1a
    aget-object v5, p2, v0

    invoke-static {p0, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, "copyRet":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_26

    .line 314
    .end local v1    # "copyRet":I
    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v4    # "subDir":Ljava/io/File;
    :goto_23
    return v1

    .line 305
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_24
    move-object v4, p1

    .restart local v4    # "subDir":Ljava/io/File;
    goto :goto_1a

    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v4    # "subDir":Ljava/io/File;
    :cond_26
    move v1, v0

    .line 314
    goto :goto_23
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 12
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;

    .prologue
    const/16 v8, -0x71

    const/16 v7, -0x72

    const/4 v4, 0x1

    .line 320
    :try_start_5
    iget-boolean v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v5, :cond_7d

    .line 324
    if-eqz p2, :cond_1a

    const-string v5, "-"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 325
    const-string v5, "NativeHelper"

    const-string v6, "Ignoring abiOverride for multi arch application."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1a
    const/16 v1, -0x72

    .line 329
    .local v1, "copyRet":I
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_47

    .line 330
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, p1, v5, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 332
    if-gez v1, :cond_47

    if-eq v1, v7, :cond_47

    if-eq v1, v8, :cond_47

    .line 334
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v1    # "copyRet":I
    :goto_46
    return v1

    .line 339
    .restart local v1    # "copyRet":I
    :cond_47
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_cd

    .line 340
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {p0, p1, v5, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 342
    if-gez v1, :cond_cd

    if-eq v1, v7, :cond_cd

    if-eq v1, v8, :cond_cd

    .line 344
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_71} :catch_72

    goto :goto_46

    .line 372
    .end local v1    # "copyRet":I
    :catch_72
    move-exception v3

    .line 373
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NativeHelper"

    const-string v5, "Copying native libraries failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/16 v1, -0x6e

    goto :goto_46

    .line 349
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7d
    const/4 v2, 0x0

    .line 350
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    :try_start_7e
    const-string v5, "-"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 351
    const/4 v2, 0x0

    .line 356
    :cond_87
    :goto_87
    if-eqz v2, :cond_ca

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    .line 358
    .local v0, "abiList":[Ljava/lang/String;
    :goto_8f
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9e

    if-nez v2, :cond_9e

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 360
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 363
    :cond_9e
    const/4 v5, 0x1

    invoke-static {p0, p1, v0, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    move-result v1

    .line 365
    .restart local v1    # "copyRet":I
    if-gez v1, :cond_cd

    if-eq v1, v7, :cond_cd

    .line 366
    const-string v4, "NativeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure copying native libraries [errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 352
    .end local v0    # "abiList":[Ljava/lang/String;
    .end local v1    # "copyRet":I
    :cond_c6
    if-eqz p2, :cond_87

    .line 353
    move-object v2, p2

    goto :goto_87

    .line 356
    :cond_ca
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_cc} :catch_72

    goto :goto_8f

    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .restart local v1    # "copyRet":I
    :cond_cd
    move v1, v4

    .line 371
    goto/16 :goto_46
.end method

.method private static createNativeLibrarySubdir(Ljava/io/File;)V
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_60

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 261
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    sget v3, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_41} :catch_42

    .line 273
    :cond_41
    return-void

    .line 266
    :catch_42
    move-exception v0

    .line 267
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 270
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_60
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 271
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .registers 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    .prologue
    .line 186
    const/16 v3, -0x72

    .line 187
    .local v3, "finalRes":I
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_6
    if-ge v4, v5, :cond_26

    aget-wide v0, v2, v4

    .line 188
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, "res":I
    const/16 v7, -0x72

    if-ne v6, v7, :cond_15

    .line 187
    :cond_12
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 191
    :cond_15
    const/16 v7, -0x71

    if-ne v6, v7, :cond_1e

    .line 194
    if-gez v3, :cond_12

    .line 195
    const/16 v3, -0x71

    goto :goto_12

    .line 197
    :cond_1e
    if-ltz v6, :cond_27

    .line 199
    if-ltz v3, :cond_24

    if-ge v6, v3, :cond_12

    .line 200
    :cond_24
    move v3, v6

    goto :goto_12

    .end local v0    # "apkHandle":J
    .end local v6    # "res":I
    :cond_26
    move v6, v3

    .line 207
    :cond_27
    return v6
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .registers 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 422
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_2e

    aget-wide v0, v2, v3

    .line 423
    .local v0, "apkHandle":J
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v5

    .line 424
    .local v5, "res":I
    if-gez v5, :cond_28

    .line 425
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error scanning APK, code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 426
    :cond_28
    if-ne v5, v6, :cond_2b

    .line 430
    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :goto_2a
    return v6

    .line 422
    .restart local v0    # "apkHandle":J
    .restart local v5    # "res":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 430
    .end local v0    # "apkHandle":J
    .end local v5    # "res":I
    :cond_2e
    const/4 v6, 0x0

    goto :goto_2a
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .registers 7
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 232
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 233
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_48

    .line 234
    const/4 v1, 0x0

    .local v1, "nn":I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_48

    .line 239
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 240
    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 234
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 241
    :cond_21
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 242
    const-string v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 248
    .end local v1    # "nn":I
    :cond_48
    if-eqz p1, :cond_6c

    .line 249
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 250
    const-string v2, "NativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "files":[Ljava/io/File;
    :cond_6c
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .registers 3
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_3

    .line 216
    :goto_2
    return-void

    .line 215
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_2
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 12
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 153
    const-wide/16 v6, 0x0

    .line 154
    .local v6, "sum":J
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_6
    if-ge v3, v4, :cond_12

    aget-wide v0, v2, v3

    .line 155
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 157
    .end local v0    # "apkHandle":J
    :cond_12
    return-wide v6
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .registers 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "abi":I
    if-ltz v0, :cond_d

    .line 278
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v2

    .line 280
    :goto_c
    return-wide v2

    :cond_d
    const-wide/16 v2, 0x0

    goto :goto_c
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    const-wide/16 v2, 0x0

    .line 381
    .local v2, "sum":J
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    if-eqz v4, :cond_30

    .line 385
    if-eqz p1, :cond_17

    const-string v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 386
    const-string v4, "NativeHelper"

    const-string v5, "Ignoring abiOverride for multi arch application."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_17
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_23

    .line 390
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 393
    :cond_23
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2f

    .line 394
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 413
    :cond_2f
    :goto_2f
    return-wide v2

    .line 397
    :cond_30
    const/4 v1, 0x0

    .line 398
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 399
    const/4 v1, 0x0

    .line 404
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_5b

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 406
    .local v0, "abiList":[Ljava/lang/String;
    :goto_42
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_51

    if-nez v1, :cond_51

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 408
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 411
    :cond_51
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_2f

    .line 400
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_57
    if-eqz p1, :cond_3a

    .line 401
    move-object v1, p1

    goto :goto_3a

    .line 404
    :cond_5b
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_42
.end method
