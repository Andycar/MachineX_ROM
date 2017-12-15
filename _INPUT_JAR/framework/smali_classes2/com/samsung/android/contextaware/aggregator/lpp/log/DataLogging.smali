.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;
.super Ljava/lang/Object;
.source "DataLogging.java"


# instance fields
.field TAG:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field m_LoggingData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_fileOutStream:Ljava/io/FileOutputStream;

.field out:Ljava/io/OutputStreamWriter;

.field private saveFileLoc:Ljava/lang/String;

.field protected saveFilePath:Ljava/lang/String;

.field protected strLogFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "DATA_LOGGING"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFileLoc:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFilePath:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->fileName:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_LoggingData:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->strLogFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public LogInit()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 37
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_LoggingData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFileLoc:Ljava/lang/String;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFileLoc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "01_DataLogging"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFilePath:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 59
    :try_start_44
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_71

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    .line 63
    .local v3, "rst":Z
    if-nez v3, :cond_71

    .line 64
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create dir:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_71} :catch_72

    .line 75
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "rst":Z
    :cond_71
    :goto_71
    return-void

    .line 67
    :catch_72
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogInit:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method public createFileToLog()V
    .registers 22

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 97
    .local v2, "curTime":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 98
    .local v14, "curTimeYear":J
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v10, v0

    .line 99
    .local v10, "curTimeMonth":J
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 100
    .local v4, "curTimeDay":J
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v6, v0

    .line 101
    .local v6, "curTimeHour":J
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 102
    .local v8, "curTimeMinute":J
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v12, v0

    .line 104
    .local v12, "curTimeSecond":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->strLogFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_4e

    .line 111
    :cond_4e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->strLogFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_%04d%02d%02d_%02d%02d%02d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->fileName:Ljava/lang/String;

    .line 114
    new-instance v16, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->saveFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".log"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v16, "m_fileOut":Ljava/io/File;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_fileOutStream:Ljava/io/FileOutputStream;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_fileOutStream:Ljava/io/FileOutputStream;

    move-object/from16 v17, v0

    if-nez v17, :cond_f3

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "m_fileOutStream is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f3} :catch_f4

    .line 123
    .end local v2    # "curTime":Ljava/util/Calendar;
    .end local v4    # "curTimeDay":J
    .end local v6    # "curTimeHour":J
    .end local v8    # "curTimeMinute":J
    .end local v10    # "curTimeMonth":J
    .end local v12    # "curTimeSecond":J
    .end local v14    # "curTimeYear":J
    .end local v16    # "m_fileOut":Ljava/io/File;
    :cond_f3
    :goto_f3
    return-void

    .line 119
    :catch_f4
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3
.end method

.method public flushLogToFile()V
    .registers 5

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->createFileToLog()V

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_LoggingData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 83
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_fileOutStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_LoggingData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 86
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->m_fileOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_26

    .line 92
    :goto_25
    return-void

    .line 87
    :catch_26
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method
