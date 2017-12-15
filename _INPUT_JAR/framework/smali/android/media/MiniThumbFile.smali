.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_INDEX:I = 0x8

.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final INDEX_FILE_VERSION:I = 0x3

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 187
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 188
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 189
    return-void
.end method

.method private indexFile()Ljava/io/RandomAccessFile;
    .registers 8

    .prologue
    .line 156
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_58

    .line 157
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldIndexFile()V

    .line 158
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 162
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "f":Ljava/io/File;
    :try_start_42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_5b

    .line 178
    :goto_4c
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 179
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 182
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_58
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 169
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_5b
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5c
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_67

    goto :goto_4c

    .line 174
    :catch_67
    move-exception v4

    goto :goto_4c
.end method

.method private indexFilePath(I)Ljava/lang/String;
    .registers 5
    .param p1, "version"    # I

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbindex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 75
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 78
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_3f

    .line 79
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 81
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 84
    :cond_3f
    monitor-exit v3

    return-object v0

    .line 75
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .registers 8

    .prologue
    .line 107
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_58

    .line 108
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 109
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 113
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "f":Ljava/io/File;
    :try_start_42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_5b

    .line 129
    :goto_4c
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 130
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 133
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_58
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 120
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_5b
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5c
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_67

    goto :goto_4c

    .line 125
    :catch_67
    move-exception v4

    goto :goto_4c
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .registers 5
    .param p1, "version"    # I

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .registers 4

    .prologue
    .line 95
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 99
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 104
    :cond_13
    :goto_13
    return-void

    .line 100
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method private removeOldIndexFile()V
    .registers 4

    .prologue
    .line 144
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->indexFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 148
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 153
    :cond_13
    :goto_13
    return-void

    .line 149
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 68
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 69
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 68
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 71
    :cond_20
    :try_start_20
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 72
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .registers 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_d

    .line 194
    :try_start_5
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_20
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 200
    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1b

    if-eqz v0, :cond_19

    .line 202
    :try_start_11
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mIndexFile:Ljava/io/RandomAccessFile;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1e
    .catchall {:try_start_11 .. :try_end_19} :catchall_1b

    .line 208
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 192
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :catch_1e
    move-exception v0

    goto :goto_19

    .line 196
    :catch_20
    move-exception v0

    goto :goto_d
.end method

