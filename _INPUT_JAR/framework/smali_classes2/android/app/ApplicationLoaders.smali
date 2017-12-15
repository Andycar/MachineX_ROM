.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;

.field private static openArtFile_M:Ljava/lang/reflect/Method;


# instance fields
.field private final isElasticEnabled:Z

.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    .line 52
    :try_start_3
    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "openArtFile"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1f} :catch_27

    .line 150
    :goto_1f
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void

    .line 54
    :catch_27
    move-exception v0

    goto :goto_1f
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ApplicationLoaders;->isElasticEnabled:Z

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .registers 9
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "libraryPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x0

    .line 60
    sget-object v1, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_25

    .line 62
    :try_start_5
    sget-object v1, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    check-cast v1, Ldalvik/system/PathClassLoader;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1c} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_39

    .line 78
    :goto_1c
    return-object v1

    .line 64
    :catch_1d
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_25
    :goto_25
    move-object v1, v2

    .line 78
    goto :goto_1c

    .line 67
    :catch_27
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_30
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 73
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_39
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationLoaders"

    const-string v2, "openArtFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    throw v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 5
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;
    .registers 13
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;
    .param p4, "isElasticApp"    # Z

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 95
    .local v0, "baseParent":Ljava/lang/ClassLoader;
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 96
    if-nez p3, :cond_e

    .line 97
    move-object p3, v0

    .line 105
    :cond_e
    if-ne p3, v0, :cond_35

    .line 106
    :try_start_10
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 107
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1d

    .line 108
    monitor-exit v4

    move-object v2, v1

    .line 144
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :goto_1c
    return-object v2

    .line 111
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1d
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 118
    invoke-static {p1, p2, p3}, Landroid/app/ApplicationLoaders;->openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v2

    .line 124
    .local v2, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v4

    goto :goto_1c

    .line 145
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_32

    throw v3

    .line 130
    :cond_35
    const-wide/16 v6, 0x40

    :try_start_37
    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    const/4 v3, 0x0

    invoke-static {p1, v3, p3}, Landroid/app/ApplicationLoaders;->openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v2

    .line 143
    .restart local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_32

    goto :goto_1c
.end method
