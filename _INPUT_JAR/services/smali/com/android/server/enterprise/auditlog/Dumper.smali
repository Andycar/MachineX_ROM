.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;

.field private mZos:Ljava/util/zip/GZIPOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 11
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "obs"    # Lcom/android/server/enterprise/auditlog/IObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    const-string v0, "Dumper"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->TAG:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 70
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 77
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 78
    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 79
    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    .line 80
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 81
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 82
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 17
    .param p1, "tempHeaderFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "mDumpFilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v3, 0x0

    .line 476
    .local v3, "generatedFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 478
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/4 v2, 0x0

    .line 479
    .local v2, "filesInCommand":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string v11, "cat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 483
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_26

    .line 484
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 488
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_2d
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    .line 492
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 493
    .local v6, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 494
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_53} :catch_54

    goto :goto_2d

    .line 516
    .end local v6    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_54
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "concatenateFiles.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_71
    :goto_71
    return-object v3

    .line 498
    :cond_72
    :try_start_72
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v11, :cond_71

    .line 499
    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v11, "/temp.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    aput-object v2, v0, v11

    .line 504
    .local v0, "cmds":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 506
    .local v7, "proc":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 507
    .local v9, "stdError":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 508
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d4

    .line 509
    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while Executing the Cat command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 511
    :cond_d4
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/temp.gz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_f2} :catch_54

    .end local v3    # "generatedFile":Ljava/io/File;
    .local v4, "generatedFile":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "generatedFile":Ljava/io/File;
    .restart local v3    # "generatedFile":Ljava/io/File;
    goto/16 :goto_71
.end method

.method private createHeader()V
    .registers 8

    .prologue
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 141
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 142
    const-string v2, "----------------------------------------------\n"

    .line 144
    .local v2, "separator":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 149
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v1, :cond_49

    .line 150
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 158
    .end local v3    # "temp":Ljava/lang/String;
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Log Generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "dateAndTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .registers 8
    .param p1, "headerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 345
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 348
    .local v0, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2c

    .line 349
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_7
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_41

    .line 351
    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_11
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_44

    .line 354
    if-eqz v1, :cond_26

    .line 356
    :try_start_20
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 357
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_48

    .line 360
    :cond_26
    :goto_26
    if-eqz v3, :cond_2b

    .line 362
    :try_start_28
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_3b

    .line 367
    :cond_2b
    :goto_2b
    return-void

    .line 354
    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_2c
    move-exception v4

    :goto_2d
    if-eqz v0, :cond_35

    .line 356
    :try_start_2f
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 357
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_3f

    .line 360
    :cond_35
    :goto_35
    if-eqz v2, :cond_3a

    .line 362
    :try_start_37
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 363
    :cond_3a
    :goto_3a
    throw v4

    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_3b
    move-exception v4

    goto :goto_2b

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_3d
    move-exception v5

    goto :goto_3a

    .line 358
    :catch_3f
    move-exception v5

    goto :goto_35

    .line 354
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_41
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2d

    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_44
    move-exception v4

    move-object v0, v1

    .end local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2d

    .line 358
    .end local v0    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_48
    move-exception v4

    goto :goto_26
.end method

