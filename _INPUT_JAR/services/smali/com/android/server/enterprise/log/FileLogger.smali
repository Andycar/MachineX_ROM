.class public Lcom/android/server/enterprise/log/FileLogger;
.super Lcom/android/server/enterprise/log/Logger;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;,
        Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;,
        Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    }
.end annotation


# static fields
.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final LIMIT_FOR_LOGS_IN_DAYS:I = 0x5

.field private static LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String; = null

.field private static final LOG_FILES_DIR:Ljava/lang/String; = "/data/system/enterprise/logs"

.field private static final MSG_QUEUE_LOG:I = 0x1

.field private static final MSG_WRITE_LOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FileLogger"

.field private static final mCalendar:Ljava/util/Calendar;


# instance fields
.field private final consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

.field private mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

.field private final producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/server/enterprise/log/FileLogger$LogBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, " | "

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/log/FileLogger;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/Logger;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 143
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogFileWriterThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;-><init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/log/FileLogger;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/log/FileLogger;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->consumerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/log/FileLogger;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->producerQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(J)J
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/server/enterprise/log/FileLogger;->getDayBoundaryTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/log/FileLogger;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/log/FileLogger;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/enterprise/log/FileLogger;->cleanupLogs()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/log/FileLogger;
    .param p1, "x1"    # Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    return-object p1
.end method

.method private cleanupLogs()V
    .registers 8

    .prologue
    .line 221
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/system/enterprise/logs"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    .line 249
    :cond_d
    return-void

    .line 226
    :cond_e
    new-instance v6, Lcom/android/server/enterprise/log/FileLogger$1;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/log/FileLogger$1;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 241
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_d

    .line 245
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1c
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    .line 246
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c
.end method

.method private static final getDayBoundaryTimestamp(J)J
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 339
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 340
    const-wide/32 v0, 0x15180

    rem-long v0, p0, v0

    sub-long/2addr p0, v0

    .line 341
    return-wide p0
.end method

.method private startLogFileWriter(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .param p1, "cdl"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    if-nez v0, :cond_c

    .line 205
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .line 207
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1d

    .line 208
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    .line 210
    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_32

    .line 211
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger;->mLogFileWriter:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    :cond_32
    return-void
.end method


# virtual methods
.method public copyLogs(Ljava/io/FileOutputStream;)V
    .registers 10
    .param p1, "outFile"    # Ljava/io/FileOutputStream;

    .prologue
    .line 352
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/system/enterprise/logs"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    .line 402
    :cond_d
    return-void

    .line 357
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger;->flush()V

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 361
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_d

    .line 365
    new-instance v6, Lcom/android/server/enterprise/log/FileLogger$2;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/log/FileLogger$2;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 374
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_22
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    .line 375
    .local v2, "file":Ljava/io/File;
    new-instance v6, Lcom/android/server/enterprise/log/FileLogger$3;

    invoke-direct {v6, p0, v2, p1}, Lcom/android/server/enterprise/log/FileLogger$3;-><init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_22
.end method

.method public flush()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 96
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 97
    .local v1, "flushLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 98
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 100
    :try_start_11
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1c

    .line 104
    :goto_14
    const-string v3, "FileLogger"

    const-string v4, "flush complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 101
    :catch_1c
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "entry":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/enterprise/log/Log;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/log/FileLogger;->LOG_ENTRY_SECTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger;->mHandler:Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method
