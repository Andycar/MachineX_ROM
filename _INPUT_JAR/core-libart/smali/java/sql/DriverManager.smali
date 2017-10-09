.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field private static final logPermission:Ljava/sql/SQLPermission;

.field private static loginTimeout:I

.field private static final theDrivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private static thePrintStream:Ljava/io/PrintStream;

.field private static thePrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    .line 67
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static deregisterDriver(Ljava/sql/Driver;)V
    .registers 4
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p0, :cond_3

    .line 130
    :goto_2
    return-void

    .line 123
    :cond_3
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 124
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 125
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling class not authorized to deregister JDBC driver"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_15
    sget-object v2, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v2

    .line 128
    :try_start_18
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v2

    goto :goto_2

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 207
    .local v0, "theProperties":Ljava/util/Properties;
    if-eqz p1, :cond_c

    .line 208
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    :cond_c
    if-eqz p2, :cond_13

    .line 211
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    :cond_13
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v1, "08001"

    .line 169
    .local v1, "sqlState":Ljava/lang/String;
    if-nez p0, :cond_c

    .line 170
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "The url cannot be null"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_c
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v5

    .line 178
    :try_start_f
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Driver;

    .line 179
    .local v3, "theDriver":Ljava/sql/Driver;
    invoke-interface {v3, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v2

    .line 180
    .local v2, "theConnection":Ljava/sql/Connection;
    if-eqz v2, :cond_15

    .line 181
    monitor-exit v5

    return-object v2

    .line 184
    .end local v2    # "theConnection":Ljava/sql/Connection;
    .end local v3    # "theDriver":Ljava/sql/Driver;
    :cond_29
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_32

    .line 186
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "No suitable driver"

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 228
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v4

    .line 234
    :try_start_7
    sget-object v3, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 235
    .local v1, "driver":Ljava/sql/Driver;
    invoke-interface {v1, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 237
    monitor-exit v4

    return-object v1

    .line 240
    .end local v1    # "driver":Ljava/sql/Driver;
    :cond_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_32

    .line 244
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "No suitable driver"

    const-string v5, "08001"

    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 240
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_32
    move-exception v3

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v3
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 260
    .local v0, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v5, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v5

    .line 261
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    sget-object v4, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 263
    .local v1, "driver":Ljava/sql/Driver;
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 264
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 268
    .end local v1    # "driver":Ljava/sql/Driver;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :catchall_28
    move-exception v4

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v4

    .line 267
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/sql/Driver;>;"
    :cond_2b
    :try_start_2b
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    return-object v4
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .registers 1

    .prologue
    .line 299
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getLoginTimeout()I
    .registers 1

    .prologue
    .line 277
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    .registers 8
    .param p0, "theObject"    # Ljava/lang/Object;
    .param p1, "theClassLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 390
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v3

    .line 405
    :cond_7
    :goto_7
    return v2

    .line 394
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 397
    .local v1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_19

    move-result-object v0

    .line 399
    .local v0, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_7

    .end local v0    # "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_17
    move v2, v3

    .line 405
    goto :goto_7

    .line 402
    :catch_19
    move-exception v2

    goto :goto_17
.end method

.method private static loadInitialDrivers()V
    .registers 8

    .prologue
    .line 75
    const-string v6, "jdbc.drivers"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "theDriverList":Ljava/lang/String;
    if-nez v4, :cond_a

    .line 96
    :cond_9
    return-void

    .line 84
    :cond_a
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "theDriverNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_13
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 89
    .local v1, "element":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_18
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_22

    .line 86
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 92
    :catch_22
    move-exception v6

    goto :goto_1f
.end method

.method public static println(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_f

    .line 311
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 321
    :cond_e
    :goto_e
    return-void

    .line 313
    :cond_f
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 314
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_e
.end method

.method public static registerDriver(Ljava/sql/Driver;)V
    .registers 3
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 335
    if-nez p0, :cond_a

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "driver == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_a
    sget-object v1, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    monitor-enter v1

    .line 339
    :try_start_d
    sget-object v0, Ljava/sql/DriverManager;->theDrivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v1

    .line 341
    return-void

    .line 340
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    sput-object p0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    .line 364
    return-void
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 374
    sput-object p0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    .line 375
    return-void
.end method

.method public static setLoginTimeout(I)V
    .registers 1
    .param p0, "seconds"    # I

    .prologue
    .line 350
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 351
    return-void
.end method
