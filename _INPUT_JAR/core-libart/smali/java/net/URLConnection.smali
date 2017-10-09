.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLConnection$DefaultContentHandler;
    }
.end annotation


# static fields
.field private static contentHandlerFactory:Ljava/net/ContentHandlerFactory;

.field static contentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field private static fileNameMap:Ljava/net/FileNameMap;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field private contentType:Ljava/lang/String;

.field defaultHandler:Ljava/net/ContentHandler;

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private lastModified:J

.field private readTimeout:I

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 140
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/net/URLConnection$DefaultContentHandler;

    invoke-direct {v0}, Ljava/net/URLConnection$DefaultContentHandler;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 106
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 129
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 133
    iput v2, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 135
    iput v2, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 157
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 158
    return-void
.end method

.method private checkNotConnected()V
    .registers 3

    .prologue
    .line 462
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_c
    return-void
.end method

.method private getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/net/URLConnection;->parseTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "typeString":Ljava/lang/String;
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "cHandler":Ljava/lang/Object;
    if-eqz v1, :cond_17

    .line 263
    check-cast v1, Ljava/net/ContentHandler;

    .line 306
    .end local v1    # "cHandler":Ljava/lang/Object;
    :goto_16
    return-object v1

    .line 266
    .restart local v1    # "cHandler":Ljava/lang/Object;
    :cond_17
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v9, :cond_29

    .line 267
    sget-object v9, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v9, p1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v1

    .line 268
    .local v1, "cHandler":Ljava/net/ContentHandler;
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    check-cast v1, Ljava/net/ContentHandler;

    goto :goto_16

    .line 273
    .local v1, "cHandler":Ljava/lang/Object;
    :cond_29
    const-string v9, "java.content.handler.pkgs"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "packageList":Ljava/lang/String;
    if-eqz v6, :cond_64

    .line 275
    const-string v9, "\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_39
    if-ge v3, v5, :cond_64

    aget-object v7, v0, v3

    .line 276
    .local v7, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "className":Ljava/lang/String;
    const/4 v9, 0x1

    :try_start_55
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v2, v9, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 279
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_55 .. :try_end_60} :catch_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_60} :catch_a1
    .catch Ljava/lang/InstantiationException; {:try_start_55 .. :try_end_60} :catch_9f

    move-result-object v1

    .line 275
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 287
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_64
    if-nez v1, :cond_81

    .line 290
    :try_start_66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "org.apache.harmony.awt.www.content."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "className":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_80} :catch_9d
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_80} :catch_9b
    .catch Ljava/lang/InstantiationException; {:try_start_66 .. :try_end_80} :catch_99

    move-result-object v1

    .line 297
    .end local v2    # "className":Ljava/lang/String;
    :cond_81
    :goto_81
    if-eqz v1, :cond_95

    .line 298
    instance-of v9, v1, Ljava/net/ContentHandler;

    if-nez v9, :cond_8d

    .line 299
    new-instance v9, Ljava/net/UnknownServiceException;

    invoke-direct {v9}, Ljava/net/UnknownServiceException;-><init>()V

    throw v9

    .line 301
    :cond_8d
    sget-object v9, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v9, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    check-cast v1, Ljava/net/ContentHandler;

    goto :goto_16

    .line 306
    :cond_95
    iget-object v1, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    goto/16 :goto_16

    .line 294
    :catch_99
    move-exception v9

    goto :goto_81

    .line 293
    :catch_9b
    move-exception v9

    goto :goto_81

    .line 292
    :catch_9d
    move-exception v9

    goto :goto_81

    .line 282
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :catch_9f
    move-exception v9

    goto :goto_61

    .line 281
    :catch_a1
    move-exception v9

    goto :goto_61

    .line 280
    :catch_a3
    move-exception v9

    goto :goto_61
.end method

