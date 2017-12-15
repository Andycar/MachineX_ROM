.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "connectionManager"    # Landroid/net/http/RequestQueue$ConnectionManager;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 50
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    .line 52
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 53
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 54
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 55
    return-void
.end method


# virtual methods
.method requestStop()V
    .registers 3

    .prologue
    .line 58
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v1

    .line 59
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 60
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    .line 69
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 78
    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 80
    :cond_a
    :goto_a
    iget-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v1, :cond_8b

    .line 81
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1c

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 88
    :cond_1c
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v1}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    .line 91
    .local v0, "request":Landroid/net/http/Request;
    if-nez v0, :cond_43

    .line 92
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v4

    .line 94
    const/4 v1, 0x1

    :try_start_28
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_40

    .line 96
    :try_start_2a
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_8c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_40

    .line 99
    :goto_2f
    const/4 v1, 0x0

    :try_start_30
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 100
    iget-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3e

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 104
    :cond_3e
    monitor-exit v4

    goto :goto_a

    :catchall_40
    move-exception v1

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_40

    throw v1

    .line 109
    :cond_43
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v1, v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v1

    iput-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 111
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v1, v0}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 112
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v1}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 113
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v1, v4}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 114
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v1}, Landroid/net/http/Connection;->closeConnection()V

    .line 119
    :cond_6b
    :goto_6b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 121
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_a

    .line 122
    iget-wide v2, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 123
    .local v2, "start":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 124
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    iget-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    goto :goto_a

    .line 117
    .end local v2    # "start":J
    :cond_85
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v1}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_6b

    .line 129
    .end local v0    # "request":Landroid/net/http/Request;
    :cond_8b
    return-void

    .line 97
    .restart local v0    # "request":Landroid/net/http/Request;
    :catch_8c
    move-exception v1

    goto :goto_2f
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v2, :cond_39

    const-string v1, ""

    .line 133
    .local v1, "con":Ljava/lang/String;
    :goto_7
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v2, :cond_40

    const-string/jumbo v0, "w"

    .line 134
    .local v0, "active":Ljava/lang/String;
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_43

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 132
    .end local v0    # "active":Ljava/lang/String;
    .end local v1    # "con":Ljava/lang/String;
    :cond_39
    :try_start_39
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 133
    .restart local v1    # "con":Ljava/lang/String;
    :cond_40
    const-string v0, "a"
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_e

    .line 132
    .end local v1    # "con":Ljava/lang/String;
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method
