.class public Landroid/util/XmlMoreAtomicFile;
.super Landroid/util/MoreAtomicFile;
.source "XmlMoreAtomicFile.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/util/MoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "baseName"    # Ljava/io/File;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/util/MoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected isDamaged(Ljava/io/File;)Z
    .registers 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "isDamaged":Z
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 56
    const/4 v3, 0x0

    .line 58
    .local v3, "raf_xmltest":Ljava/io/RandomAccessFile;
    :try_start_a
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_4a
    .catchall {:try_start_a .. :try_end_12} :catchall_7c

    .line 59
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .local v4, "raf_xmltest":Ljava/io/RandomAccessFile;
    :try_start_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3f

    .line 60
    const/4 v2, 0x1

    .line 62
    const-string v5, "MoreAtomicFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small, rename it to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3f} :catch_8b
    .catchall {:try_start_12 .. :try_end_3f} :catchall_88

    .line 73
    :cond_3f
    if-eqz v4, :cond_44

    :try_start_41
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 77
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :cond_44
    :goto_44
    return v2

    .line 74
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_45
    move-exception v1

    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 65
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_4a
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :goto_4b
    const/4 v2, 0x1

    .line 68
    :try_start_4c
    const-string v5, "MoreAtomicFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during check if it is damaged, rename it to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_7c

    .line 73
    if-eqz v3, :cond_44

    :try_start_73
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_44

    .line 74
    :catch_77
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_7c
    move-exception v5

    .line 73
    :goto_7d
    if-eqz v3, :cond_82

    :try_start_7f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 74
    :cond_82
    :goto_82
    throw v5

    :catch_83
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    .line 72
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catchall_88
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_7d

    .line 65
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_8b
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_4b
.end method
