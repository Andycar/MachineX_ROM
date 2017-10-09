.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLongpressGesture(Z)V
    .registers 7
    .param p0, "bEnable"    # Z

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_71
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_54
    .catchall {:try_start_1 .. :try_end_11} :catchall_60

    move-result v4

    if-nez v4, :cond_1a

    .line 78
    :cond_14
    if-eqz v2, :cond_19

    .line 79
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_67

    .line 84
    .end local v1    # "file":Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 65
    .restart local v1    # "file":Ljava/io/File;
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_71
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_54
    .catchall {:try_start_1a .. :try_end_1f} :catchall_60

    .line 66
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_37

    .line 67
    :try_start_21
    const-string/jumbo v4, "set_longpress_enable,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 71
    :goto_2d
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_30} :catch_44
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_6e
    .catchall {:try_start_21 .. :try_end_30} :catchall_6b

    .line 78
    if-eqz v3, :cond_35

    .line 79
    :try_start_32
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_51

    :cond_35
    move-object v2, v3

    .line 82
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 69
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_37
    :try_start_37
    const-string/jumbo v4, "set_longpress_enable,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_6e
    .catchall {:try_start_37 .. :try_end_43} :catchall_6b

    goto :goto_2d

    .line 72
    :catch_44
    move-exception v0

    move-object v2, v3

    .line 73
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_60

    .line 78
    if-eqz v2, :cond_19

    .line 79
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_19

    .line 81
    :catch_4f
    move-exception v4

    goto :goto_19

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_51
    move-exception v4

    move-object v2, v3

    .line 83
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 74
    .end local v1    # "file":Ljava/io/File;
    :catch_54
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_60

    .line 78
    if-eqz v2, :cond_19

    .line 79
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_19

    .line 81
    :catch_5e
    move-exception v4

    goto :goto_19

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v4

    .line 78
    :goto_61
    if-eqz v2, :cond_66

    .line 79
    :try_start_63
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_69

    .line 82
    :cond_66
    :goto_66
    throw v4

    .line 81
    .restart local v1    # "file":Ljava/io/File;
    :catch_67
    move-exception v4

    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    :catch_69
    move-exception v5

    goto :goto_66

    .line 77
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_6b
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_61

    .line 74
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_6e
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_55

    .line 72
    .end local v1    # "file":Ljava/io/File;
    :catch_71
    move-exception v0

    goto :goto_46
.end method

.method public static updateSysfsBarLength(I)V
    .registers 9
    .param p0, "barLength"    # I

    .prologue
    .line 116
    if-gez p0, :cond_7

    const/16 v5, 0xa0

    if-le p0, v5, :cond_7

    .line 143
    :cond_6
    :goto_6
    return-void

    .line 120
    :cond_7
    const/4 v3, 0x0

    .line 122
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_72
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_7e
    .catchall {:try_start_8 .. :try_end_18} :catchall_8c

    move-result v5

    if-nez v5, :cond_23

    .line 137
    :cond_1b
    if-eqz v3, :cond_6

    .line 138
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_6

    .line 140
    :catch_21
    move-exception v5

    goto :goto_6

    .line 126
    :cond_23
    :try_start_23
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_72
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_7e
    .catchall {:try_start_23 .. :try_end_28} :catchall_8c

    .line 127
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_28
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_sidescreen_x_length,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 130
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsBarLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_68} :catch_9b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_68} :catch_98
    .catchall {:try_start_28 .. :try_end_68} :catchall_95

    .line 137
    if-eqz v4, :cond_6d

    .line 138
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6f

    :cond_6d
    move-object v3, v4

    .line 141
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_6

    .line 140
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_6f
    move-exception v5

    move-object v3, v4

    .line 142
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_6

    .line 131
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_72
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8c

    .line 137
    if-eqz v3, :cond_6

    .line 138
    :try_start_78
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_6

    .line 140
    :catch_7c
    move-exception v5

    goto :goto_6

    .line 133
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7e
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_8c

    .line 137
    if-eqz v3, :cond_6

    .line 138
    :try_start_84
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_89

    goto/16 :goto_6

    .line 140
    :catch_89
    move-exception v5

    goto/16 :goto_6

    .line 136
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8c
    move-exception v5

    .line 137
    :goto_8d
    if-eqz v3, :cond_92

    .line 138
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    .line 141
    :cond_92
    :goto_92
    throw v5

    .line 140
    :catch_93
    move-exception v6

    goto :goto_92

    .line 136
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_95
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_8d

    .line 133
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_98
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_7f

    .line 131
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_9b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_73
.end method

