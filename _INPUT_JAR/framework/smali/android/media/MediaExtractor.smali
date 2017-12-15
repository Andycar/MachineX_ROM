.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# static fields
.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 372
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    .line 374
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    .line 66
    return-void
.end method

.method private native getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public native advance()Z
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    .line 201
    return-void
.end method

.method public native getCachedDuration()J
.end method

.method public getPsshInfo()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v1

    .line 223
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_5a

    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 224
    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 225
    .local v8, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 227
    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 230
    .restart local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :goto_2e
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lez v10, :cond_5a

    .line 231
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 233
    .local v4, "msb":J
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 234
    .local v2, "lsb":J
    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 235
    .local v9, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 237
    .local v0, "datalen":I
    new-array v7, v0, [B

    .line 238
    .local v7, "psshdata":[B
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 239
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 242
    .end local v0    # "datalen":I
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v7    # "psshdata":[B
    .end local v8    # "rawpssh":Ljava/nio/ByteBuffer;
    .end local v9    # "uuid":Ljava/util/UUID;
    :cond_5a
    return-object v6
.end method

.method public native getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native getSampleFlags()I
.end method

.method public native getSampleTime()J
.end method

.method public native getSampleTrackIndex()I
.end method

.method public final native getTrackCount()I
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 252
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public native hasCacheReachedEndOfStream()Z
.end method

.method public native readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native release()V
.end method

.method public native seekTo(JI)V
.end method

.method public native selectTrack(I)V
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "scheme":Ljava/lang/String;
    if-eqz v8, :cond_e

    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 86
    :cond_e
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 118
    :cond_15
    :goto_15
    return-void

    .line 90
    :cond_16
    const/4 v6, 0x0

    .line 92
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 93
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_21} :catch_52
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_60
    .catchall {:try_start_17 .. :try_end_21} :catchall_67

    move-result-object v6

    .line 94
    if-nez v6, :cond_2a

    .line 112
    if-eqz v6, :cond_15

    .line 113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 100
    :cond_2a
    :try_start_2a
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 101
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_3b} :catch_52
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3b} :catch_60
    .catchall {:try_start_2a .. :try_end_3b} :catchall_67

    .line 112
    :goto_3b
    if-eqz v6, :cond_15

    .line 113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_15

    .line 103
    :cond_41
    :try_start_41
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_60
    .catchall {:try_start_41 .. :try_end_51} :catchall_67

    goto :goto_3b

    .line 109
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :catch_52
    move-exception v0

    .line 112
    if-eqz v6, :cond_58

    .line 113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 117
    :cond_58
    :goto_58
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_15

    .line 110
    :catch_60
    move-exception v0

    .line 112
    if-eqz v6, :cond_58

    .line 113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_58

    .line 112
    :catchall_67
    move-exception v0

    if-eqz v6, :cond_6d

    .line 113
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6d
    throw v0
.end method

.method public final native setDataSource(Landroid/media/DataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 184
    return-void
.end method

.method public final native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 129
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 131
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 132
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 133
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    goto :goto_19

    .line 143
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_38
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public native unselectTrack(I)V
.end method
