.class Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 167
    :try_start_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 168
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/IPackageInstallObserver2;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$102(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_55

    .line 172
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->commitLocked()V
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_19
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_55

    .line 180
    :goto_19
    const/4 v2, 0x1

    :try_start_1a
    monitor-exit v3

    return v2

    .line 173
    :catch_1c
    move-exception v1

    .line 174
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "completeMsg":Ljava/lang/String;
    const-string v2, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 177
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$1;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v1, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v2, v4, v0, v5}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    .line 181
    .end local v0    # "completeMsg":Ljava/lang/String;
    .end local v1    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_1a .. :try_end_57} :catchall_55

    throw v2
.end method
