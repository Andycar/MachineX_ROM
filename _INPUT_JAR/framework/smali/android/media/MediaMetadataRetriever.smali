.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ALBUMARTIST_ASCII:I = 0x21

.field public static final METADATA_KEY_ALBUM_ASCII:I = 0x19

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_ARTIST_ASCII:I = 0x1a

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_AUTHOR_ASCII:I = 0x1b

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_BITS_PER_SAMPLE:I = 0x2c

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_COMPOSER_ASCII:I = 0x1c

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DATE_ASCII:I = 0x1d

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_GENRE_ASCII:I = 0x1e

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_MULTI_AUDIO_CHANNELS:I = 0x24

.field public static final METADATA_KEY_MULTI_AUDIO_LANGUAGES:I = 0x23

.field public static final METADATA_KEY_NUM_AUDIO_TRACKS:I = 0x22

.field public static final METADATA_KEY_NUM_TEXT_TRACKS:I = 0x25

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_SAMPLING_RATE:I = 0x2b

.field public static final METADATA_KEY_SEC_360VIDEO:I = 0x2d

.field public static final METADATA_KEY_SEC_3DVIDEOTYPE:I = 0x2a

.field public static final METADATA_KEY_SEC_AUTHORIZATION:I = 0x27

.field public static final METADATA_KEY_SEC_CITYID:I = 0x29

.field public static final METADATA_KEY_SEC_RECORDINGMODE:I = 0x2e

.field public static final METADATA_KEY_SEC_SLOWVIDEOINFO:I = 0x2f

.field public static final METADATA_KEY_SEC_VIDEOSNAPSHOT:I = 0x28

.field public static final METADATA_KEY_SEC_WEATHER:I = 0x26

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_TITLE_ASCII:I = 0x1f

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_WRITER_ASCII:I = 0x20

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 52
    return-void
.end method

.method private native _getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method private native _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 353
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 355
    return-void

    .line 353
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEmbeddedPicture()[B
    .registers 2

    .prologue
    .line 333
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 306
    const-wide/16 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "timeUs"    # J

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .prologue
    .line 248
    if-ltz p3, :cond_5

    const/4 v0, 0x3

    if-le p3, v0, :cond_1e

    .line 250
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 159
    if-nez p2, :cond_8

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "scheme":Ljava/lang/String;
    if-eqz v9, :cond_16

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 165
    :cond_16
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 203
    :cond_1d
    :goto_1d
    return-void

    .line 169
    :cond_1e
    const/4 v7, 0x0

    .line 171
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_22} :catch_32
    .catchall {:try_start_1f .. :try_end_22} :catchall_47

    move-result-object v8

    .line 173
    .local v8, "resolver":Landroid/content/ContentResolver;
    :try_start_23
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_29} :catch_40
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_29} :catch_32
    .catchall {:try_start_23 .. :try_end_29} :catchall_47

    move-result-object v7

    .line 177
    if-nez v7, :cond_4e

    .line 178
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_32} :catch_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_47

    .line 193
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_32
    move-exception v0

    .line 196
    if-eqz v7, :cond_38

    .line 197
    :try_start_35
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_80

    .line 202
    :cond_38
    :goto_38
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1d

    .line 174
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_40
    move-exception v6

    .line 175
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_47} :catch_32
    .catchall {:try_start_41 .. :try_end_47} :catchall_47

    .line 195
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catchall_47
    move-exception v0

    .line 196
    if-eqz v7, :cond_4d

    .line 197
    :try_start_4a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_82

    .line 200
    :cond_4d
    :goto_4d
    throw v0

    .line 180
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_4e
    :try_start_4e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 181
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 187
    :cond_5e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_73

    .line 188
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_6b} :catch_32
    .catchall {:try_start_4e .. :try_end_6b} :catchall_47

    .line 196
    :goto_6b
    if-eqz v7, :cond_1d

    .line 197
    :try_start_6d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_1d

    .line 199
    :catch_71
    move-exception v0

    goto :goto_1d

    .line 190
    :cond_73
    :try_start_73
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_73 .. :try_end_7f} :catch_32
    .catchall {:try_start_73 .. :try_end_7f} :catchall_47

    goto :goto_6b

    .line 199
    .end local v1    # "descriptor":Ljava/io/FileDescriptor;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :catch_80
    move-exception v0

    goto :goto_38

    :catch_82
    move-exception v2

    goto :goto_4d
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 144
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 145
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_8

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_8
    const/4 v8, 0x0

    .line 69
    .local v8, "is":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2a

    .line 70
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 71
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1d} :catch_36
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_33

    .line 79
    if-eqz v9, :cond_22

    .line 80
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_31

    .line 83
    :cond_22
    :goto_22
    return-void

    .line 72
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_23
    move-exception v6

    .line 73
    .local v6, "fileEx":Ljava/io/FileNotFoundException;
    :goto_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    .end local v6    # "fileEx":Ljava/io/FileNotFoundException;
    :catch_2a
    move-exception v7

    .line 75
    .local v7, "ioEx":Ljava/io/IOException;
    :goto_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    .end local v7    # "ioEx":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_31
    move-exception v0

    goto :goto_22

    .line 74
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_33
    move-exception v7

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2b

    .line 72
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_36
    move-exception v6

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_24
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
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
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 97
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 98
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 99
    .local v4, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_15

    .line 105
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_34
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public native setVideoSize(IIZZ)V
.end method