.method public static getDefaultAllowUserInteraction()Z
    .registers 1

    .prologue
    .line 343
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "field"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileNameMap()Ljava/net/FileNameMap;
    .registers 2

    .prologue
    .line 407
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 408
    :try_start_3
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_e

    .line 409
    new-instance v0, Ljava/net/DefaultFileNameMap;

    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 411
    :cond_e
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    monitor-exit v1

    return-object v0

    .line 412
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 696
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-nez v6, :cond_d

    .line 697
    const/4 v6, 0x0

    .line 774
    :goto_c
    return-object v6

    .line 700
    :cond_d
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 701
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 702
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 703
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 706
    if-ne v3, v9, :cond_21

    .line 707
    const/4 v6, 0x0

    goto :goto_c

    .line 711
    :cond_21
    const-string v1, "US-ASCII"

    .line 712
    .local v1, "encoding":Ljava/lang/String;
    const/4 v4, 0x0

    .line 713
    .local v4, "start":I
    if-le v3, v8, :cond_8a

    .line 714
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_34

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_34

    .line 715
    const-string v1, "UTF-16LE"

    .line 716
    const/4 v4, 0x2

    .line 717
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 719
    :cond_34
    aget-byte v6, v0, v10

    if-ne v6, v11, :cond_42

    aget-byte v6, v0, v8

    if-ne v6, v9, :cond_42

    .line 720
    const-string v1, "UTF-16BE"

    .line 721
    const/4 v4, 0x2

    .line 722
    and-int/lit8 v6, v3, 0x1

    sub-int/2addr v3, v6

    .line 724
    :cond_42
    if-le v3, v12, :cond_8a

    .line 725
    aget-byte v6, v0, v10

    const/16 v7, -0x11

    if-ne v6, v7, :cond_59

    aget-byte v6, v0, v8

    const/16 v7, -0x45

    if-ne v6, v7, :cond_59

    aget-byte v6, v0, v12

    const/16 v7, -0x41

    if-ne v6, v7, :cond_59

    .line 727
    const-string v1, "UTF-8"

    .line 728
    const/4 v4, 0x3

    .line 730
    :cond_59
    const/4 v6, 0x3

    if-le v3, v6, :cond_8a

    .line 731
    aget-byte v6, v0, v10

    if-nez v6, :cond_73

    aget-byte v6, v0, v8

    if-nez v6, :cond_73

    aget-byte v6, v0, v12

    if-ne v6, v11, :cond_73

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-ne v6, v9, :cond_73

    .line 734
    const-string v1, "UTF-32BE"

    .line 735
    const/4 v4, 0x4

    .line 736
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 738
    :cond_73
    aget-byte v6, v0, v10

    if-ne v6, v9, :cond_8a

    aget-byte v6, v0, v8

    if-ne v6, v11, :cond_8a

    aget-byte v6, v0, v12

    if-nez v6, :cond_8a

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    if-nez v6, :cond_8a

    .line 741
    const-string v1, "UTF-32LE"

    .line 742
    const/4 v4, 0x4

    .line 743
    and-int/lit8 v6, v3, 0x3

    sub-int/2addr v3, v6

    .line 749
    :cond_8a
    new-instance v2, Ljava/lang/String;

    sub-int v6, v3, v4

    invoke-direct {v2, v0, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 752
    .local v2, "header":Ljava/lang/String;
    const-string v6, "PK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 753
    const-string v6, "application/zip"

    goto/16 :goto_c

    .line 755
    :cond_9d
    const-string v6, "GI"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 756
    const-string v6, "image/gif"

    goto/16 :goto_c

    .line 760
    :cond_a9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, "textHeader":Ljava/lang/String;
    const-string v6, "<!DOCTYPE HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    const-string v6, "<HTML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    const-string v6, "<BODY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    const-string v6, "<HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 766
    :cond_db
    const-string v6, "text/html"

    goto/16 :goto_c

    .line 769
    :cond_df
    const-string v6, "<?XML"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 770
    const-string v6, "application/xml"

    goto/16 :goto_c

    .line 774
    :cond_eb
    const/4 v6, 0x0

    goto/16 :goto_c
.end method

.method private parseTypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "typeString"    # Ljava/lang/String;

    .prologue
    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 789
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 790
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_25

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_25

    .line 791
    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 787
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 794
    .end local v0    # "c":C
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .registers 4
    .param p0, "contentFactory"    # Ljava/net/ContentHandlerFactory;

    .prologue
    .line 815
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v0, :cond_12

    .line 816
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 815
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 818
    :cond_12
    :try_start_12
    sput-object p0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .line 819
    monitor-exit v1

    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .registers 1
    .param p0, "allows"    # Z

    .prologue
    .line 825
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 826
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .registers 3
    .param p0, "map"    # Ljava/net/FileNameMap;

    .prologue
    .line 889
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 890
    :try_start_3
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 891
    monitor-exit v1

    .line 892
    return-void

    .line 891
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 483
    if-nez p1, :cond_d

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_d
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 977
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 190
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 193
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 194
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 195
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 198
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 199
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 224
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 227
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 228
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 229
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 232
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 233
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 315
    const-string v0, "Content-Length"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 5

    .prologue
    .line 336
    const-string v0, "Date"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 363
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .registers 5

    .prologue
    .line 397
    const-string v0, "Expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "date":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 526
    .end local p2    # "defaultValue":J
    :goto_6
    return-wide p2

    .line 524
    .restart local p2    # "defaultValue":J
    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p2

    goto :goto_6

    .line 525
    :catch_c
    move-exception v1

    .line 526
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_6
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 543
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 545
    .end local p2    # "defaultValue":I
    :goto_8
    return p2

    .line 544
    .restart local p2    # "defaultValue":I
    :catch_9
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "posn"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 575
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the input stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    .prologue
    .line 598
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 599
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 601
    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "Last-Modified"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    goto :goto_a
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Does not support writing to the output stream"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 1000
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 802
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 803
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 967
    if-gez p1, :cond_a

    .line 968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_a
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 971
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 846
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 847
    return-void
.end method

.method public setDoInput(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 862
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 863
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 878
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 879
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .param p1, "newValue"    # J

    .prologue
    .line 907
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 908
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 909
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 989
    if-gez p1, :cond_a

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_a
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 993
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 927
    if-nez p1, :cond_d

    .line 928
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_d
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/net/URLConnection;->checkNotConnected()V

    .line 946
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 947
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
