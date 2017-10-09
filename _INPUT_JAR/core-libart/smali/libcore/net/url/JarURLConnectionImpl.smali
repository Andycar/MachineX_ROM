.class public Llibcore/net/url/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field private static final jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 72
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    .line 73
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 74
    return-void
.end method

.method static synthetic access$002(Llibcore/net/url/JarURLConnectionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Llibcore/net/url/JarURLConnectionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    return p1
.end method

.method private findJarEntry()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 200
    :cond_6
    return-void

    .line 196
    :cond_7
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    .line 197
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_6

    .line 198
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findJarFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 109
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 110
    :try_start_9
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 111
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_45

    .line 112
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_3b

    .line 113
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 114
    .local v0, "jar":Ljava/util/jar/JarFile;
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 115
    :try_start_21
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarFile;

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 116
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_48

    .line 117
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 122
    :goto_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_4c

    .line 128
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_3b
    :goto_3b
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    if-nez v1, :cond_56

    .line 129
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 111
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    .line 120
    .restart local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    goto :goto_3a

    .line 122
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v1

    .line 125
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_4f
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_3b

    .line 131
    :cond_56
    return-void
.end method

.method private openJarFile()Ljava/util/jar/JarFile;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 134
    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 135
    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "decodedFile":Ljava/lang/String;
    new-instance v10, Ljava/util/jar/JarFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v13, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 166
    .end local v1    # "decodedFile":Ljava/lang/String;
    :cond_24
    :goto_24
    return-object v10

    .line 138
    :cond_25
    iget-object v11, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 140
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 141
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 143
    .local v8, "result":Ljava/util/jar/JarFile;
    :try_start_31
    const-string v11, "hyjar_"

    const-string v12, ".tmp"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 144
    .local v9, "tempJar":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 145
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_42} :catch_9f
    .catchall {:try_start_31 .. :try_end_42} :catchall_84

    .line 146
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x1000

    :try_start_44
    new-array v0, v11, [B

    .line 147
    .local v0, "buf":[B
    const/4 v7, 0x0

    .line 148
    .local v7, "nbytes":I
    :goto_47
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-le v7, v11, :cond_60

    .line 149
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_53
    .catchall {:try_start_44 .. :try_end_52} :catchall_9c

    goto :goto_47

    .line 153
    .end local v0    # "buf":[B
    .end local v7    # "nbytes":I
    :catch_53
    move-exception v2

    move-object v4, v5

    .line 156
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "tempJar":Ljava/io/File;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_55
    if-eqz v4, :cond_5a

    .line 158
    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_8b

    .line 165
    :cond_5a
    if-eqz v6, :cond_24

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "nbytes":I
    .restart local v9    # "tempJar":Ljava/io/File;
    :cond_60
    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 152
    new-instance v11, Ljava/util/jar/JarFile;

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-direct {v11, v9, v12, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6a} :catch_53
    .catchall {:try_start_60 .. :try_end_6a} :catchall_9c

    .line 156
    if-eqz v5, :cond_6f

    .line 158
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_76
    .catchall {:try_start_6c .. :try_end_6f} :catchall_99

    .line 165
    :cond_6f
    if-eqz v6, :cond_74

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_74
    move-object v10, v11

    goto :goto_24

    .line 159
    :catch_76
    move-exception v3

    .line 165
    .local v3, "ex":Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 159
    .end local v0    # "buf":[B
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbytes":I
    .end local v9    # "tempJar":Ljava/io/File;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7d
    move-exception v3

    .line 165
    .restart local v3    # "ex":Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_84
    move-exception v11

    :goto_85
    if-eqz v4, :cond_8a

    .line 158
    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_92
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    .line 166
    :cond_8a
    :try_start_8a
    throw v11
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 165
    :catchall_8b
    move-exception v10

    :goto_8c
    if-eqz v6, :cond_91

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_91
    throw v10

    .line 159
    :catch_92
    move-exception v3

    .line 165
    .restart local v3    # "ex":Ljava/io/IOException;
    if-eqz v6, :cond_24

    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_24

    .line 165
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "nbytes":I
    .restart local v9    # "tempJar":Ljava/io/File;
    :catchall_99
    move-exception v10

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8c

    .line 156
    .end local v0    # "buf":[B
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbytes":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_9c
    move-exception v11

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_85

    .line 153
    .end local v9    # "tempJar":Ljava/io/File;
    :catch_9f
    move-exception v2

    goto :goto_55
.end method


# virtual methods
.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->connected:Z

    if-nez v0, :cond_d

    .line 82
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarFile()V

    .line 83
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarEntry()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->connected:Z

    .line 86
    :cond_d
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 300
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_a

    .line 301
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    .line 303
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 270
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_e

    .line 271
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 277
    :goto_d
    return v0

    .line 273
    :cond_e
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d

    .line 274
    :catch_18
    move-exception v0

    .line 277
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 238
    const-string v0, "x-java/jar"

    .line 257
    :cond_10
    :goto_10
    return-object v0

    .line 240
    :cond_11
    const/4 v0, 0x0

    .line 241
    .local v0, "cType":Ljava/lang/String;
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "entryName":Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 245
    invoke-static {v1}, Llibcore/net/url/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_1c
    if-nez v0, :cond_10

    .line 255
    const-string v0, "content/unknown"

    goto :goto_10

    .line 248
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 249
    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1c

    .line 250
    :catch_2b
    move-exception v2

    goto :goto_1c
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    if-eqz v0, :cond_c

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_c
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 216
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 217
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    .line 222
    :goto_15
    return-object v0

    .line 219
    :cond_16
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_22

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Jar entry not specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_22
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;

    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    goto :goto_15
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 184
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    .line 98
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 341
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .param p1, "usecaches"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 331
    return-void
.end method
