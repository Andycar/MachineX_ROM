.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;
.super Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;
.source "LPPDataLogging.java"


# instance fields
.field FileType:Ljava/lang/String;

.field TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;-><init>()V

    .line 19
    const-string v0, "LPPDataLogging"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "log"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->FileType:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->strLogFileName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public LogInit(Ljava/lang/String;)V
    .registers 25
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;->LogInit()V

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LogInit : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 34
    .local v2, "curTime":Ljava/util/Calendar;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v14, v0

    .line 35
    .local v14, "curTimeYear":J
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v10, v0

    .line 36
    .local v10, "curTimeMonth":J
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v4, v0

    .line 37
    .local v4, "curTimeDay":J
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 38
    .local v6, "curTimeHour":J
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 39
    .local v8, "curTimeMinute":J
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v12, v0

    .line 41
    .local v12, "curTimeSecond":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_%04d%02d%02d_%02d%02d%02d/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    .line 46
    :try_start_e5
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_120

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v17

    .line 49
    .local v17, "rst":Z
    if-nez v17, :cond_120

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create dir:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_120} :catch_121

    .line 60
    .end local v3    # "dir":Ljava/io/File;
    .end local v17    # "rst":Z
    :cond_120
    :goto_120
    return-void

    .line 54
    :catch_121
    move-exception v16

    .line 55
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error in dir"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120
.end method

.method public addLogStream(Ljava/lang/String;)V
    .registers 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->m_LoggingData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public createFileToLog()V
    .registers 8

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 69
    .local v2, "ident":J
    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DataLogging] strLogFileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->strLogFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->strLogFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->FileType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "m_fileOut":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->m_fileOutStream:Ljava/io/FileOutputStream;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4b} :catch_4f

    .line 76
    .end local v1    # "m_fileOut":Ljava/io/File;
    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return-void

    .line 72
    :catch_4f
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in createFileToLog:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->FileType:Ljava/lang/String;

    .line 81
    return-void
.end method
