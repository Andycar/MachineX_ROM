.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DATA_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .registers 28
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # J
    .param p3, "type"    # I
    .param p4, "mode"    # J
    .param p6, "mtime"    # J
    .param p8, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_28

    .line 98
    if-eqz p8, :cond_a

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_a
    :goto_a
    const-wide/16 v14, 0x0

    cmp-long v14, p4, v14

    if-ltz v14, :cond_27

    if-eqz p8, :cond_27

    .line 149
    const-wide/16 v14, 0x1c0

    and-long p4, p4, v14

    .line 150
    :try_start_16
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v0, p4

    long-to-int v15, v0

    invoke-static {v14, v15}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_20} :catch_e2

    .line 154
    :goto_20
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 156
    :cond_27
    return-void

    .line 100
    :cond_28
    const/4 v10, 0x0

    .line 104
    .local v10, "out":Ljava/io/FileOutputStream;
    if-eqz p8, :cond_40

    .line 105
    :try_start_2b
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 106
    .local v12, "parent":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_38

    .line 109
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_38
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p8

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3f} :catch_91

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v11, "out":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 117
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "parent":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_40
    :goto_40
    const v14, 0x8000

    new-array v4, v14, [B

    .line 118
    .local v4, "buffer":[B
    move-wide/from16 v8, p1

    .line 119
    .local v8, "origSize":J
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 120
    .local v7, "in":Ljava/io/FileInputStream;
    :goto_50
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-lez v14, :cond_8a

    .line 121
    array-length v14, v4

    int-to-long v14, v14

    cmp-long v14, p1, v14

    if-lez v14, :cond_af

    array-length v13, v4

    .line 122
    .local v13, "toRead":I
    :goto_5d
    const/4 v14, 0x0

    invoke-virtual {v7, v4, v14, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 123
    .local v6, "got":I
    if-gtz v6, :cond_b3

    .line 124
    const-string v14, "FullBackup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incomplete read: expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " but got "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, p1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v6    # "got":I
    .end local v13    # "toRead":I
    :cond_8a
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_a

    .line 113
    .end local v4    # "buffer":[B
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v8    # "origSize":J
    :catch_91
    move-exception v5

    .line 114
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "FullBackup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create/open file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 121
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "origSize":J
    :cond_af
    move-wide/from16 v0, p1

    long-to-int v13, v0

    goto :goto_5d

    .line 128
    .restart local v6    # "got":I
    .restart local v13    # "toRead":I
    :cond_b3
    if-eqz v10, :cond_b9

    .line 130
    const/4 v14, 0x0

    :try_start_b6
    invoke-virtual {v10, v4, v14, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bd

    .line 140
    :cond_b9
    :goto_b9
    int-to-long v14, v6

    sub-long p1, p1, v14

    .line 141
    goto :goto_50

    .line 131
    :catch_bd
    move-exception v5

    .line 134
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "FullBackup"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to write to file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 136
    const/4 v10, 0x0

    .line 137
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    goto :goto_b9

    .line 151
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "got":I
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v8    # "origSize":J
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "toRead":I
    :catch_e2
    move-exception v5

    .line 152
    .local v5, "e":Landroid/system/ErrnoException;
    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto/16 :goto_20
.end method