.method public declared-synchronized getMagic(J)J
    .registers 22
    .param p1, "id"    # J

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v16

    .line 218
    .local v16, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_aa

    move-result-object v17

    .line 219
    .local v17, "ri":Ljava/io/RandomAccessFile;
    if-eqz v16, :cond_103

    if-eqz v17, :cond_103

    .line 220
    const/4 v13, 0x0

    .line 221
    .local v13, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v6, 0x8

    mul-long v4, v6, p1

    .line 222
    .local v4, "index":J
    const-wide/16 v14, -0x1

    .line 224
    .local v14, "pos":J
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x8

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_159

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_4e} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_4e} :catch_70
    .catchall {:try_start_14 .. :try_end_4e} :catchall_a3

    move-result-wide v8

    .line 242
    .end local v14    # "pos":J
    .local v8, "pos":J
    :goto_4f
    if-eqz v13, :cond_54

    :try_start_51
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_14f
    .catchall {:try_start_51 .. :try_end_54} :catchall_aa

    .line 249
    :cond_54
    :goto_54
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-gez v3, :cond_ad

    const-wide/16 v6, 0x0

    .line 281
    .end local v4    # "index":J
    .end local v8    # "pos":J
    .end local v13    # "lock":Ljava/nio/channels/FileLock;
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-wide v6

    .line 234
    .restart local v4    # "index":J
    .restart local v13    # "lock":Ljava/nio/channels/FileLock;
    .restart local v14    # "pos":J
    :catch_5e
    move-exception v2

    .line 235
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5f
    const-string v3, "MiniThumbFile"

    const-string v6, "Got exception checking file position: "

    invoke-static {v3, v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_a3

    .line 242
    if-eqz v13, :cond_6b

    :try_start_68
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6d
    .catchall {:try_start_68 .. :try_end_6b} :catchall_aa

    :cond_6b
    move-wide v8, v14

    .line 246
    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_54

    .line 244
    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :catch_6d
    move-exception v3

    move-wide v8, v14

    .line 247
    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_54

    .line 236
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :catch_70
    move-exception v2

    .line 238
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_71
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading position, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_71 .. :try_end_99} :catchall_a3

    .line 242
    if-eqz v13, :cond_9e

    :try_start_9b
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0
    .catchall {:try_start_9b .. :try_end_9e} :catchall_aa

    :cond_9e
    move-wide v8, v14

    .line 246
    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_54

    .line 244
    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :catch_a0
    move-exception v3

    move-wide v8, v14

    .line 247
    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_54

    .line 241
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :catchall_a3
    move-exception v3

    .line 242
    if-eqz v13, :cond_a9

    :try_start_a6
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_152
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    .line 246
    :cond_a9
    :goto_a9
    :try_start_a9
    throw v3
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    .line 217
    .end local v4    # "index":J
    .end local v13    # "lock":Ljava/nio/channels/FileLock;
    .end local v14    # "pos":J
    .end local v16    # "r":Ljava/io/RandomAccessFile;
    .end local v17    # "ri":Ljava/io/RandomAccessFile;
    :catchall_aa
    move-exception v3

    monitor-exit p0

    throw v3

    .line 252
    .restart local v4    # "index":J
    .restart local v8    # "pos":J
    .restart local v13    # "lock":Ljava/nio/channels/FileLock;
    .restart local v16    # "r":Ljava/io/RandomAccessFile;
    .restart local v17    # "ri":Ljava/io/RandomAccessFile;
    :cond_ad
    const/4 v13, 0x0

    .line 254
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v10, 0x9

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_fe

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_fe

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_f3} :catch_107
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_f3} :catch_117
    .catchall {:try_start_ae .. :try_end_f3} :catchall_148

    move-result-wide v6

    .line 274
    if-eqz v13, :cond_5c

    :try_start_f6
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fb
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_aa

    goto/16 :goto_5c

    .line 276
    :catch_fb
    move-exception v3

    goto/16 :goto_5c

    .line 274
    :cond_fe
    if-eqz v13, :cond_103

    :try_start_100
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_155
    .catchall {:try_start_100 .. :try_end_103} :catchall_aa

    .line 281
    .end local v4    # "index":J
    .end local v8    # "pos":J
    .end local v13    # "lock":Ljava/nio/channels/FileLock;
    :cond_103
    :goto_103
    const-wide/16 v6, 0x0

    goto/16 :goto_5c

    .line 266
    .restart local v4    # "index":J
    .restart local v8    # "pos":J
    .restart local v13    # "lock":Ljava/nio/channels/FileLock;
    :catch_107
    move-exception v2

    .line 267
    .local v2, "ex":Ljava/io/IOException;
    :try_start_108
    const-string v3, "MiniThumbFile"

    const-string v6, "Got exception checking file magic: "

    invoke-static {v3, v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_148

    .line 274
    if-eqz v13, :cond_103

    :try_start_111
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115
    .catchall {:try_start_111 .. :try_end_114} :catchall_aa

    goto :goto_103

    .line 276
    :catch_115
    move-exception v3

    goto :goto_103

    .line 268
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_117
    move-exception v2

    .line 270
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_118
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading magic, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_118 .. :try_end_140} :catchall_148

    .line 274
    if-eqz v13, :cond_103

    :try_start_142
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_146
    .catchall {:try_start_142 .. :try_end_145} :catchall_aa

    goto :goto_103

    .line 276
    :catch_146
    move-exception v3

    goto :goto_103

    .line 273
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_148
    move-exception v3

    .line 274
    if-eqz v13, :cond_14e

    :try_start_14b
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_157
    .catchall {:try_start_14b .. :try_end_14e} :catchall_aa

    .line 278
    :cond_14e
    :goto_14e
    :try_start_14e
    throw v3
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_aa

    .line 244
    :catch_14f
    move-exception v3

    goto/16 :goto_54

    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :catch_152
    move-exception v6

    goto/16 :goto_a9

    .line 276
    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    :catch_155
    move-exception v3

    goto :goto_103

    :catch_157
    move-exception v6

    goto :goto_14e

    .end local v8    # "pos":J
    .restart local v14    # "pos":J
    :cond_159
    move-wide v8, v14

    .end local v14    # "pos":J
    .restart local v8    # "pos":J
    goto/16 :goto_4f
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .registers 27
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v20

    .line 367
    .local v20, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_ce

    move-result-object v21

    .line 368
    .local v21, "ri":Ljava/io/RandomAccessFile;
    if-eqz v20, :cond_d

    if-nez v21, :cond_11

    :cond_d
    const/16 p3, 0x0

    .line 434
    .end local p3    # "data":[B
    :cond_f
    :goto_f
    monitor-exit p0

    return-object p3

    .line 371
    .restart local p3    # "data":[B
    :cond_11
    const/4 v15, 0x0

    .line 372
    .local v15, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v6, 0x8

    mul-long v4, v6, p1

    .line 373
    .local v4, "index":J
    const-wide/16 v18, -0x1

    .line 375
    .local v18, "pos":J
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x8

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v15

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1b8

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_52} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_52} :catch_92
    .catchall {:try_start_18 .. :try_end_52} :catchall_c7

    move-result-wide v8

    .line 393
    .end local v18    # "pos":J
    .local v8, "pos":J
    :goto_53
    if-eqz v15, :cond_58

    :try_start_55
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_1ae
    .catchall {:try_start_55 .. :try_end_58} :catchall_ce

    .line 400
    :cond_58
    :goto_58
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-gez v3, :cond_d1

    const/16 p3, 0x0

    goto :goto_f

    .line 385
    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catch_61
    move-exception v2

    .line 386
    .local v2, "ex":Ljava/io/IOException;
    :try_start_62
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception when reading position id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_c7

    .line 393
    if-eqz v15, :cond_8b

    :try_start_88
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8e
    .catchall {:try_start_88 .. :try_end_8b} :catchall_ce

    :cond_8b
    move-wide/from16 v8, v18

    .line 397
    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_58

    .line 395
    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catch_8e
    move-exception v3

    move-wide/from16 v8, v18

    .line 398
    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_58

    .line 387
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catch_92
    move-exception v2

    .line 389
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_93
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading position, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_93 .. :try_end_bb} :catchall_c7

    .line 393
    if-eqz v15, :cond_c0

    :try_start_bd
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c3
    .catchall {:try_start_bd .. :try_end_c0} :catchall_ce

    :cond_c0
    move-wide/from16 v8, v18

    .line 397
    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_58

    .line 395
    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catch_c3
    move-exception v3

    move-wide/from16 v8, v18

    .line 398
    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    goto :goto_58

    .line 392
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catchall_c7
    move-exception v3

    .line 393
    if-eqz v15, :cond_cd

    :try_start_ca
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_1b1
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    .line 397
    :cond_cd
    :goto_cd
    :try_start_cd
    throw v3
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    .line 366
    .end local v4    # "index":J
    .end local v15    # "lock":Ljava/nio/channels/FileLock;
    .end local v18    # "pos":J
    .end local v20    # "r":Ljava/io/RandomAccessFile;
    .end local v21    # "ri":Ljava/io/RandomAccessFile;
    :catchall_ce
    move-exception v3

    monitor-exit p0

    throw v3

    .line 403
    .restart local v4    # "index":J
    .restart local v8    # "pos":J
    .restart local v15    # "lock":Ljava/nio/channels/FileLock;
    .restart local v20    # "r":Ljava/io/RandomAccessFile;
    .restart local v21    # "ri":Ljava/io/RandomAccessFile;
    :cond_d1
    const/4 v15, 0x0

    .line 405
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 406
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v10, 0x2710

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v15

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v22

    .line 408
    .local v22, "size":I
    const/16 v3, 0xd

    move/from16 v0, v22

    if-le v0, v3, :cond_140

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 411
    .local v13, "flag":B
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .line 412
    .local v16, "magic":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 414
    .local v14, "length":I
    add-int/lit8 v3, v14, 0xd

    move/from16 v0, v22

    if-lt v0, v3, :cond_140

    if-eqz v14, :cond_140

    const-wide/16 v6, 0x0

    cmp-long v3, v16, v6

    if-eqz v3, :cond_140

    const/4 v3, 0x1

    if-ne v13, v3, :cond_140

    move-object/from16 v0, p3

    array-length v3, v0

    if-lt v3, v14, :cond_140

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v6, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_136} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_136} :catch_176
    .catchall {:try_start_d2 .. :try_end_136} :catchall_1a7

    .line 428
    if-eqz v15, :cond_f

    :try_start_138
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13d
    .catchall {:try_start_138 .. :try_end_13b} :catchall_ce

    goto/16 :goto_f

    .line 430
    :catch_13d
    move-exception v3

    goto/16 :goto_f

    .line 428
    .end local v13    # "flag":B
    .end local v14    # "length":I
    .end local v16    # "magic":J
    :cond_140
    if-eqz v15, :cond_145

    :try_start_142
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_1b4
    .catchall {:try_start_142 .. :try_end_145} :catchall_ce

    .line 434
    .end local v22    # "size":I
    :cond_145
    :goto_145
    const/16 p3, 0x0

    goto/16 :goto_f

    .line 420
    :catch_149
    move-exception v2

    .line 421
    .local v2, "ex":Ljava/io/IOException;
    :try_start_14a
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception when reading thumbnail id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_14a .. :try_end_16e} :catchall_1a7

    .line 428
    if-eqz v15, :cond_145

    :try_start_170
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_173} :catch_174
    .catchall {:try_start_170 .. :try_end_173} :catchall_ce

    goto :goto_145

    .line 430
    :catch_174
    move-exception v3

    goto :goto_145

    .line 422
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_176
    move-exception v2

    .line 424
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_177
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading thumbnail, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catchall {:try_start_177 .. :try_end_19f} :catchall_1a7

    .line 428
    if-eqz v15, :cond_145

    :try_start_1a1
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_ce

    goto :goto_145

    .line 430
    :catch_1a5
    move-exception v3

    goto :goto_145

    .line 427
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1a7
    move-exception v3

    .line 428
    if-eqz v15, :cond_1ad

    :try_start_1aa
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1b6
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_ce

    .line 432
    :cond_1ad
    :goto_1ad
    :try_start_1ad
    throw v3
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_ce

    .line 395
    :catch_1ae
    move-exception v3

    goto/16 :goto_58

    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :catch_1b1
    move-exception v6

    goto/16 :goto_cd

    .line 430
    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    .restart local v22    # "size":I
    :catch_1b4
    move-exception v3

    goto :goto_145

    .end local v22    # "size":I
    :catch_1b6
    move-exception v6

    goto :goto_1ad

    .end local v8    # "pos":J
    .restart local v18    # "pos":J
    :cond_1b8
    move-wide/from16 v8, v18

    .end local v18    # "pos":J
    .restart local v8    # "pos":J
    goto/16 :goto_53
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .registers 26
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v16

    .line 287
    .local v16, "r":Ljava/io/RandomAccessFile;
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->indexFile()Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8d

    move-result-object v17

    .line 288
    .local v17, "ri":Ljava/io/RandomAccessFile;
    if-eqz v16, :cond_d

    if-nez v17, :cond_f

    .line 356
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 291
    :cond_f
    const/4 v13, 0x0

    .line 292
    .local v13, "lock":Ljava/nio/channels/FileLock;
    const-wide/16 v6, 0x8

    mul-long v4, v6, p2

    .line 293
    .local v4, "index":J
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_8d

    move-result-wide v14

    .line 294
    .local v14, "pos":J
    const/16 v18, 0x0

    .line 296
    .local v18, "writeIndexSuccess":Z
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_49} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_49} :catch_90
    .catchall {:try_start_1e .. :try_end_49} :catchall_86

    .line 302
    const/16 v18, 0x1

    .line 313
    if-eqz v13, :cond_50

    :try_start_4d
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_170
    .catchall {:try_start_4d .. :try_end_50} :catchall_8d

    .line 320
    :cond_50
    :goto_50
    if-eqz v18, :cond_d

    .line 323
    const/4 v13, 0x0

    .line 325
    if-eqz p1, :cond_10a

    .line 326
    :try_start_55
    move-object/from16 v0, p1

    array-length v3, v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_114
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_13d
    .catchall {:try_start_55 .. :try_end_58} :catchall_136

    const/16 v6, 0x2703

    if-le v3, v6, :cond_c1

    .line 350
    if-eqz v13, :cond_d

    :try_start_5e
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_8d

    goto :goto_d

    .line 352
    :catch_62
    move-exception v3

    goto :goto_d

    .line 303
    :catch_64
    move-exception v2

    .line 304
    .local v2, "ex":Ljava/io/IOException;
    :try_start_65
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail position for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    throw v2
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_86

    .line 312
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_86
    move-exception v3

    .line 313
    if-eqz v13, :cond_8c

    :try_start_89
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_173
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    .line 317
    :cond_8c
    :goto_8c
    :try_start_8c
    throw v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 286
    .end local v4    # "index":J
    .end local v13    # "lock":Ljava/nio/channels/FileLock;
    .end local v14    # "pos":J
    .end local v16    # "r":Ljava/io/RandomAccessFile;
    .end local v17    # "ri":Ljava/io/RandomAccessFile;
    .end local v18    # "writeIndexSuccess":Z
    :catchall_8d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 307
    .restart local v4    # "index":J
    .restart local v13    # "lock":Ljava/nio/channels/FileLock;
    .restart local v14    # "pos":J
    .restart local v16    # "r":Ljava/io/RandomAccessFile;
    .restart local v17    # "ri":Ljava/io/RandomAccessFile;
    .restart local v18    # "writeIndexSuccess":Z
    :catch_90
    move-exception v2

    .line 309
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_91
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail position for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_91 .. :try_end_b9} :catchall_86

    .line 313
    if-eqz v13, :cond_50

    :try_start_bb
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf
    .catchall {:try_start_bb .. :try_end_be} :catchall_8d

    goto :goto_50

    .line 315
    :catch_bf
    move-exception v3

    goto :goto_50

    .line 330
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_c1
    :try_start_c1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 337
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    move-wide v8, v14

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v14, v15}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_10a} :catch_114
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_10a} :catch_13d
    .catchall {:try_start_c1 .. :try_end_10a} :catchall_136

    .line 350
    :cond_10a
    if-eqz v13, :cond_d

    :try_start_10c
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_111
    .catchall {:try_start_10c .. :try_end_10f} :catchall_8d

    goto/16 :goto_d

    .line 352
    :catch_111
    move-exception v3

    goto/16 :goto_d

    .line 340
    :catch_114
    move-exception v2

    .line 341
    .local v2, "ex":Ljava/io/IOException;
    :try_start_115
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    throw v2
    :try_end_136
    .catchall {:try_start_115 .. :try_end_136} :catchall_136

    .line 349
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_136
    move-exception v3

    .line 350
    if-eqz v13, :cond_13c

    :try_start_139
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_176
    .catchall {:try_start_139 .. :try_end_13c} :catchall_8d

    .line 354
    :cond_13c
    :goto_13c
    :try_start_13c
    throw v3
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_8d

    .line 344
    :catch_13d
    move-exception v2

    .line 346
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_13e
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_13e .. :try_end_166} :catchall_136

    .line 350
    if-eqz v13, :cond_d

    :try_start_168
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_16d
    .catchall {:try_start_168 .. :try_end_16b} :catchall_8d

    goto/16 :goto_d

    .line 352
    :catch_16d
    move-exception v3

    goto/16 :goto_d

    .line 315
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_170
    move-exception v3

    goto/16 :goto_50

    :catch_173
    move-exception v6

    goto/16 :goto_8c

    .line 352
    :catch_176
    move-exception v6

    goto :goto_13c
.end method
