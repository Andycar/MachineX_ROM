.class public abstract Lcom/absolute/android/persistservice/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DESede/CBC/PKCS5Padding"

.field private static final b:Ljava/lang/String; = "Absolute_PersistedStore"


# instance fields
.field protected c:Ljava/util/Hashtable;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/absolute/android/persistservice/y;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/absolute/android/persistservice/ab;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/absolute/android/persistservice/ag;->d:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    .line 89
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    monitor-enter p0

    .line 126
    const/4 v9, 0x0

    .line 131
    :try_start_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    if-eqz v0, :cond_e

    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/ab;->a(Ljava/lang/String;)V

    .line 136
    :cond_e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x18

    new-array v6, v3, [B

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->d:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 140
    const/4 v3, 0x1

    const-string v7, "Absolute_PersistedStore"

    invoke-virtual {v0, v3, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_97
    .catchall {:try_start_5 .. :try_end_33} :catchall_dc

    move-result-object v8

    .line 141
    :try_start_34
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_18e
    .catchall {:try_start_34 .. :try_end_3f} :catchall_16d

    move-result v0

    if-nez v0, :cond_95

    move v3, v1

    .line 144
    :goto_43
    :try_start_43
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_195
    .catchall {:try_start_43 .. :try_end_48} :catchall_172

    .line 145
    :try_start_48
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 146
    const/4 v0, 0x0

    const/16 v10, 0x18

    invoke-virtual {v7, v6, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    const/4 v0, 0x1

    const-string v10, "DESede/CBC/PKCS5Padding"

    invoke-static {v6, v0, v10, v5}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 151
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v7, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_19c
    .catchall {:try_start_48 .. :try_end_64} :catchall_178

    .line 152
    :try_start_64
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_1a3
    .catchall {:try_start_64 .. :try_end_69} :catchall_17d

    .line 153
    :try_start_69
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_1ab
    .catchall {:try_start_69 .. :try_end_6e} :catchall_181

    .line 155
    const/4 v0, 0x1

    .line 166
    if-eqz v5, :cond_74

    .line 168
    :try_start_71
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_14a
    .catchall {:try_start_71 .. :try_end_74} :catchall_104

    .line 175
    :cond_74
    :goto_74
    if-eqz v6, :cond_79

    .line 177
    :try_start_76
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_167
    .catchall {:try_start_76 .. :try_end_79} :catchall_104

    .line 182
    :cond_79
    :goto_79
    if-eqz v7, :cond_7e

    .line 184
    :try_start_7b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_16a
    .catchall {:try_start_7b .. :try_end_7e} :catchall_104

    .line 188
    :cond_7e
    :goto_7e
    if-eqz v8, :cond_89

    .line 189
    :try_start_80
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    :cond_89
    iget-object v2, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    if-eqz v2, :cond_92

    .line 197
    iget-object v2, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    invoke-virtual {v2, p1, v0, v3}, Lcom/absolute/android/persistservice/ab;->a(Ljava/lang/String;ZZ)V
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_104

    :cond_92
    move v0, v1

    .line 162
    :goto_93
    monitor-exit p0

    return v0

    :cond_95
    move v3, v2

    .line 143
    goto :goto_43

    .line 158
    :catch_97
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    .line 159
    :goto_9c
    :try_start_9c
    iget-object v7, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Unable to write persisted data to file: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " Exception:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b6
    .catchall {:try_start_9c .. :try_end_b6} :catchall_186

    .line 161
    const/4 v0, 0x0

    .line 166
    if-eqz v3, :cond_bc

    .line 168
    :try_start_b9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_127
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_104

    .line 175
    :cond_bc
    :goto_bc
    if-eqz v4, :cond_c1

    .line 177
    :try_start_be
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c1} :catch_144
    .catchall {:try_start_be .. :try_end_c1} :catchall_104

    .line 182
    :cond_c1
    :goto_c1
    if-eqz v5, :cond_c6

    .line 184
    :try_start_c3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c6} :catch_147
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_104

    .line 188
    :cond_c6
    :goto_c6
    if-eqz v6, :cond_d1

    .line 189
    :try_start_c8
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 190
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    :cond_d1
    iget-object v3, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    if-eqz v3, :cond_da

    .line 197
    iget-object v3, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    invoke-virtual {v3, p1, v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Ljava/lang/String;ZZ)V
    :try_end_da
    .catchall {:try_start_c8 .. :try_end_da} :catchall_104

    :cond_da
    move v0, v2

    .line 162
    goto :goto_93

    .line 166
    :catchall_dc
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    :goto_e0
    if-eqz v4, :cond_e5

    .line 168
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_107
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_104

    .line 175
    :cond_e5
    :goto_e5
    if-eqz v6, :cond_ea

    .line 177
    :try_start_e7
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ea} :catch_123
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_104

    .line 182
    :cond_ea
    :goto_ea
    if-eqz v7, :cond_ef

    .line 184
    :try_start_ec
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ef} :catch_125
    .catchall {:try_start_ec .. :try_end_ef} :catchall_104

    .line 188
    :cond_ef
    :goto_ef
    if-eqz v8, :cond_fa

    .line 189
    :try_start_f1
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 190
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    :cond_fa
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    if-eqz v1, :cond_103

    .line 197
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    invoke-virtual {v1, p1, v9, v2}, Lcom/absolute/android/persistservice/ab;->a(Ljava/lang/String;ZZ)V

    .line 166
    :cond_103
    throw v0
    :try_end_104
    .catchall {:try_start_f1 .. :try_end_104} :catchall_104

    .line 120
    :catchall_104
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :catch_107
    move-exception v1

    .line 170
    :try_start_108
    iget-object v3, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception closing persisted file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in savetoPath(). Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e5

    :catch_123
    move-exception v1

    goto :goto_ea

    :catch_125
    move-exception v1

    goto :goto_ef

    .line 169
    :catch_127
    move-exception v3

    .line 170
    iget-object v7, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception closing persisted file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bc

    :catch_144
    move-exception v3

    goto/16 :goto_c1

    :catch_147
    move-exception v3

    goto/16 :goto_c6

    .line 169
    :catch_14a
    move-exception v2

    .line 170
    iget-object v4, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Exception closing persisted file: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " in savetoPath(). Exception:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_165
    .catchall {:try_start_108 .. :try_end_165} :catchall_104

    goto/16 :goto_74

    :catch_167
    move-exception v2

    goto/16 :goto_79

    :catch_16a
    move-exception v2

    goto/16 :goto_7e

    .line 166
    :catchall_16d
    move-exception v0

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_e0

    :catchall_172
    move-exception v0

    move v2, v3

    move-object v6, v4

    move-object v7, v4

    goto/16 :goto_e0

    :catchall_178
    move-exception v0

    move v2, v3

    move-object v6, v4

    goto/16 :goto_e0

    :catchall_17d
    move-exception v0

    move v2, v3

    goto/16 :goto_e0

    :catchall_181
    move-exception v0

    move v2, v3

    move-object v4, v5

    goto/16 :goto_e0

    :catchall_186
    move-exception v0

    move v2, v1

    move-object v7, v5

    move-object v8, v6

    move-object v6, v4

    move-object v4, v3

    goto/16 :goto_e0

    .line 158
    :catch_18e
    move-exception v0

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v8

    goto/16 :goto_9c

    :catch_195
    move-exception v0

    move v1, v3

    move-object v5, v4

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_9c

    :catch_19c
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v6, v8

    move-object v3, v4

    goto/16 :goto_9c

    :catch_1a3
    move-exception v0

    move v1, v3

    move-object v5, v7

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    goto/16 :goto_9c

    :catch_1ab
    move-exception v0

    move v1, v3

    move-object v4, v6

    move-object v3, v5

    move-object v6, v8

    move-object v5, v7

    goto/16 :goto_9c
