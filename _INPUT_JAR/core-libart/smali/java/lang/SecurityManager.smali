.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 40
    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 42
    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .registers 2
    .param p1, "group"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 44
    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 46
    return-void
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 48
    return-void
.end method

.method public checkCreateClassLoader()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public checkExit(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 56
    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method public checkListen(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 60
    return-void
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "maddr"    # Ljava/net/InetAddress;

    .prologue
    .line 64
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .registers 3
    .param p1, "maddr"    # Ljava/net/InetAddress;
    .param p2, "ttl"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 149
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 151
    return-void
.end method

.method public checkPrintJobAccess()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public checkPropertiesAccess()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 79
    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 83
    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public checkSetFactory()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public checkSystemClipboardAccess()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "window"    # Ljava/lang/Object;

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 97
    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method protected classLoaderDepth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, -0x1

    return v0
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCheck()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected inClassLoader()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
