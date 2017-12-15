.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    .line 1807
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    .line 1808
    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 1809
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v4, 0x1

    .line 1828
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1829
    iget-object v2, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    # invokes: Landroid/accounts/AccountManager;->ensureNotOnMainThread()V
    invoke-static {v2}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)V

    .line 1832
    :cond_c
    if-nez p1, :cond_16

    .line 1833
    :try_start_e
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_11} :catch_2c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_11} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_11} :catch_36
    .catchall {:try_start_e .. :try_end_11} :catchall_42

    move-result-object v2

    .line 1859
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    :goto_15
    return-object v2

    .line 1835
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_1d} :catch_2c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_1d} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1d} :catch_36
    .catchall {:try_start_16 .. :try_end_1d} :catchall_42

    move-result-object v2

    .line 1859
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_15

    .line 1837
    :catch_22
    move-exception v2

    .line 1859
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 1861
    :goto_26
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 1839
    :catch_2c
    move-exception v2

    .line 1859
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_26

    .line 1841
    :catch_31
    move-exception v2

    .line 1859
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_26

    .line 1843
    :catch_36
    move-exception v1

    .line 1844
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_37
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1845
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_47

    .line 1846
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_42

    .line 1859
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_42
    move-exception v2

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    throw v2

    .line 1847
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_47
    :try_start_47
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_51

    .line 1848
    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1849
    :cond_51
    instance-of v2, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v2, :cond_58

    .line 1850
    check-cast v0, Landroid/accounts/AuthenticatorException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1851
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_58
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5f

    .line 1852
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1853
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5f
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_66

    .line 1854
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1856
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_66
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6c
    .catchall {:try_start_47 .. :try_end_6c} :catchall_42
.end method


# virtual methods
.method protected done()V
    .registers 2

    .prologue
    .line 1812
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_c

    .line 1813
    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 1819
    :cond_c
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v0, 0x0

    .line 1866
    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1871
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public start()Landroid/accounts/AccountManager$Future2Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1822
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    .line 1823
    return-object p0
.end method