.method public static updateSysfsDeadZone(I)V
    .registers 9
    .param p0, "deadzone"    # I

    .prologue
    .line 87
    if-gez p0, :cond_6

    const/4 v5, 0x2

    if-le p0, v5, :cond_6

    .line 113
    :cond_5
    :goto_5
    return-void

    .line 90
    :cond_6
    const/4 v3, 0x0

    .line 92
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_7
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_17} :catch_71
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_7d
    .catchall {:try_start_7 .. :try_end_17} :catchall_8b

    move-result v5

    if-nez v5, :cond_22

    .line 107
    :cond_1a
    if-eqz v3, :cond_5

    .line 108
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_5

    .line 110
    :catch_20
    move-exception v5

    goto :goto_5

    .line 96
    :cond_22
    :try_start_22
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_27} :catch_71
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_7d
    .catchall {:try_start_22 .. :try_end_27} :catchall_8b

    .line 97
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_27
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_dead_zone,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 100
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsDeadZone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_67} :catch_9a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_67} :catch_97
    .catchall {:try_start_27 .. :try_end_67} :catchall_94

    .line 107
    if-eqz v4, :cond_6c

    .line 108
    :try_start_69
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6e

    :cond_6c
    move-object v3, v4

    .line 111
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 110
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_6e
    move-exception v5

    move-object v3, v4

    .line 112
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 101
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_71
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_72
    :try_start_72
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_8b

    .line 107
    if-eqz v3, :cond_5

    .line 108
    :try_start_77
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_5

    .line 110
    :catch_7b
    move-exception v5

    goto :goto_5

    .line 103
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7d
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_8b

    .line 107
    if-eqz v3, :cond_5

    .line 108
    :try_start_83
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_88

    goto/16 :goto_5

    .line 110
    :catch_88
    move-exception v5

    goto/16 :goto_5

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8b
    move-exception v5

    .line 107
    :goto_8c
    if-eqz v3, :cond_91

    .line 108
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    .line 111
    :cond_91
    :goto_91
    throw v5

    .line 110
    :catch_92
    move-exception v6

    goto :goto_91

    .line 106
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_94
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_8c

    .line 103
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_97
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_7e

    .line 101
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_9a
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_72
.end method

