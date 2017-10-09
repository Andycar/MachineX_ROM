.class Lcom/android/server/am/AMSLogger$AMSHandler;
.super Ljava/util/logging/Handler;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/am/AMSLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->this$0:Lcom/android/server/am/AMSLogger;

    .line 326
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    .line 329
    iput-object p3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    .line 330
    iput-wide p4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    .line 331
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 332
    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 380
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_50

    .line 381
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_52

    .line 382
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_e
    new-array v0, v8, [B

    .line 384
    .local v0, "buf":[B
    :goto_10
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_37

    .line 385
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 387
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    :catch_1b
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 389
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1e
    if-eqz v3, :cond_24

    .line 390
    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 391
    const/4 v3, 0x0

    .line 393
    :cond_24
    if-eqz v6, :cond_2a

    .line 394
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_3a

    .line 395
    const/4 v6, 0x0

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    if-eqz v3, :cond_30

    .line 403
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 404
    const/4 v3, 0x0

    .line 406
    :cond_30
    if-eqz v6, :cond_36

    .line 407
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_35} :catch_45

    .line 408
    const/4 v6, 0x0

    .line 413
    :cond_36
    :goto_36
    return-void

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_37
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 400
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2a

    .line 397
    .end local v0    # "buf":[B
    .end local v5    # "len":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v2

    .line 398
    .local v2, "ie":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Ljava/io/IOException;
    :catch_45
    move-exception v1

    .line 411
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/AMSLogger;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Couldn\'t close FileInputStream"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v1

    goto :goto_1e

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_52
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1e
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 335
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 337
    invoke-virtual {v0, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_55

    .line 341
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_36

    .line 342
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 343
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_36} :catch_86

    .line 363
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_52

    .line 364
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 365
    invoke-virtual {v0, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 367
    :try_start_40
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 368
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_52} :catch_84

    .line 373
    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v2

    .line 349
    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_63

    .line 350
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 351
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 353
    :cond_63
    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "oldFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 356
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 357
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    .line 358
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_81} :catch_82

    goto :goto_36

    .line 359
    .end local v1    # "oldFile":Ljava/io/File;
    :catch_82
    move-exception v2

    goto :goto_36

    .line 370
    :catch_84
    move-exception v2

    goto :goto_52

    .line 345
    :catch_86
    move-exception v2

    goto :goto_36
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 433
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 435
    :cond_9
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 427
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 429
    :cond_9
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/am/AMSLogger$AMSHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 423
    :cond_6
    :goto_6
    return-void

    .line 418
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 419
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/android/server/am/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/am/AMSLogger$AMSHandler;->flush()V

    goto :goto_6
.end method
