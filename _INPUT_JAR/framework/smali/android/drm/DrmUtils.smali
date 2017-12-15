.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$1;,
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .registers 3
    .param p0, "extendedMetadata"    # [B

    .prologue
    .line 110
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$1;)V

    return-object v0
.end method

.method private static quietlyDispose(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 84
    if-eqz p0, :cond_5

    .line 85
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 90
    :cond_5
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private static quietlyDispose(Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 94
    if-eqz p0, :cond_5

    .line 95
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 100
    :cond_5
    :goto_5
    return-void

    .line 97
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static readBytes(Ljava/io/File;)[B
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v2, "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 50
    .local v1, "data":[B
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 51
    .local v3, "length":I
    if-lez v3, :cond_16

    .line 52
    new-array v1, v3, [B

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1d

    .line 57
    :cond_16
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 58
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 60
    return-object v1

    .line 57
    .end local v3    # "length":I
    :catchall_1d
    move-exception v4

    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    .line 58
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    return-void
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 69
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    .line 70
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 72
    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 75
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :cond_11
    return-void

    .line 72
    :catchall_12
    move-exception v2

    :goto_13
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    throw v2

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_17
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_13
.end method