.end method

.method private static a()[B
    .registers 2

    .prologue
    .line 432
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 433
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 434
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 435
    return-object v1
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 447
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x18

    const/4 v2, 0x0

    .line 254
    monitor-enter p0

    .line 261
    :try_start_7
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d8
    .catchall {:try_start_7 .. :try_end_c} :catchall_c8

    .line 262
    const/16 v0, 0x24

    :try_start_e
    new-array v0, v0, [B

    .line 263
    const/4 v1, 0x0

    const/16 v3, 0x24

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_ed

    .line 264
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 266
    const/4 v3, 0x0

    const/16 v5, 0x18

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v6, :cond_ed

    .line 269
    const/4 v3, 0x2

    const-string v5, "DESede/CBC/PKCS5Padding"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v3, v5, v6}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 271
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v4, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_37} :catch_dd
    .catchall {:try_start_e .. :try_end_37} :catchall_cc

    .line 272
    :try_start_37
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_e2
    .catchall {:try_start_37 .. :try_end_3c} :catchall_cf

    .line 273
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 274
    if-eqz v0, :cond_46

    .line 275
    iput-object v0, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_46} :catch_e8
    .catchall {:try_start_3c .. :try_end_46} :catchall_d1

    :cond_46
    move-object v2, v3

    .line 280
    :goto_47
    if-nez v0, :cond_71

    .line 281
    :try_start_49
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot read data file - unexpected format / corrupt."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_d4

    .line 284
    :catch_51
    move-exception v0

    move-object v3, v4

    :goto_53
    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 288
    :catchall_54
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_58
    if-eqz v2, :cond_63

    .line 294
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_5a

    .line 298
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_63} :catch_8c
    .catchall {:try_start_5a .. :try_end_63} :catchall_6e

    .line 305
    :cond_63
    :goto_63
    if-eqz v3, :cond_68

    .line 307
    :try_start_65
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_88
    .catchall {:try_start_65 .. :try_end_68} :catchall_6e

    .line 311
    :cond_68
    :goto_68
    if-eqz v4, :cond_6d

    .line 313
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_8a
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 288
    :cond_6d
    :goto_6d
    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 254
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :cond_71
    if-eqz v1, :cond_7c

    .line 294
    :cond_73
    :try_start_73
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_73

    .line 298
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7c} :catch_ac
    .catchall {:try_start_73 .. :try_end_7c} :catchall_6e

    .line 305
    :cond_7c
    :goto_7c
    if-eqz v2, :cond_81

    .line 307
    :try_start_7e
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_a8
    .catchall {:try_start_7e .. :try_end_81} :catchall_6e

    .line 311
    :cond_81
    :goto_81
    if-eqz v4, :cond_86

    .line 313
    :try_start_83
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_aa
    .catchall {:try_start_83 .. :try_end_86} :catchall_6e

    .line 316
    :cond_86
    :goto_86
    monitor-exit p0

    return-void

    :catch_88
    move-exception v1

    goto :goto_68

    :catch_8a
    move-exception v1

    goto :goto_6d

    .line 299
    :catch_8c
    move-exception v1

    .line 300
    :try_start_8d
    iget-object v2, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception closing persisted file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in loadNewVersion(). Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    :catch_a8
    move-exception v0

    goto :goto_81

    :catch_aa
    move-exception v0

    goto :goto_86

    .line 299
    :catch_ac
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception closing persisted file: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in loadNewVersion(). Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c7
    .catchall {:try_start_8d .. :try_end_c7} :catchall_6e

    goto :goto_7c

    .line 288
    :catchall_c8
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto :goto_58

    :catchall_cc
    move-exception v0

    move-object v3, v2

    goto :goto_58

    :catchall_cf
    move-exception v0

    goto :goto_58

    :catchall_d1
    move-exception v0

    move-object v2, v1

    goto :goto_58

    :catchall_d4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_58

    .line 284
    :catch_d8
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_53

    :catch_dd
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_53

    :catch_e2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_53

    :catch_e8
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_53

    :cond_ed
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_47
.end method