.method public static updateSysfsGripDisable(Z)V
    .registers 8
    .param p0, "bDisable"    # Z

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_24

    .line 150
    :cond_14
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1e} :catch_96
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_79
    .catchall {:try_start_1 .. :try_end_1e} :catchall_85

    .line 167
    if-eqz v2, :cond_23

    .line 168
    :try_start_20
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_8c

    .line 173
    .end local v1    # "file":Ljava/io/File;
    :cond_23
    :goto_23
    return-void

    .line 153
    .restart local v1    # "file":Ljava/io/File;
    :cond_24
    :try_start_24
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSysfsGripDisable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_44} :catch_96
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_44} :catch_79
    .catchall {:try_start_24 .. :try_end_44} :catchall_85

    .line 155
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_5c

    .line 156
    :try_start_46
    const-string/jumbo v4, "set_grip_detection,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 160
    :goto_52
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_55} :catch_69
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_93
    .catchall {:try_start_46 .. :try_end_55} :catchall_90

    .line 167
    if-eqz v3, :cond_5a

    .line 168
    :try_start_57
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_76

    :cond_5a
    move-object v2, v3

    .line 171
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_23

    .line 158
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_5c
    :try_start_5c
    const-string/jumbo v4, "set_grip_detection,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_93
    .catchall {:try_start_5c .. :try_end_68} :catchall_90

    goto :goto_52

    .line 161
    :catch_69
    move-exception v0

    move-object v2, v3

    .line 162
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_85

    .line 167
    if-eqz v2, :cond_23

    .line 168
    :try_start_70
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_23

    .line 170
    :catch_74
    move-exception v4

    goto :goto_23

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_76
    move-exception v4

    move-object v2, v3

    .line 172
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_23

    .line 163
    .end local v1    # "file":Ljava/io/File;
    :catch_79
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    :goto_7a
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_85

    .line 167
    if-eqz v2, :cond_23

    .line 168
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_23

    .line 170
    :catch_83
    move-exception v4

    goto :goto_23

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_85
    move-exception v4

    .line 167
    :goto_86
    if-eqz v2, :cond_8b

    .line 168
    :try_start_88
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8e

    .line 171
    :cond_8b
    :goto_8b
    throw v4

    .line 170
    .restart local v1    # "file":Ljava/io/File;
    :catch_8c
    move-exception v4

    goto :goto_23

    .end local v1    # "file":Ljava/io/File;
    :catch_8e
    move-exception v5

    goto :goto_8b

    .line 166
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_90
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_86

    .line 163
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_93
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_7a

    .line 161
    .end local v1    # "file":Ljava/io/File;
    :catch_96
    move-exception v0

    goto :goto_6b
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 28
    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 29
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_12
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_22} :catch_80
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_63
    .catchall {:try_start_12 .. :try_end_22} :catchall_6f

    move-result v5

    if-nez v5, :cond_2b

    .line 49
    :cond_25
    if-eqz v2, :cond_2a

    .line 50
    :try_start_27
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_76

    .line 56
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/OutputStream;
    :cond_2a
    :goto_2a
    return-void

    .line 36
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :cond_2b
    :try_start_2b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_80
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_63
    .catchall {:try_start_2b .. :try_end_30} :catchall_6f

    .line 37
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p2, :cond_49

    .line 38
    :try_start_32
    const-string/jumbo v5, "second_screen_enable,1"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 42
    :goto_3e
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_41} :catch_56
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_7d
    .catchall {:try_start_32 .. :try_end_41} :catchall_7a

    .line 49
    if-eqz v3, :cond_2a

    .line 50
    :try_start_43
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2a

    .line 52
    :catch_47
    move-exception v5

    goto :goto_2a

    .line 40
    :cond_49
    :try_start_49
    const-string/jumbo v5, "second_screen_enable,0"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_55} :catch_7d
    .catchall {:try_start_49 .. :try_end_55} :catchall_7a

    goto :goto_3e

    .line 43
    :catch_56
    move-exception v0

    move-object v2, v3

    .line 44
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6f

    .line 49
    if-eqz v2, :cond_2a

    .line 50
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_2a

    .line 52
    :catch_61
    move-exception v5

    goto :goto_2a

    .line 45
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_63
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    :goto_64
    :try_start_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6f

    .line 49
    if-eqz v2, :cond_2a

    .line 50
    :try_start_69
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_2a

    .line 52
    :catch_6d
    move-exception v5

    goto :goto_2a

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v5

    .line 49
    :goto_70
    if-eqz v2, :cond_75

    .line 50
    :try_start_72
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_78

    .line 53
    :cond_75
    :goto_75
    throw v5

    .line 52
    .restart local v1    # "file":Ljava/io/File;
    :catch_76
    move-exception v5

    goto :goto_2a

    .end local v1    # "file":Ljava/io/File;
    :catch_78
    move-exception v6

    goto :goto_75

    .line 48
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_7a
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_70

    .line 45
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7d
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_64

    .line 43
    .end local v1    # "file":Ljava/io/File;
    :catch_80
    move-exception v0

    goto :goto_58
.end method
