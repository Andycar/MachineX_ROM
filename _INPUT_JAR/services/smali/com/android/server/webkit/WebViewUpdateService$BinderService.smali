.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;
    .param p2, "x1"    # Lcom/android/server/webkit/WebViewUpdateService$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public notifyRelroCreationCompleted(ZZ)V
    .registers 6
    .param p1, "is64Bit"    # Z
    .param p2, "success"    # Z

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 103
    :goto_10
    return-void

    .line 95
    :cond_11
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    monitor-enter v1

    .line 96
    if-eqz p1, :cond_26

    .line 97
    :try_start_16
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z
    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$202(Lcom/android/server/webkit/WebViewUpdateService;Z)Z

    .line 101
    :goto_1c
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v1

    goto :goto_10

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v0

    .line 99
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z
    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$302(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    goto :goto_1c
.end method

.method public waitForRelroCreationCompleted(Z)V
    .registers 16
    .param p1, "is64Bit"    # Z

    .prologue
    const-wide/32 v10, 0xf4240

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne v3, v8, :cond_15

    .line 115
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot create a WebView from the SystemServer"

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_15
    const-wide/32 v0, 0xf4240

    .line 119
    .local v0, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    add-long v6, v8, v10

    .line 120
    .local v6, "timeoutTimeMs":J
    if-eqz p1, :cond_46

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->access$200(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v2

    .line 121
    .local v2, "relroReady":Z
    :goto_29
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    monitor-enter v8

    .line 122
    :goto_2c
    if-nez v2, :cond_3b

    .line 123
    :try_start_2e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12

    .line 124
    .local v4, "timeNowMs":J
    cmp-long v3, v4, v6

    if-ltz v3, :cond_4d

    .line 130
    .end local v4    # "timeNowMs":J
    :cond_3b
    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_64

    .line 131
    if-nez v2, :cond_45

    const-string v3, "WebViewUpdateService"

    const-string v8, "creating relro file timed out"

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_45
    return-void

    .line 120
    .end local v2    # "relroReady":Z
    :cond_46
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->access$300(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v2

    goto :goto_29

    .line 126
    .restart local v2    # "relroReady":Z
    .restart local v4    # "timeNowMs":J
    :cond_4d
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    sub-long v10, v6, v4

    invoke-virtual {v3, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_54} :catch_67
    .catchall {:try_start_4d .. :try_end_54} :catchall_64

    .line 128
    :goto_54
    if-eqz p1, :cond_5d

    :try_start_56
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->access$200(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v2

    .line 129
    :goto_5c
    goto :goto_2c

    .line 128
    :cond_5d
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z
    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->access$300(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v2

    goto :goto_5c

    .line 130
    .end local v4    # "timeNowMs":J
    :catchall_64
    move-exception v3

    monitor-exit v8
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_64

    throw v3

    .line 127
    .restart local v4    # "timeNowMs":J
    :catch_67
    move-exception v3

    goto :goto_54
.end method
