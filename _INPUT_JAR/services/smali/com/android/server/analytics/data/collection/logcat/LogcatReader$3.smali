.class Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;
.super Ljava/lang/Object;
.source "LogcatReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->startReadingLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)V
    .registers 2

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 293
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "logcat"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 298
    const-string v8, "-v"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_20
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mBuffer:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$100(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 303
    const-string v8, "-b"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mBuffer:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$100(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_36
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFilterSpecs:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$200(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_55

    .line 308
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFilterSpecs:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$200(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_46
    if-ge v5, v6, :cond_50

    aget-object v4, v0, v5

    .line 309
    .local v4, "filterSpec":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 311
    .end local v4    # "filterSpec":Ljava/lang/String;
    :cond_50
    const-string v8, "*:S"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_55
    const-string v8, "LogcatReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collect Logs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v9, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    # setter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcess:Ljava/lang/Process;
    invoke-static {v9, v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$302(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;Ljava/lang/Process;)Ljava/lang/Process;

    .line 320
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcess:Ljava/lang/Process;
    invoke-static {v9}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$300(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->onStarted()V

    .line 327
    :goto_a0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_be

    .line 329
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->processLogcatRecord(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_af} :catch_b0

    goto :goto_a0

    .line 332
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "line":Ljava/lang/String;
    :catch_b0
    move-exception v3

    .line 333
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b4
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->onFinished()V

    .line 337
    return-void

    .line 331
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "line":Ljava/lang/String;
    :cond_be
    :try_start_be
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_b0

    goto :goto_b4
.end method
