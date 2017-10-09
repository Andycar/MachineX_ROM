.class final Ljavax/xml/xpath/XPathFactoryFinder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# static fields
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static firstTime:Z


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 53
    const-string v3, "jaxp.debug"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_15

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 61
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 66
    sput-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 351
    const-class v1, Ljavax/xml/xpath/XPathFactory;

    sput-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 97
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_c

    .line 98
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    .line 100
    :cond_c
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 16
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "propertyName":Ljava/lang/String;
    :try_start_1d
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_3d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking up system property \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 155
    :cond_3d
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "r":Ljava/lang/String;
    if-eqz v8, :cond_70

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_70

    .line 157
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_69

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The value is \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 158
    :cond_69
    invoke-virtual {p0, v8}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v10

    .line 159
    .local v10, "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v10, :cond_79

    .line 223
    .end local v8    # "r":Ljava/lang/String;
    .end local v10    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :cond_6f
    :goto_6f
    return-object v10

    .line 160
    .restart local v8    # "r":Ljava/lang/String;
    :cond_70
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_79

    .line 161
    const-string v11, "The property is undefined."

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_79} :catch_14f

    .line 167
    .end local v8    # "r":Ljava/lang/String;
    :cond_79
    :goto_79
    const-string v11, "java.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "javah":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "lib"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "jaxp.properties"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "configFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 175
    .local v4, "factoryClassName":Ljava/lang/String;
    :try_start_a5
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v11, :cond_e3

    .line 176
    sget-object v12, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v12
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ac} :catch_158

    .line 177
    :try_start_ac
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v11, :cond_e2

    .line 178
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, "f":Ljava/io/File;
    const/4 v11, 0x0

    sput-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 180
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 181
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_d8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read properties file "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 182
    :cond_d8
    sget-object v11, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v11, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 185
    .end local v3    # "f":Ljava/io/File;
    :cond_e2
    monitor-exit v12
    :try_end_e3
    .catchall {:try_start_ac .. :try_end_e3} :catchall_155

    .line 187
    :cond_e3
    :try_start_e3
    sget-object v11, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_109

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in $java.home/jaxp.properties"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 190
    :cond_109
    if-eqz v4, :cond_111

    .line 191
    invoke-virtual {p0, v4}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_10e} :catch_158

    move-result-object v10

    .line 192
    .restart local v10    # "xpf":Ljavax/xml/xpath/XPathFactory;
    if-nez v10, :cond_6f

    .line 203
    .end local v10    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :cond_111
    :goto_111
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/lang/Iterable;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_119
    :goto_119
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_180

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/URL;

    .line 204
    .local v9, "resource":Ljava/net/URL;
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_13f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "looking into "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 206
    :cond_13f
    :try_start_13f
    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {p0, p1, v11, v12}, Ljavax/xml/xpath/XPathFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_14a} :catch_161

    move-result-object v10

    .line 207
    .restart local v10    # "xpf":Ljavax/xml/xpath/XPathFactory;
    if-eqz v10, :cond_119

    goto/16 :goto_6f

    .line 163
    .end local v0    # "configFile":Ljava/lang/String;
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "javah":Ljava/lang/String;
    .end local v9    # "resource":Ljava/net/URL;
    .end local v10    # "xpf":Ljavax/xml/xpath/XPathFactory;
    :catch_14f
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_79

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configFile":Ljava/lang/String;
    .restart local v4    # "factoryClassName":Ljava/lang/String;
    .restart local v6    # "javah":Ljava/lang/String;
    :catchall_155
    move-exception v11

    :try_start_156
    monitor-exit v12
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    :try_start_157
    throw v11
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_158} :catch_158

    .line 196
    :catch_158
    move-exception v2

    .line 197
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_111

    .line 198
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_111

    .line 208
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "resource":Ljava/net/URL;
    :catch_161
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_119

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_119

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "resource":Ljava/net/URL;
    :cond_180
    const-string v11, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_199

    .line 218
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_191

    const-string v11, "attempting to use the platform default W3C DOM XPath lib"

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 219
    :cond_191
    const-string v11, "org.apache.xpath.jaxp.XPathFactoryImpl"

    invoke-virtual {p0, v11}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v10

    goto/16 :goto_6f

    .line 222
    :cond_199
    sget-boolean v11, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v11, :cond_1a2

    const-string v11, "all things were tried, but none was found. bailing out."

    invoke-static {v11}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 223
    :cond_1a2
    const/4 v10, 0x0

    goto/16 :goto_6f