.method private fullDump()V
    .registers 27

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 371
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    sget-object v8, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 372
    .local v8, "directoryPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 373
    .local v11, "fileStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 374
    .local v13, "gzipStream":Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 375
    .local v18, "outStream":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 376
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 378
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v21, 0x0

    .line 381
    .local v21, "tempHeaderFile":Ljava/io/File;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v23, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_8f
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f2

    if-eqz v23, :cond_e8

    move-object v5, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "decoder":Ljava/io/Reader;
    .local v7, "decoder":Ljava/io/Reader;
    move-object v14, v13

    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .local v14, "gzipStream":Ljava/io/InputStream;
    move-object v12, v11

    .line 382
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .local v12, "fileStream":Ljava/io/InputStream;
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_27b

    .line 383
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 384
    .local v20, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 386
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_256
    .catchall {:try_start_20 .. :try_end_41} :catchall_234

    .line 387
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :try_start_41
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_25d
    .catchall {:try_start_41 .. :try_end_46} :catchall_23a

    .line 388
    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    :try_start_46
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v6, v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_263
    .catchall {:try_start_46 .. :try_end_4f} :catchall_23f

    .line 389
    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    :try_start_4f
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_268
    .catchall {:try_start_4f .. :try_end_54} :catchall_243

    .line 391
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_54
    :goto_54
    :try_start_54
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_e2

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_54

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_8e} :catch_8f
    .catchall {:try_start_54 .. :try_end_8e} :catchall_1f2

    goto :goto_54

    .line 427
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_8f
    move-exception v9

    .line 428
    .local v9, "e":Ljava/lang/Exception;
    :goto_90
    const/16 v23, 0x0

    :try_start_92
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 429
    const-string v23, "Dumper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fullDump.Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/Dumper;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_92 .. :try_end_c5} :catchall_1f2

    .line 433
    if-eqz v21, :cond_ca

    .line 434
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 437
    :cond_ca
    if-eqz v4, :cond_d1

    .line 439
    :try_start_cc
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_1ca

    .line 441
    const/4 v13, 0x0

    .line 442
    const/4 v11, 0x0

    .line 447
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d1
    :goto_d1
    if-eqz v13, :cond_d7

    .line 449
    :try_start_d3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_1d4

    .line 451
    const/4 v11, 0x0

    .line 456
    :cond_d7
    :goto_d7
    if-eqz v11, :cond_dc

    .line 458
    :try_start_d9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_1de

    .line 463
    :cond_dc
    :goto_dc
    if-eqz v18, :cond_e1

    .line 465
    :try_start_de
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_1e8

    .line 471
    :cond_e1
    :goto_e1
    return-void

    .restart local v17    # "line":Ljava/lang/String;
    .restart local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :cond_e2
    move-object v5, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "decoder":Ljava/io/Reader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    move-object v14, v13

    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    move-object v12, v11

    .line 393
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_20

    .line 401
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "decoder":Ljava/io/Reader;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    :cond_e8
    if-eqz v8, :cond_187

    .line 403
    :try_start_ea
    new-instance v23, Ljava/io/File;

    sget-object v24, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_10c

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdir()Z

    .line 408
    :cond_10c
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/header"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_12e} :catch_8f
    .catchall {:try_start_ea .. :try_end_12e} :catchall_1f2

    .line 409
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .local v22, "tempHeaderFile":Ljava/io/File;
    :try_start_12e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 412
    .local v10, "f":Ljava/io/File;
    if-eqz v10, :cond_277

    .line 415
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_14c} :catch_26c
    .catchall {:try_start_12e .. :try_end_14c} :catchall_246

    .line 416
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    :try_start_14c
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_15f} :catch_271
    .catchall {:try_start_14c .. :try_end_15f} :catchall_24a

    .line 417
    .end local v18    # "outStream":Ljava/io/OutputStream;
    .local v19, "outStream":Ljava/io/OutputStream;
    const/high16 v23, 0x10000

    :try_start_161
    move/from16 v0, v23

    new-array v3, v0, [B

    .line 419
    .local v3, "buffer":[B
    :goto_165
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "length":I
    if-lez v16, :cond_17f

    .line 420
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_165

    .line 427
    .end local v3    # "buffer":[B
    .end local v16    # "length":I
    :catch_177
    move-exception v9

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v18    # "outStream":Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_90

    .line 422
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "outStream":Ljava/io/OutputStream;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v3    # "buffer":[B
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v16    # "length":I
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :cond_17f
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_182} :catch_177
    .catchall {:try_start_161 .. :try_end_182} :catchall_24f

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v18    # "outStream":Ljava/io/OutputStream;
    move-object v11, v12

    .line 433
    .end local v3    # "buffer":[B
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "fileStream":Ljava/io/InputStream;
    .end local v16    # "length":I
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    :cond_187
    :goto_187
    if-eqz v21, :cond_18c

    .line 434
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 437
    :cond_18c
    if-eqz v4, :cond_193

    .line 439
    :try_start_18e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_1af

    .line 441
    const/4 v13, 0x0

    .line 442
    const/4 v11, 0x0

    .line 447
    :cond_193
    :goto_193
    if-eqz v13, :cond_199

    .line 449
    :try_start_195
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_1b8

    .line 451
    const/4 v11, 0x0

    .line 456
    :cond_199
    :goto_199
    if-eqz v11, :cond_19e

    .line 458
    :try_start_19b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_1c1

    .line 463
    :cond_19e
    :goto_19e
    if-eqz v18, :cond_e1

    .line 465
    :try_start_1a0
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1a5

    goto/16 :goto_e1

    .line 466
    :catch_1a5
    move-exception v9

    .line 467
    .local v9, "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close outStream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 443
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1af
    move-exception v9

    .line 444
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close bufferedReader at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    .line 452
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1b8
    move-exception v9

    .line 453
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close gizp stream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_199

    .line 459
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1c1
    move-exception v9

    .line 460
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close fileStream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19e

    .line 443
    .local v9, "e":Ljava/lang/Exception;
    :catch_1ca
    move-exception v9

    .line 444
    .local v9, "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close bufferedReader at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d1

    .line 452
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1d4
    move-exception v9

    .line 453
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close gizp stream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 459
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1de
    move-exception v9

    .line 460
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close fileStream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 466
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1e8
    move-exception v9

    .line 467
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v23, "Dumper"

    const-string v24, "failed to close outStream at fullDump"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 433
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1f2
    move-exception v23

    :goto_1f3
    if-eqz v21, :cond_1f8

    .line 434
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 437
    :cond_1f8
    if-eqz v4, :cond_1ff

    .line 439
    :try_start_1fa
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1fd} :catch_210

    .line 441
    const/4 v13, 0x0

    .line 442
    const/4 v11, 0x0

    .line 447
    :cond_1ff
    :goto_1ff
    if-eqz v13, :cond_205

    .line 449
    :try_start_201
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_204} :catch_219

    .line 451
    const/4 v11, 0x0

    .line 456
    :cond_205
    :goto_205
    if-eqz v11, :cond_20a

    .line 458
    :try_start_207
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_222

    .line 463
    :cond_20a
    :goto_20a
    if-eqz v18, :cond_20f

    .line 465
    :try_start_20c
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_22b

    .line 468
    :cond_20f
    :goto_20f
    throw v23

    .line 443
    :catch_210
    move-exception v9

    .line 444
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v24, "Dumper"

    const-string v25, "failed to close bufferedReader at fullDump"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ff

    .line 452
    .end local v9    # "e":Ljava/io/IOException;
    :catch_219
    move-exception v9

    .line 453
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v24, "Dumper"

    const-string v25, "failed to close gizp stream at fullDump"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_205

    .line 459
    .end local v9    # "e":Ljava/io/IOException;
    :catch_222
    move-exception v9

    .line 460
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v24, "Dumper"

    const-string v25, "failed to close fileStream at fullDump"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20a

    .line 466
    .end local v9    # "e":Ljava/io/IOException;
    :catch_22b
    move-exception v9

    .line 467
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v24, "Dumper"

    const-string v25, "failed to close outStream at fullDump"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20f

    .line 433
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    :catchall_234
    move-exception v23

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object v13, v14

    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto :goto_1f3

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catchall_23a
    move-exception v23

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object v13, v14

    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    goto :goto_1f3

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    :catchall_23f
    move-exception v23

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    goto :goto_1f3

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_243
    move-exception v23

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1f3

    .end local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :catchall_246
    move-exception v23

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    goto :goto_1f3

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :catchall_24a
    move-exception v23

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto :goto_1f3

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v18    # "outStream":Ljava/io/OutputStream;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :catchall_24f
    move-exception v23

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19    # "outStream":Ljava/io/OutputStream;
    .restart local v18    # "outStream":Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto :goto_1f3

    .line 427
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    :catch_256
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object v13, v14

    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_90

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    :catch_25d
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object v13, v14

    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    goto/16 :goto_90

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    :catch_263
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    goto/16 :goto_90

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_268
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_90

    .end local v20    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :catch_26c
    move-exception v9

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    goto/16 :goto_90

    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :catch_271
    move-exception v9

    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_90

    .end local v21    # "tempHeaderFile":Ljava/io/File;
    .restart local v22    # "tempHeaderFile":Ljava/io/File;
    :cond_277
    move-object/from16 v21, v22

    .end local v22    # "tempHeaderFile":Ljava/io/File;
    .restart local v21    # "tempHeaderFile":Ljava/io/File;
    goto/16 :goto_187

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "fileStream":Ljava/io/InputStream;
    .end local v13    # "gzipStream":Ljava/io/InputStream;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v14    # "gzipStream":Ljava/io/InputStream;
    :cond_27b
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object v13, v14

    .end local v14    # "gzipStream":Ljava/io/InputStream;
    .restart local v13    # "gzipStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_187
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 26
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 267
    const-wide/16 v2, 0x0

    .line 271
    .local v2, "aTime":J
    const/16 v18, 0x0

    .line 272
    .local v18, "returnFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 273
    .local v13, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v11, 0x0

    .line 276
    .local v11, "fileStreamOut":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 277
    .local v9, "fileStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 278
    .local v15, "gzipStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 279
    .local v6, "decoder":Ljava/io/Reader;
    const/4 v4, 0x0

    .line 282
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2c

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 287
    :cond_2c
    new-instance v19, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Tmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5a} :catch_1dd
    .catchall {:try_start_a .. :try_end_5a} :catchall_1b2

    .line 288
    .end local v18    # "returnFile":Ljava/io/File;
    .local v19, "returnFile":Ljava/io/File;
    :try_start_5a
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_1e0
    .catchall {:try_start_5a .. :try_end_61} :catchall_1b4

    .line 289
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .local v12, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_61
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6f} :catch_1e5
    .catchall {:try_start_61 .. :try_end_6f} :catchall_1b8

    .line 291
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .local v14, "gZipOut":Ljava/util/zip/GZIPOutputStream;
    :try_start_6f
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_1eb
    .catchall {:try_start_6f .. :try_end_76} :catchall_1bd

    .line 292
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    :try_start_76
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_1f2
    .catchall {:try_start_76 .. :try_end_7d} :catchall_1c3

    .line 293
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .local v16, "gzipStream":Ljava/io/InputStream;
    :try_start_7d
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_88} :catch_1fa
    .catchall {:try_start_7d .. :try_end_88} :catchall_1ca

    .line 294
    .end local v6    # "decoder":Ljava/io/Reader;
    .local v7, "decoder":Ljava/io/Reader;
    :try_start_88
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_204
    .catchall {:try_start_88 .. :try_end_8d} :catchall_1d3

    .line 295
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :cond_8d
    :goto_8d
    :try_start_8d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_b3

    .line 296
    const-string v21, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9c} :catch_11b
    .catchall {:try_start_8d .. :try_end_9c} :catchall_17b

    move-result-object v20

    .line 298
    .local v20, "time":[Ljava/lang/String;
    const/16 v21, 0x0

    :try_start_9f
    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_a8} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_11b
    .catchall {:try_start_9f .. :try_end_a8} :catchall_17b

    move-result-wide v2

    .line 303
    :try_start_a9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_af} :catch_11b
    .catchall {:try_start_a9 .. :try_end_af} :catchall_17b

    cmp-long v21, v2, v22

    if-lez v21, :cond_cd

    .line 322
    .end local v20    # "time":[Ljava/lang/String;
    :cond_b3
    if-eqz v5, :cond_20f

    .line 324
    :try_start_b5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 326
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 327
    invoke-virtual {v14}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c1} :catch_194

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .line 333
    .end local v17    # "line":Ljava/lang/String;
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    :cond_ca
    :goto_ca
    return-object v18

    .line 299
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    .restart local v20    # "time":[Ljava/lang/String;
    :catch_cb
    move-exception v8

    .line 300
    .local v8, "e":Ljava/lang/NumberFormatException;
    goto :goto_8d

    .line 306
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_cd
    :try_start_cd
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-ltz v21, :cond_8d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-gtz v21, :cond_8d

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_159

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8d

    .line 309
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_119} :catch_11b
    .catchall {:try_start_cd .. :try_end_119} :catchall_17b

    goto/16 :goto_8d

    .line 318
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "time":[Ljava/lang/String;
    :catch_11b
    move-exception v8

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .line 319
    .end local v19    # "returnFile":Ljava/io/File;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v18    # "returnFile":Ljava/io/File;
    :goto_125
    :try_start_125
    const-string v21, "Dumper"

    const-string/jumbo v22, "readFileLineByLine.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_125 .. :try_end_13e} :catchall_1b2

    .line 322
    if-eqz v4, :cond_ca

    .line 324
    :try_start_140
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 325
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 326
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 327
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_14c} :catch_14e

    goto/16 :goto_ca

    .line 328
    :catch_14e
    move-exception v8

    .line 329
    .local v8, "e":Ljava/io/IOException;
    const-string v21, "Dumper"

    const-string/jumbo v22, "readFullFile.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    .line 312
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    .restart local v20    # "time":[Ljava/lang/String;
    :cond_159
    :try_start_159
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_179} :catch_11b
    .catchall {:try_start_159 .. :try_end_179} :catchall_17b

    goto/16 :goto_8d

    .line 322
    .end local v17    # "line":Ljava/lang/String;
    .end local v20    # "time":[Ljava/lang/String;
    :catchall_17b
    move-exception v21

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    :goto_185
    if-eqz v4, :cond_193

    .line 324
    :try_start_187
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 325
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 326
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 327
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_193} :catch_1a8

    .line 330
    :cond_193
    :goto_193
    throw v21

    .line 328
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_194
    move-exception v8

    .line 329
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v21, "Dumper"

    const-string/jumbo v22, "readFullFile.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .line 330
    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_ca

    .line 328
    .end local v8    # "e":Ljava/io/IOException;
    .end local v17    # "line":Ljava/lang/String;
    :catch_1a8
    move-exception v8

    .line 329
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v22, "Dumper"

    const-string/jumbo v23, "readFullFile.IOException"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    .line 322
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1b2
    move-exception v21

    goto :goto_185

    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1b4
    move-exception v21

    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1b8
    move-exception v21

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1bd
    move-exception v21

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1c3
    move-exception v21

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1ca
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catchall_1d3
    move-exception v21

    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto :goto_185

    .line 318
    :catch_1dd
    move-exception v8

    goto/16 :goto_125

    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1e0
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1e5
    move-exception v8

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1eb
    move-exception v8

    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1f2
    move-exception v8

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_1fa
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v19    # "returnFile":Ljava/io/File;
    :catch_204
    move-exception v8

    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_125

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "decoder":Ljava/io/Reader;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "gzipStream":Ljava/io/InputStream;
    .end local v18    # "returnFile":Ljava/io/File;
    .restart local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "decoder":Ljava/io/Reader;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v17    # "line":Ljava/lang/String;
    .restart local v19    # "returnFile":Ljava/io/File;
    :cond_20f
    move-object v4, v5

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "decoder":Ljava/io/Reader;
    .restart local v6    # "decoder":Ljava/io/Reader;
    move-object/from16 v15, v16

    .end local v16    # "gzipStream":Ljava/io/InputStream;
    .restart local v15    # "gzipStream":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v11    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v13, v14

    .end local v14    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gZipOut":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "returnFile":Ljava/io/File;
    .restart local v18    # "returnFile":Ljava/io/File;
    goto/16 :goto_ca