.method private static d()[B
    .registers 3

    .prologue
    .line 461
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 463
    const-string v0, "Lenovo"

    .line 466
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_47

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 472
    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 481
    const-string v0, "0EB8B69D04F2451E8B59C47D"

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/absolute/android/persistservice/ab;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/absolute/android/persistservice/ag;->g:Lcom/absolute/android/persistservice/ab;

    .line 98
    return-void
.end method

.method protected abstract c()V
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ag;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 391
    if-ne p0, p1, :cond_5

    .line 392
    const/4 v0, 0x1

    .line 410
    :cond_4
    :goto_4
    return v0

    .line 397
    :cond_5
    instance-of v1, p1, Lcom/absolute/android/persistservice/ag;

    if-eqz v1, :cond_4

    .line 402
    check-cast p1, Lcom/absolute/android/persistservice/ag;

    .line 406
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p1, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 410
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method protected final f()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ag;->i(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method

.method protected final declared-synchronized i(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 219
    monitor-enter p0

    const/4 v1, 0x0

    .line 222
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->d:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 223
    const/4 v2, 0x1

    const-string v3, "Absolute_PersistedStore"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ag;->b(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_27
    .catchall {:try_start_2 .. :try_end_1a} :catchall_29

    .line 232
    if-eqz v1, :cond_25

    .line 233
    :try_start_1c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_36

    .line 238
    :cond_25
    monitor-exit p0

    return-void

    .line 228
    :catch_27
    move-exception v0

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 232
    :catchall_29
    move-exception v0

    if-eqz v1, :cond_35

    .line 233
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 234
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_35
    throw v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_36

    .line 219
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized j(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 330
    monitor-enter p0

    .line 335
    :try_start_3
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LENOVO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, "Lenovo"

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_4a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "DESede/CBC/PKCS5Padding"

    const-string v4, "0EB8B69D04F2451E8B59C47D"

    invoke-static {v0, v2, v3, v4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 337
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_61} :catch_fa
    .catchall {:try_start_3 .. :try_end_61} :catchall_f2

    .line 338
    :try_start_61
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_66} :catch_fd
    .catchall {:try_start_61 .. :try_end_66} :catchall_f5

    .line 339
    :try_start_66
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 340
    if-eqz v0, :cond_70

    .line 341
    iput-object v0, p0, Lcom/absolute/android/persistservice/ag;->c:Ljava/util/Hashtable;

    .line 344
    :cond_70
    if-nez v0, :cond_94

    .line 345
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read data file in old format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_7a} :catch_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_f7

    .line 348
    :catch_7a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_7d
    :try_start_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 352
    :catchall_7e
    move-exception v0

    move-object v3, v2

    :goto_80
    if-eqz v1, :cond_8b

    .line 358
    :cond_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_82

    .line 362
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8b} :catch_a8
    .catchall {:try_start_82 .. :try_end_8b} :catchall_91

    .line 369
    :cond_8b
    :goto_8b
    if-eqz v3, :cond_90

    .line 371
    :try_start_8d
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_a6
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    .line 352
    :cond_90
    :goto_90
    :try_start_90
    throw v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    .line 330
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_94
    if-eqz v2, :cond_9f

    .line 358
    :cond_96
    :try_start_96
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_96

    .line 362
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9f} :catch_ce
    .catchall {:try_start_96 .. :try_end_9f} :catchall_91

    .line 369
    :cond_9f
    :goto_9f
    if-eqz v3, :cond_a4

    .line 371
    :try_start_a1
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_cc
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_91

    .line 374
    :cond_a4
    :goto_a4
    monitor-exit p0

    return-void

    :catch_a6
    move-exception v1

    goto :goto_90

    .line 363
    :catch_a8
    move-exception v1

    .line 364
    :try_start_a9
    iget-object v2, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception closing persisted file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in loadOldVersion(). Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_8b

    :catch_cc
    move-exception v0

    goto :goto_a4

    .line 363
    :catch_ce
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->e:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception closing persisted file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in loadOldVersion(). Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_a9 .. :try_end_f1} :catchall_91

    goto :goto_9f

    .line 352
    :catchall_f2
    move-exception v0

    move-object v3, v1

    goto :goto_80

    :catchall_f5
    move-exception v0

    goto :goto_80

    :catchall_f7
    move-exception v0

    move-object v1, v2

    goto :goto_80

    .line 348
    :catch_fa
    move-exception v0

    move-object v2, v1

    goto :goto_7d

    :catch_fd
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7d
.end method
