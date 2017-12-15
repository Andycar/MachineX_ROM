.class public Landroid/filterfw/core/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterFactory"

.field private static mClassLoaderGuard:Ljava/lang/Object;

.field private static mCurrentClassLoader:Ljava/lang/ClassLoader;

.field private static mLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogVerbose:Z

.field private static mSharedFactory:Landroid/filterfw/core/FilterFactory;


# instance fields
.field private mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    .line 49
    const-string v0, "FilterFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    return-void
.end method

.method public static addFilterLibrary(Ljava/lang/String;)V
    .registers 4
    .param p0, "libraryPath"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    const-string v0, "FilterFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding filter library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1c
    sget-object v1, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_1f
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 68
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_32

    const-string v0, "FilterFactory"

    const-string v2, "Library already added"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_32
    monitor-exit v1

    .line 75
    :goto_33
    return-void

    .line 71
    :cond_34
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v2, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    .line 74
    monitor-exit v1

    goto :goto_33

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_44

    throw v0
.end method

.method public static sharedFactory()Landroid/filterfw/core/FilterFactory;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    .line 55
    :cond_b
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    const-string v0, "FilterFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1c
    iget-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .registers 10
    .param p1, "filterClass"    # Ljava/lang/Class;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    const-class v4, Landroid/filterfw/core/Filter;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_42

    .line 123
    const/4 v3, 0x0

    .line 125
    .local v3, "filterConstructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    :try_start_7
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_11} :catch_62

    move-result-object v3

    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "filter":Landroid/filterfw/core/Filter;
    const/4 v4, 0x1

    :try_start_14
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/filterfw/core/Filter;

    move-object v2, v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_21} :catch_83

    .line 139
    :goto_21
    if-nez v2, :cond_82

    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not construct the filter \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v2    # "filter":Landroid/filterfw/core/Filter;
    .end local v3    # "filterConstructor":Ljava/lang/reflect/Constructor;
    :catch_42
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to allocate class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' which is not a subclass of Filter!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "filterConstructor":Ljava/lang/reflect/Constructor;
    :catch_62
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The filter class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not have a constructor of the form <init>(String name)!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "filter":Landroid/filterfw/core/Filter;
    :cond_82
    return-object v2

    .line 135
    :catch_83
    move-exception v4

    goto :goto_21
.end method

.method public createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .registers 11
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v4, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v4, :cond_1c

    const-string v4, "FilterFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Looking up class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1c
    const/4 v1, 0x0

    .line 93
    .local v1, "filterClass":Ljava/lang/Class;
    iget-object v4, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, "packageName":Ljava/lang/String;
    :try_start_2f
    sget-boolean v4, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v4, :cond_55

    const-string v4, "FilterFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_55
    sget-object v5, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    monitor-enter v5
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_58} :catch_9c

    .line 97
    :try_start_58
    sget-object v4, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    monitor-exit v5
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_99

    .line 103
    if-eqz v1, :cond_23

    .line 107
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_78
    if-nez v1, :cond_9e

    .line 108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown filter class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    .restart local v3    # "packageName":Ljava/lang/String;
    :catchall_99
    move-exception v4

    :try_start_9a
    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v4
    :try_end_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9b .. :try_end_9c} :catch_9c

    .line 99
    :catch_9c
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_23

    .line 110
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_9e
    invoke-virtual {p0, v1, p2}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v4

    return-object v4
.end method
