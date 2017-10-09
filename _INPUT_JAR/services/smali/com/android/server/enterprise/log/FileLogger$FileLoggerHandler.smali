.class Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;
.super Landroid/os/Handler;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLoggerHandler"
.end annotation


# instance fields
.field private lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_94

    .line 193
    const-string v3, "FileLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid File Log Handler Message Type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1f
    :goto_1f
    return-void

    .line 160
    :pswitch_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 161
    .local v4, "timeStamp":J
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    .line 162
    .local v2, "entry":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-wide v4, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    .line 166
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x14

    if-lt v3, v6, :cond_1f

    .line 171
    .end local v2    # "entry":Ljava/lang/StringBuilder;
    .end local v4    # "timeStamp":J
    :pswitch_47
    const-string v3, "FileLogger"

    const-string v6, "consumerQueue PUT"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_5d

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_5d

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "cdl":Ljava/util/concurrent/CountDownLatch;
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 175
    .restart local v0    # "cdl":Ljava/util/concurrent/CountDownLatch;
    :cond_5d
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    # invokes: Lcom/android/server/enterprise/log/FileLogger;->startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v3, v0}, Lcom/android/server/enterprise/log/FileLogger;->access$100(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    .line 177
    :try_start_62
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    # getter for: Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->access$200(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6d} :catch_89

    .line 181
    :goto_6d
    const-string v3, "FileLogger"

    const-string/jumbo v6, "producerQueue TAKE"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_75
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    # getter for: Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->access$300(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_83} :catch_8e

    .line 187
    :goto_83
    if-eqz v0, :cond_1f

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1f

    .line 178
    :catch_89
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6d

    .line 184
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_8e
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_83

    .line 158
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_20
        :pswitch_47
    .end packed-switch
.end method
