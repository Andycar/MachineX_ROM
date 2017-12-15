.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/BootReceiver$1;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logLastKmsg()V
    .registers 23

    .prologue
    .line 182
    new-instance v12, Ljava/io/File;

    const-string v19, "/proc/last_kmsg"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v12, "lk_proc":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v19, "/proc/version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v18, "version_proc":Ljava/io/File;
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v1, v0, [B

    .line 185
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 186
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 187
    .local v16, "ver_fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 188
    .local v6, "fout":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 189
    .local v8, "gout":Ljava/util/zip/GZIPOutputStream;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 191
    .local v15, "time":Landroid/text/format/Time;
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_2e

    .line 250
    :goto_2d
    return-void

    .line 195
    :cond_2e
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 197
    const-string v19, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "date":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v13, "lk_save":Ljava/io/File;
    const/4 v10, 0x0

    .line 203
    .local v10, "len":I
    :try_start_5c
    const-string v19, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string v11, "========================================================\n"

    .line 206
    .local v11, "line":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "== dumpstate lastkmsg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, "text":Ljava/lang/String;
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - New filename is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_a2} :catch_1dd
    .catchall {:try_start_5c .. :try_end_a2} :catchall_19a

    .line 211
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_a2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_1e0
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_1ca

    .line 212
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :try_start_a7
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ac} :catch_1e4
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_1cd

    .line 214
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .local v9, "gout":Ljava/util/zip/GZIPOutputStream;
    :try_start_ac
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 215
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 216
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 218
    const-string v14, "\n[Kernel version]: "

    .line 219
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 221
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_12a

    .line 222
    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_dd} :catch_177
    .catchall {:try_start_ac .. :try_end_dd} :catchall_1d1

    .line 223
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .local v17, "ver_fin":Ljava/io/FileInputStream;
    :goto_dd
    :try_start_dd
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1e9

    .line 224
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ec} :catch_ed
    .catchall {:try_start_dd .. :try_end_ec} :catchall_1d6

    goto :goto_dd

    .line 241
    :catch_ed
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 242
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :goto_f3
    :try_start_f3
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - File copy error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f3 .. :try_end_10d} :catchall_19a

    .line 244
    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_1b6

    .line 245
    :cond_112
    :goto_112
    if-eqz v16, :cond_117

    :try_start_114
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_1b9

    .line 246
    :cond_117
    :goto_117
    if-eqz v8, :cond_11c

    :try_start_119
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_1bc

    .line 247
    :cond_11c
    :goto_11c
    if-eqz v6, :cond_121

    :try_start_11e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_1bf

    .line 249
    .end local v3    # "e":Ljava/io/IOException;
    :cond_121
    :goto_121
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Save Complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 227
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :cond_12a
    :try_start_12a
    const-string/jumbo v14, "unknown"

    .line 228
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 231
    :goto_136
    const-string v14, "[Build Fingerprint]: "

    .line 232
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 234
    const-string/jumbo v19, "ro.build.fingerprint"

    const-string/jumbo v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 235
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 238
    :goto_169
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_17d

    .line 239
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_176} :catch_177
    .catchall {:try_start_12a .. :try_end_176} :catchall_1d1

    goto :goto_169

    .line 241
    :catch_177
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .line 244
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :cond_17d
    if-eqz v5, :cond_182

    :try_start_17f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_1b0

    .line 245
    :cond_182
    :goto_182
    if-eqz v16, :cond_187

    :try_start_184
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_1b2

    .line 246
    :cond_187
    :goto_187
    if-eqz v9, :cond_18c

    :try_start_189
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_1b4

    .line 247
    :cond_18c
    :goto_18c
    if-eqz v7, :cond_191

    :try_start_18e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_195

    :cond_191
    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_121

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catch_195
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 248
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_121

    .line 244
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catchall_19a
    move-exception v19

    :goto_19b
    if-eqz v4, :cond_1a0

    :try_start_19d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1c2

    .line 245
    :cond_1a0
    :goto_1a0
    if-eqz v16, :cond_1a5

    :try_start_1a2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1c4

    .line 246
    :cond_1a5
    :goto_1a5
    if-eqz v8, :cond_1aa

    :try_start_1a7
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1aa} :catch_1c6

    .line 247
    :cond_1aa
    :goto_1aa
    if-eqz v6, :cond_1af

    :try_start_1ac
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1c8

    :cond_1af
    :goto_1af
    throw v19

    .line 244
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1b0
    move-exception v19

    goto :goto_182

    .line 245
    :catch_1b2
    move-exception v19

    goto :goto_187

    .line 246
    :catch_1b4
    move-exception v19

    goto :goto_18c

    .line 244
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catch_1b6
    move-exception v19

    goto/16 :goto_112

    .line 245
    :catch_1b9
    move-exception v19

    goto/16 :goto_117

    .line 246
    :catch_1bc
    move-exception v19

    goto/16 :goto_11c

    .line 247
    :catch_1bf
    move-exception v19

    goto/16 :goto_121

    .line 244
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1c2
    move-exception v20

    goto :goto_1a0

    .line 245
    :catch_1c4
    move-exception v20

    goto :goto_1a5

    .line 246
    :catch_1c6
    move-exception v20

    goto :goto_1aa

    .line 247
    :catch_1c8
    move-exception v20

    goto :goto_1af

    .line 244
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catchall_1ca
    move-exception v19

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19b

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_1cd
    move-exception v19

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19b

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_1d1
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19b

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_1d6
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19b

    .line 241
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catch_1dd
    move-exception v3

    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1e0
    move-exception v3

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1e4
    move-exception v3

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :cond_1e9
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_136
.end method

.method private trimLastKmsg()V
    .registers 13

    .prologue
    .line 145
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v8, "logFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 147
    .local v6, "listOfAllFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v7, "listOfLastkmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_10
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 151
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 179
    :cond_19
    :goto_19
    return-void

    .line 155
    :cond_1a
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_39

    aget-object v2, v0, v4

    .line 156
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_36

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 158
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 162
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_39
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_5e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_19

    .line 172
    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 174
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_97} :catch_98

    goto :goto_5e

    .line 176
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_98
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    .line 255
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 256
    return-void
.end method