.end method

.method private createServiceFileIterator()Ljava/lang/Iterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_15

    .line 331
    const-class v3, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 332
    .local v2, "resource":Ljava/net/URL;
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 346
    .end local v2    # "resource":Ljava/net/URL;
    :goto_14
    return-object v3

    .line 335
    :cond_15
    :try_start_15
    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 336
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_45

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file was found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 340
    :cond_45
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_48} :catch_4a

    move-result-object v3

    goto :goto_14

    .line 341
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_4a
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v3, :cond_6a

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to enumerate resources "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 346
    :cond_6a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_14
.end method

.method private debugDisplayClassLoader()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using thread context class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 114
    :goto_2a
    return-void

    .line 108
    :cond_2b
    iget-object v0, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_52

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using system class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_2a

    .line 113
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using class loader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAXP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_1c
    return-void
.end method

.method private loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    .registers 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;

    .prologue
    const/16 v9, 0x50

    .line 271
    sget-boolean v7, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v7, :cond_1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 275
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_2a} :catch_58

    .line 281
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_2a
    const/4 v5, 0x0

    .line 285
    .local v5, "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_64

    move-result-object v1

    .line 290
    .local v1, "factoryClassName":Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 292
    const/16 v7, 0x23

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 293
    .local v3, "hashIndex":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3f

    .line 294
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2b

    .line 307
    :try_start_49
    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    .line 308
    .local v2, "foundFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v2, p1}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_66

    move-result v7

    if-eqz v7, :cond_2b

    .line 309
    move-object v5, v2

    .line 320
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "foundFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v3    # "hashIndex":I
    :cond_54
    :goto_54
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    return-object v5

    .line 276
    .end local v4    # "rd":Ljava/io/BufferedReader;
    .end local v5    # "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_58
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_2a

    .line 286
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "resultFactory":Ljavax/xml/xpath/XPathFactory;
    :catch_64
    move-exception v6

    .line 288
    .local v6, "x":Ljava/io/IOException;
    goto :goto_54

    .line 312
    .end local v6    # "x":Ljava/io/IOException;
    .restart local v1    # "factoryClassName":Ljava/lang/String;
    .restart local v3    # "hashIndex":I
    :catch_66
    move-exception v7

    goto :goto_2b
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 355
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 7
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_21

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 370
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 371
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 9
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 237
    :try_start_0
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 239
    :cond_1a
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_4d

    .line 240
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 243
    .local v0, "clazz":Ljava/lang/Class;
    :goto_24
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loaded it from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 244
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, Ljavax/xml/xpath/XPathFactory;

    if-eqz v5, :cond_52

    .line 247
    check-cast v1, Ljavax/xml/xpath/XPathFactory;

    .line 265
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :goto_4c
    return-object v1

    .line 242
    :cond_4d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;
    goto :goto_24

    .line 249
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_52
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_76

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not assignable to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_76} :catch_78
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_76} :catch_7a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_76} :catch_7c

    .line 265
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_76
    :goto_76
    const/4 v1, 0x0

    goto :goto_4c

    .line 252
    :catch_78
    move-exception v4

    .line 253
    .local v4, "vme":Ljava/lang/VirtualMachineError;
    throw v4

    .line 256
    .end local v4    # "vme":Ljava/lang/VirtualMachineError;
    :catch_7a
    move-exception v3

    .line 257
    .local v3, "td":Ljava/lang/ThreadDeath;
    throw v3

    .line 259
    .end local v3    # "td":Ljava/lang/ThreadDeath;
    :catch_7c
    move-exception v2

    .line 260
    .local v2, "t":Ljava/lang/Throwable;
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_76

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_76
.end method

.method public newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_a

    .line 130
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_a
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 133
    .local v0, "f":Ljavax/xml/xpath/XPathFactory;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_3c

    .line 134
    if-eqz v0, :cond_3d

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 140
    :cond_3c
    :goto_3c
    return-object v0

    .line 137
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find a factory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_3c
.end method