.end method

.method private selectDumpInterval()V
    .registers 25

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 169
    .local v12, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v18, 0x0

    .line 170
    .local v18, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v8, 0x1

    .line 172
    .local v8, "firstFile":Z
    const/4 v9, 0x0

    .line 173
    .local v9, "initFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 174
    .local v4, "endFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 175
    .local v17, "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/16 v16, 0x0

    .line 176
    .local v16, "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v13, "listNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    const/16 v19, 0x0

    .line 179
    .local v19, "tempHeaderFile":Ljava/io/File;
    :cond_1a
    :goto_1a
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8a

    .line 180
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    check-cast v18, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 181
    .restart local v18    # "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_1a

    .line 184
    if-eqz v8, :cond_5a

    .line 185
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v20

    if-eqz v20, :cond_5a

    .line 186
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 187
    new-instance v17, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v17    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .restart local v17    # "pfInitial":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 v8, 0x0

    .line 191
    goto :goto_1a

    .line 194
    :cond_5a
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_6e

    .line 195
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 197
    :cond_6e
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 198
    new-instance v16, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v16    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .restart local v16    # "pfFinal":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_8a
    new-instance v20, Ljava/io/File;

    sget-object v21, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_ac

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    .line 210
    :cond_ac
    new-instance v19, Ljava/io/File;

    .end local v19    # "tempHeaderFile":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/header"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v19    # "tempHeaderFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 212
    .local v5, "f":Ljava/io/File;
    const/4 v6, 0x0

    .line 213
    .local v6, "fileStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 215
    .local v14, "outStream":Ljava/io/OutputStream;
    :try_start_d1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    .line 218
    if-eqz v5, :cond_14d

    .line 221
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e7} :catch_1be
    .catchall {:try_start_d1 .. :try_end_e7} :catchall_185

    .line 222
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .local v7, "fileStream":Ljava/io/InputStream;
    :try_start_e7
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f8} :catch_1c1
    .catchall {:try_start_e7 .. :try_end_f8} :catchall_1b7

    .line 223
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .local v15, "outStream":Ljava/io/OutputStream;
    const/high16 v20, 0x10000

    :try_start_fa
    move/from16 v0, v20

    new-array v2, v0, [B

    .line 225
    .local v2, "buffer":[B
    :goto_fe
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "length":I
    if-lez v11, :cond_14b

    .line 226
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v2, v0, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10b} :catch_10c
    .catchall {:try_start_fa .. :try_end_10b} :catchall_1ba

    goto :goto_fe

    .line 230
    .end local v2    # "buffer":[B
    .end local v11    # "length":I
    :catch_10c
    move-exception v3

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 231
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :goto_10f
    :try_start_10f
    const-string v20, "Dumper"

    const-string v21, "SelectDumpInterval.Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_10f .. :try_end_127} :catchall_185

    .line 234
    if-eqz v9, :cond_12c

    .line 235
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 237
    :cond_12c
    if-eqz v4, :cond_131

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 240
    :cond_131
    if-eqz v16, :cond_136

    .line 241
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 243
    :cond_136
    if-eqz v17, :cond_13b

    .line 244
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 246
    :cond_13b
    if-eqz v5, :cond_140

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 249
    :cond_140
    if-eqz v6, :cond_145

    .line 251
    :try_start_142
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_17c

    .line 256
    :cond_145
    :goto_145
    if-eqz v14, :cond_14a

    .line 258
    :try_start_147
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_1b3

    .line 265
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_14a
    :goto_14a
    return-void

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "buffer":[B
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "length":I
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :cond_14b
    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 234
    .end local v2    # "buffer":[B
    .end local v7    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "length":I
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    :cond_14d
    if-eqz v9, :cond_152

    .line 235
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 237
    :cond_152
    if-eqz v4, :cond_157

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 240
    :cond_157
    if-eqz v16, :cond_15c

    .line 241
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 243
    :cond_15c
    if-eqz v17, :cond_161

    .line 244
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 246
    :cond_161
    if-eqz v5, :cond_166

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 249
    :cond_166
    if-eqz v6, :cond_16b

    .line 251
    :try_start_168
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_173

    .line 256
    :cond_16b
    :goto_16b
    if-eqz v14, :cond_14a

    .line 258
    :try_start_16d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_171

    goto :goto_14a

    .line 259
    :catch_171
    move-exception v20

    goto :goto_14a

    .line 252
    :catch_173
    move-exception v10

    .line 253
    .local v10, "ioex":Ljava/io/IOException;
    const-string v20, "Dumper"

    const-string v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16b

    .line 252
    .end local v10    # "ioex":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_17c
    move-exception v10

    .line 253
    .restart local v10    # "ioex":Ljava/io/IOException;
    const-string v20, "Dumper"

    const-string v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    .line 234
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "ioex":Ljava/io/IOException;
    :catchall_185
    move-exception v20

    :goto_186
    if-eqz v9, :cond_18b

    .line 235
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 237
    :cond_18b
    if-eqz v4, :cond_190

    .line 238
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 240
    :cond_190
    if-eqz v16, :cond_195

    .line 241
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 243
    :cond_195
    if-eqz v17, :cond_19a

    .line 244
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 246
    :cond_19a
    if-eqz v5, :cond_19f

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 249
    :cond_19f
    if-eqz v6, :cond_1a4

    .line 251
    :try_start_1a1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1aa

    .line 256
    :cond_1a4
    :goto_1a4
    if-eqz v14, :cond_1a9

    .line 258
    :try_start_1a6
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1a9} :catch_1b5

    .line 259
    :cond_1a9
    :goto_1a9
    throw v20

    .line 252
    :catch_1aa
    move-exception v10

    .line 253
    .restart local v10    # "ioex":Ljava/io/IOException;
    const-string v21, "Dumper"

    const-string v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a4

    .line 259
    .end local v10    # "ioex":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_1b3
    move-exception v20

    goto :goto_14a

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1b5
    move-exception v21

    goto :goto_1a9

    .line 234
    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catchall_1b7
    move-exception v20

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_186

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .end local v14    # "outStream":Ljava/io/OutputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :catchall_1ba
    move-exception v20

    move-object v14, v15

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto :goto_186

    .line 230
    :catch_1be
    move-exception v3

    goto/16 :goto_10f

    .end local v6    # "fileStream":Ljava/io/InputStream;
    .restart local v7    # "fileStream":Ljava/io/InputStream;
    :catch_1c1
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_10f
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .registers 10
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 530
    const/4 v1, 0x0

    .line 532
    .local v1, "fileStream":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_33

    .line 533
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .local v2, "fileStream":Ljava/io/FileInputStream;
    const/4 v5, 0x2

    :try_start_a
    new-array v0, v5, [B

    .line 534
    .local v0, "bytes":[B
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 536
    if-eqz v0, :cond_16

    array-length v5, v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_3a

    if-ge v5, v7, :cond_1d

    .line 546
    :cond_16
    if-eqz v2, :cond_1b

    .line 547
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1b
    move v3, v4

    :cond_1c
    :goto_1c
    return v3

    .line 542
    :cond_1d
    const/4 v5, 0x0

    :try_start_1e
    aget-byte v5, v0, v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_31

    const/4 v5, 0x1

    aget-byte v5, v0, v5
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_3a

    const/16 v6, -0x75

    if-ne v5, v6, :cond_31

    .line 546
    :goto_2b
    if-eqz v2, :cond_1c

    .line 547
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1c

    :cond_31
    move v3, v4

    .line 542
    goto :goto_2b

    .line 546
    .end local v0    # "bytes":[B
    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    :catchall_33
    move-exception v3

    :goto_34
    if-eqz v1, :cond_39

    .line 547
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_39
    throw v3

    .line 546
    .end local v1    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileStream":Ljava/io/FileInputStream;
    :catchall_3a
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_34
.end method

.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_13a
    .catchall {:try_start_3 .. :try_end_e} :catchall_f0

    .line 101
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_e
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    .line 104
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_29

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_51

    .line 105
    :cond_29
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 106
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v3, :cond_33

    .line 107
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_55
    .catchall {:try_start_e .. :try_end_33} :catchall_137

    .line 117
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 120
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v3, :cond_4a

    .line 121
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 122
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4a} :catch_a7

    .line 129
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_4f

    .line 130
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_c6

    :cond_4f
    move-object v1, v2

    .line 135
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :cond_50
    :goto_50
    return-void

    .line 109
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_137

    goto :goto_33

    .line 112
    :catch_55
    move-exception v0

    move-object v1, v2

    .line 113
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_57
    :try_start_57
    const-string v3, "Dumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run.Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 115
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_57 .. :try_end_80} :catchall_f0

    .line 117
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 120
    :try_start_89
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v3, :cond_97

    .line 121
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 122
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_97} :catch_d1

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    if-eqz v1, :cond_50

    .line 130
    :try_start_99
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_50

    .line 131
    :catch_9d
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Dumper"

    const-string/jumbo v4, "run.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_a7
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Dumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run.IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c6
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Dumper"

    const-string/jumbo v4, "run.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 134
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_50

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :catch_d1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Dumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run.IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_f0
    move-exception v3

    :goto_f1
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    .line 120
    :try_start_fa
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    if-eqz v4, :cond_108

    .line 121
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 122
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_108} :catch_10e

    .line 129
    :cond_108
    :goto_108
    if-eqz v1, :cond_10d

    .line 130
    :try_start_10a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_12d

    .line 133
    :cond_10d
    :goto_10d
    throw v3

    .line 124
    :catch_10e
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Dumper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "run.IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_12d
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Dumper"

    const-string/jumbo v5, "run.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_137
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_f1

    .line 112
    :catch_13a
    move-exception v0

    goto/16 :goto_57
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 90
    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2
    .param p1, "filter"    # Lcom/android/server/enterprise/auditlog/Filter;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 526
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 94
    return-void
.end method
