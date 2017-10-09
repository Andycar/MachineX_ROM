.class final Ljavax/xml/datatype/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "javax.xml.datatype.FactoryFinder"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static firstTime:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    sput-boolean v2, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    .line 51
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 54
    sput-boolean v1, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    .line 66
    const-string v3, "jaxp.debug"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :goto_1d
    sput-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    .line 69
    return-void

    :cond_20
    move v1, v2

    .line 68
    goto :goto_1d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javax.xml.datatype.FactoryFinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :cond_1c
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 13
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ljavax/xml/datatype/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 172
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "systemProp":Ljava/lang/String;
    if-eqz v7, :cond_39

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_39

    .line 174
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_34

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in the system property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 175
    :cond_34
    invoke-static {v7, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    .line 219
    :cond_38
    :goto_38
    return-object v6

    .line 180
    :cond_39
    :try_start_39
    const-string v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "javah":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "configFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 183
    .local v4, "factoryClassName":Ljava/lang/String;
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    if-eqz v8, :cond_a3

    .line 184
    sget-object v9, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v9
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6c} :catch_d4

    .line 185
    :try_start_6c
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    if-eqz v8, :cond_a2

    .line 186
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "f":Ljava/io/File;
    const/4 v8, 0x0

    sput-boolean v8, Ljavax/xml/datatype/FactoryFinder;->firstTime:Z

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 189
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_98

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read properties file "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 190
    :cond_98
    sget-object v8, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 193
    .end local v3    # "f":Ljava/io/File;
    :cond_a2
    monitor-exit v9
    :try_end_a3
    .catchall {:try_start_6c .. :try_end_a3} :catchall_d1

    .line 195
    :cond_a3
    :try_start_a3
    sget-object v8, Ljavax/xml/datatype/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v8, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_c9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in $java.home/jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 198
    :cond_c9
    if-eqz v4, :cond_dc

    .line 199
    invoke-static {v4, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ce} :catch_d4

    move-result-object v6

    goto/16 :goto_38

    .line 193
    :catchall_d1
    move-exception v8

    :try_start_d2
    monitor-exit v9
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v8
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d4} :catch_d4

    .line 201
    .end local v1    # "configFile":Ljava/lang/String;
    .end local v4    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "javah":Ljava/lang/String;
    :catch_d4
    move-exception v2

    .line 202
    .local v2, "ex":Ljava/lang/Exception;
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_dc

    .line 203
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_dc
    invoke-static {p0}, Ljavax/xml/datatype/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 209
    .local v6, "provider":Ljava/lang/Object;
    if-nez v6, :cond_38

    .line 213
    if-nez p1, :cond_104

    .line 214
    new-instance v8, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Provider for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 218
    :cond_104
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_11e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loaded from fallback value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 219
    :cond_11e
    invoke-static {p1, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_38
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 102
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using context class loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 106
    :cond_22
    if-nez v0, :cond_44

    .line 109
    const-class v1, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 110
    sget-boolean v1, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using the class loader of FactoryFinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 115
    :cond_44
    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/16 v10, 0x50

    const/4 v7, 0x0

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "META-INF/services/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 232
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 233
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_25

    .line 234
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 237
    :cond_25
    if-nez v3, :cond_31

    .line 238
    const-class v8, Ljavax/xml/datatype/FactoryFinder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 242
    :cond_31
    if-nez v3, :cond_34

    .line 277
    :cond_33
    :goto_33
    return-object v7

    .line 247
    :cond_34
    sget-boolean v8, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v8, :cond_58

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found jar resource="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using ClassLoader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 251
    :cond_58
    :try_start_58
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v9, 0x50

    invoke-direct {v4, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_66} :catch_97

    .line 256
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_66
    const/4 v2, 0x0

    .line 260
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_67
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_a3
    .catchall {:try_start_67 .. :try_end_6a} :catchall_a8

    move-result-object v2

    .line 265
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 268
    if-eqz v2, :cond_33

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    .line 270
    sget-boolean v7, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v7, :cond_92

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found in resource, value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 273
    :cond_92
    invoke-static {v2, v0}, Ljavax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_33

    .line 252
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_97
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_66

    .line 261
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "factoryClassName":Ljava/lang/String;
    :catch_a3
    move-exception v6

    .line 265
    .local v6, "x":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_33

    .end local v6    # "x":Ljava/io/IOException;
    :catchall_a8
    move-exception v7

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_33

    .line 136
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 141
    .local v0, "spiClass":Ljava/lang/Class;
    :goto_6
    sget-boolean v2, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v2, :cond_2e

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljavax/xml/datatype/FactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/datatype/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 145
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 138
    .end local v0    # "spiClass":Ljava/lang/Class;
    :cond_33
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_36} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_58

    move-result-object v0

    .restart local v0    # "spiClass":Ljava/lang/Class;
    goto :goto_6

    .line 146
    .end local v0    # "spiClass":Ljava/lang/Class;
    :catch_38
    move-exception v1

    .line 147
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 149
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    :catch_58
    move-exception v1

    .line 150
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be instantiated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 11
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 319
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "classnameAsResource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 325
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_30

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 331
    .local v1, "it":Ljava/net/URL;
    :goto_29
    if-eqz v1, :cond_41

    .line 332
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .end local v0    # "classnameAsResource":Ljava/lang/String;
    .end local v1    # "it":Ljava/net/URL;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :goto_2f
    return-object v6

    .line 328
    .restart local v0    # "classnameAsResource":Ljava/lang/String;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_30
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_33
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_33} :catch_35
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_33} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_39

    move-result-object v1

    .restart local v1    # "it":Ljava/net/URL;
    goto :goto_29

    .line 336
    .end local v0    # "classnameAsResource":Ljava/lang/String;
    .end local v1    # "it":Ljava/net/URL;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :catch_35
    move-exception v5

    .line 337
    .local v5, "vme":Ljava/lang/VirtualMachineError;
    throw v5

    .line 340
    .end local v5    # "vme":Ljava/lang/VirtualMachineError;
    :catch_37
    move-exception v4

    .line 341
    .local v4, "td":Ljava/lang/ThreadDeath;
    throw v4

    .line 343
    .end local v4    # "td":Ljava/lang/ThreadDeath;
    :catch_39
    move-exception v3

    .line 345
    .local v3, "t":Ljava/lang/Throwable;
    sget-boolean v6, Ljavax/xml/datatype/FactoryFinder;->debug:Z

    if-eqz v6, :cond_41

    .line 346
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 349
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_41
    const-string v6, "unknown location"

    goto :goto_2f
.end method
