.class public final Lcom/absolute/android/persistservice/ai;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final a:Z = false

.field private static final b:I = 0x3

.field private static final c:Ljava/lang/String; = "PingWorkerThread_"


# instance fields
.field private d:Lcom/absolute/android/persistservice/o;

.field private e:Lcom/absolute/android/persistservice/y;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/absolute/android/persistence/IABTPing;

.field private j:Lcom/absolute/android/persistservice/ak;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/o;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 7

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingWorkerThread_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    .line 58
    iput-object p1, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    .line 59
    iget-object v0, p1, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/y;

    iput-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    .line 60
    iput-object p2, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    .line 62
    iput p4, p0, Lcom/absolute/android/persistservice/ai;->g:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ai;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistence/IABTPing;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ai;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_15

    .line 100
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 101
    :catch_9
    move-exception v0

    .line 102
    :try_start_a
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 105
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ai;)Lcom/absolute/android/persistservice/o;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ai;)I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/absolute/android/persistservice/ai;->g:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 70
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_15

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    :catch_9
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 71
    monitor-enter p0

    .line 75
    :try_start_17
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_35
    .catchall {:try_start_17 .. :try_end_21} :catchall_5b

    .line 84
    :goto_21
    :try_start_21
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    if-eqz v0, :cond_30

    .line 85
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x3

    iget v2, p0, Lcom/absolute/android/persistservice/ai;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/ak;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    .line 89
    monitor-exit p0

    return-void

    .line 76
    :catch_35
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to bind to IABTPing interface of application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register for death of recipient. Already dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V
    :try_end_5a
    .catchall {:try_start_21 .. :try_end_5a} :catchall_5b

    goto :goto_21

    .line 89
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .registers 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ak;->removeMessages(I)V

    .line 118
    :cond_b
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 121
    monitor-exit p0

    return-void

    .line 114
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final binderDied()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABTPersistenceService Ping Thread got \'binderDied\' notification for application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->d:Lcom/absolute/android/persistservice/o;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_4
    new-instance v0, Lcom/absolute/android/persistservice/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/ak;-><init>(Lcom/absolute/android/persistservice/ai;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ai;->j:Lcom/absolute/android/persistservice/ak;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 137
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 139
    return-void

    .line 137
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ai;->h:Z

    if-eqz v0, :cond_43

    const-string/jumbo v0, "true"

    .line 167
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ping interval = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/absolute/android/persistservice/ai;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_43
    const-string v0, "false"

    goto :goto_c
.end method
