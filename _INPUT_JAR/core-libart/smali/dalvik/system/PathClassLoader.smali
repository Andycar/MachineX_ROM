.class public Ldalvik/system/PathClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "PathClassLoader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v0, p2}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 66
    return-void
.end method

.method public static openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .registers 4
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "libraryPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Ldalvik/system/PathClassLoader;->openNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v0

    .line 73
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    if-eqz v0, :cond_7

    .line 76
    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :goto_6
    return-object v0

    .restart local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :cond_7
    new-instance v0, Ldalvik/system/PathClassLoader;

    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_6
.end method

.method private static native openNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
.end method
