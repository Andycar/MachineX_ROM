.class public final Lcom/absolute/android/persistservice/aa;
.super Lcom/absolute/android/persistservice/ag;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "state"

.field private static final h:Ljava/lang/String; = "buildFingerPrint"

.field private static final i:Ljava/lang/String; = "deviceId"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ag;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()I
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(I)V
    .registers 5

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/aa;->e()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "buildFingerPrint"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/aa;->e()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "buildFingerPrint"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/aa;->e()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 105
    monitor-exit p0

    return-void

    .line 103
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->e:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Persistence Settings file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found. Initalizing with defaults."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->e:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing persistence state to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "buildFingerPrint"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method protected final declared-synchronized d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->c:Ljava/util/Hashtable;

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 134
    new-instance v1, Lcom/absolute/android/persistservice/aa;

    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/absolute/android/persistservice/aa;->e:Lcom/absolute/android/persistservice/y;

    invoke-static {p1}, Lcom/absolute/android/utils/FileUtil;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/aa;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    .line 136
    :try_start_e
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/aa;->i(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/aa;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_14} :catch_1a

    move-result v1

    if-nez v1, :cond_18

    .line 139
    :goto_17
    return v0

    .line 137
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 139
    :catch_1a
    move-exception v1

    goto :goto_17
.end method
