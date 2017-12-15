.class public Lcom/absolute/android/persistservice/ABTPackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ABTPackageInstallObserver.java"


# instance fields
.field finished:Z

.field result:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinished()Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPackageInstallObserver;->finished:Z

    return v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/absolute/android/persistservice/ABTPackageInstallObserver;->result:I

    return v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 19
    const-string v0, "Absolute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABTPackageInstallObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    monitor-enter p0

    .line 21
    const/4 v0, 0x1

    :try_start_24
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPackageInstallObserver;->finished:Z

    .line 22
    iput p2, p0, Lcom/absolute/android/persistservice/ABTPackageInstallObserver;->result:I

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 24
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v0
.end method
