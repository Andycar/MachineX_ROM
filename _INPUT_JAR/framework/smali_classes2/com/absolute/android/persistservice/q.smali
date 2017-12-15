.class final Lcom/absolute/android/persistservice/q;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "RunningServicesWorkerThread"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/o;

.field private d:Ljava/util/Hashtable;

.field private e:Lcom/absolute/android/persistservice/r;


# direct methods
.method protected constructor <init>(Lcom/absolute/android/persistservice/o;)V
    .registers 3

    .prologue
    .line 619
    iput-object p1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    .line 620
    const-string v0, "RunningServicesWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->d:Ljava/util/Hashtable;

    .line 623
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;)Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->d:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 646
    monitor-enter p0

    .line 647
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/r;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_17

    .line 650
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    goto :goto_1

    .line 651
    :catch_9
    move-exception v0

    .line 652
    :try_start_a
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    iget-object v1, v1, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/y;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    goto :goto_1

    .line 655
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    return-void
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 694
    monitor-exit p0

    return-void

    .line 693
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 670
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/r;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/absolute/android/persistservice/r;->removeMessages(ILjava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->d:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/o;

    iget-object v0, v0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting running services monitoring check for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/r;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/absolute/android/persistservice/r;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/r;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/r;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 683
    monitor-exit p0

    return-void

    .line 670
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 705
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 631
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 633
    monitor-enter p0

    .line 634
    :try_start_4
    new-instance v0, Lcom/absolute/android/persistservice/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/r;-><init>(Lcom/absolute/android/persistservice/q;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->e:Lcom/absolute/android/persistservice/r;

    .line 637
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 638
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 639
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 640
    return-void

    .line 638
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
