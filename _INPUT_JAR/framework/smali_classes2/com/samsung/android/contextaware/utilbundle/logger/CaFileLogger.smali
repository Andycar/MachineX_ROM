.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
.super Ljava/lang/Object;
.source "CaFileLogger.java"


# static fields
.field private static final LOGTYPE_GPSPOS:I = 0x1

.field private static final LOG_FILE_DIR_NAME:Ljava/lang/String; = "cae"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;


# instance fields
.field private final mDataOutputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    if-nez v0, :cond_13

    .line 57
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    if-nez v0, :cond_12

    .line 59
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    .line 61
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 63
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    return-object v0

    .line 61
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 24
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 250
    .local v2, "curTime":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 251
    .local v14, "curTimeYear":J
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-long v10, v0

    .line 252
    .local v10, "curTimeMonth":J
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v4, v0

    .line 253
    .local v4, "curTimeDay":J
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v6, v0

    .line 254
    .local v6, "curTimeHour":J
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 255
    .local v8, "curTimeMinute":J
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v12, v0

    .line 257
    .local v12, "curTimeSecond":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "%04dY%02dM%02dD%02dH%02dM%02dS_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".log"

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

    move-result-object v3

    .line 261
    .local v3, "fileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "logDir = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 262
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 264
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v16, "logFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_e9

    .line 267
    const-string v17, "createNewFile() error"

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 268
    const/16 v16, 0x0

    .line 273
    .end local v16    # "logFile":Ljava/io/File;
    :cond_e9
    return-object v16
.end method

.method private getLogStorageDir()Ljava/io/File;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 214
    const-string v2, "cae"

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "logDir":Ljava/io/File;
    if-nez v0, :cond_10

    .line 217
    const-string v2, "External storage directory is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 233
    .end local v0    # "logDir":Ljava/io/File;
    :cond_f
    :goto_f
    return-object v0

    .line 221
    .restart local v0    # "logDir":Ljava/io/File;
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_38

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists and is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 224
    goto :goto_f

    .line 225
    :cond_38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_f

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 228
    goto :goto_f
.end method


# virtual methods
.method public final logging(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 150
    :cond_10
    const-string v1, "This file dose not exist."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 160
    :goto_15
    return-void

    .line 155
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_15

    .line 157
    :catch_39
    move-exception v0

    .line 158
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public final loggingForKML(Ljava/lang/String;J[D[FJ)V
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sysTime"    # J
    .param p4, "location"    # [D
    .param p5, "additionalInfo"    # [F
    .param p6, "timeStamp"    # J

    .prologue
    const/4 v2, 0x3

    .line 179
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 181
    :cond_11
    const-string v1, "This file dose not exist."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    :cond_16
    :goto_16
    return-void

    .line 185
    :cond_17
    if-eqz p4, :cond_16

    array-length v1, p4

    if-le v1, v2, :cond_16

    if-eqz p5, :cond_16

    array-length v1, p5

    if-le v1, v2, :cond_16

    .line 191
    :try_start_21
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    aget-wide v2, p4, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    aget v2, p5, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1, p6, p7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_97} :catch_99

    goto/16 :goto_16

    .line 200
    :catch_99
    move-exception v0

    .line 201
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method

.method public final startLogging(Ljava/lang/String;)Z
    .registers 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 76
    :cond_11
    const-string v7, "This file is created already."

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 110
    :goto_16
    return v6

    .line 80
    :cond_17
    const/4 v5, 0x0

    .line 81
    .local v5, "logFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 84
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    :try_start_19
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogStorageDir()Ljava/io/File;

    move-result-object v4

    .line 85
    .local v4, "logDir":Ljava/io/File;
    if-nez v4, :cond_2a

    .line 86
    const-string v7, "Log directory is null"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_51

    goto :goto_16

    .line 96
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "logDir":Ljava/io/File;
    :catch_25
    move-exception v2

    .line 97
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 89
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "logDir":Ljava/io/File;
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getLogFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 90
    if-nez v5, :cond_3b

    .line 91
    const-string v7, "Log file is null"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_35} :catch_25
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_51

    goto :goto_16

    .line 99
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "logDir":Ljava/io/File;
    :catch_36
    move-exception v3

    .line 100
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 94
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "logDir":Ljava/io/File;
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/io/DataOutputStream;

    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_45} :catch_25
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_45} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_51

    .line 107
    .restart local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v6, 0x1

    goto :goto_16

    .line 102
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "logDir":Ljava/io/File;
    :catch_51
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public final stopLogging(Ljava/lang/String;)Z
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    move v1, v2

    .line 136
    :goto_12
    return v1

    .line 127
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_2a

    .line 133
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mFile:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->mDataOutputStream:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v1, 0x1

    goto :goto_12

    .line 128
    :catch_2a
    move-exception v0

    .line 129
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v1, v2

    .line 130
    goto :goto_12
.end method
