.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    .line 41
    :cond_e
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public clearPrefs()V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    :cond_12
    return-void
.end method

.method public haveEncPrefs()Z
    .registers 5

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/"

    const-string v3, "DirEncryption.Pref"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "DirEncryption.Pref"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v1, "f2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 49
    :cond_1e
    const/4 v2, 0x1

    .line 52
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 11

    .prologue
    .line 63
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 65
    .local v3, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v2, Ljava/io/File;

    const-string v7, "/efs/"

    const-string v8, "DirEncryption.Pref"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_22

    .line 67
    :cond_1a
    const-string/jumbo v7, "unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    move-object v4, v3

    .line 88
    .end local v3    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v4, "policies":Ljava/lang/Object;
    :goto_21
    return-object v4

    .line 71
    .end local v4    # "policies":Ljava/lang/Object;
    .restart local v3    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_22
    const/4 v5, 0x0

    .line 73
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_23
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_48
    .catchall {:try_start_23 .. :try_end_28} :catchall_57

    .line 74
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_28
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [C

    .line 76
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_3f

    .line 77
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3e} :catch_61
    .catchall {:try_start_28 .. :try_end_3e} :catchall_5e

    move-result-object v3

    .line 84
    :cond_3f
    :try_start_3f
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_45

    move-object v5, v6

    .end local v0    # "buf":[C
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_43
    move-object v4, v3

    .line 88
    .restart local v4    # "policies":Ljava/lang/Object;
    goto :goto_21

    .line 85
    .end local v4    # "policies":Ljava/lang/Object;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_45
    move-exception v7

    move-object v5, v6

    .line 86
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_43

    .line 79
    .end local v0    # "buf":[C
    :catch_48
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    :goto_49
    :try_start_49
    const-string v7, "IOException:: unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_57

    .line 84
    :try_start_51
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_43

    .line 85
    :catch_55
    move-exception v7

    goto :goto_43

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v7

    .line 84
    :goto_58
    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 85
    :goto_5b
    throw v7

    :catch_5c
    move-exception v8

    goto :goto_5b

    .line 83
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_5e
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_58

    .line 79
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_61
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_49
.end method

.method public savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z
    .registers 10
    .param p1, "policies"    # Landroid/dirEncryption/SDCardEncryptionPolicies;

    .prologue
    .line 93
    const/4 v2, 0x1

    .line 94
    .local v2, "result":Z
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/"

    const-string v6, "DirEncryption.Pref"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 98
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 644 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 102
    :cond_32
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_37} :catch_4c
    .catchall {:try_start_b .. :try_end_37} :catchall_5f

    .line 103
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_37
    invoke-virtual {p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_6c
    .catchall {:try_start_37 .. :try_end_41} :catchall_69

    .line 111
    if-eqz v4, :cond_46

    .line 112
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_48

    :cond_46
    move-object v3, v4

    .line 117
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_47
    :goto_47
    return v2

    .line 113
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_48
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v3, v4

    .line 116
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_47

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :goto_4d
    const/4 v2, 0x0

    .line 107
    :try_start_4e
    const-string v5, "IOException:: unable to save enc properties"

    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_5f

    .line 111
    if-eqz v3, :cond_47

    .line 112
    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_47

    .line 113
    :catch_5c
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 116
    goto :goto_47

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v5

    .line 111
    :goto_60
    if-eqz v3, :cond_65

    .line 112
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    .line 115
    :cond_65
    :goto_65
    throw v5

    .line 113
    :catch_66
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_65

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_69
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_60

    .line 105
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_6c
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_4d
.end method
