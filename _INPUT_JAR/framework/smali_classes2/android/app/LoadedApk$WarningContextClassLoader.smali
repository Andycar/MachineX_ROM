.class Landroid/app/LoadedApk$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static warned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 500
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LoadedApk$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/app/LoadedApk$1;

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>()V

    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 503
    sget-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    if-eqz v0, :cond_5

    .line 514
    :goto_4
    return-void

    .line 506
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    .line 507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 508
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassLoader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The class loader returned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.getContextClassLoader() may fail for processes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "that host multiple applications. You should explicitly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "specify a context class loader. For example: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.setContextClassLoader(getClass().getClassLoader());"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public clearAssertionStatus()V
    .registers 2

    .prologue
    .line 552
    const-string v0, "clearAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    .line 554
    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v0, "getResource"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v0, "getResourceAsStream"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    const-string v0, "getResources"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 532
    const-string v0, "loadClass"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 537
    const-string/jumbo v0, "setClassAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    .line 539
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 547
    const-string/jumbo v0, "setDefaultAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    .line 549
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 542
    const-string/jumbo v0, "setPackageAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 544
    return-void
.end method
