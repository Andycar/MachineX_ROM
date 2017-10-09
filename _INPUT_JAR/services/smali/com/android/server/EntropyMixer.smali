.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final hwRandomDevice:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    const-string v2, "/dev/hw_random"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entropyFile"    # Ljava/lang/String;
    .param p3, "randomDevice"    # Ljava/lang/String;
    .param p4, "hwRandomDevice"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    new-instance v1, Lcom/android/server/EntropyMixer$1;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v1, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    if-nez p3, :cond_1c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "randomDevice"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1c
    if-nez p4, :cond_26

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "hwRandomDevice"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_26
    if-nez p2, :cond_30

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entropyFile"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_30
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 111
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EntropyMixer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addHwRandomEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyMixer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/EntropyMixer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .registers 7

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "out":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_92
    .catchall {:try_start_1 .. :try_end_d} :catchall_a0

    .line 163
    .end local v1    # "out":Ljava/io/PrintWriter;
    .local v2, "out":Ljava/io/PrintWriter;
    :try_start_d
    const-string v3, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v3, "All Your Randomness Are Belong To Us"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    sget-wide v4, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 166
    sget-wide v4, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 167
    const-string/jumbo v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v3, "ro.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v3, "ro.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v3, "ro.bootloader"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v3, "ro.hardware"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v3, "ro.revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v3, "ro.build.fingerprint"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8b} :catch_aa
    .catchall {:try_start_d .. :try_end_8b} :catchall_a7

    .line 181
    if-eqz v2, :cond_ad

    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 185
    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    :cond_91
    :goto_91
    return-void

    .line 178
    :catch_92
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    :goto_93
    :try_start_93
    const-string v3, "EntropyMixer"

    const-string v4, "Unable to add device specific data to the entropy pool"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_a0

    .line 181
    if-eqz v1, :cond_91

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_91

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v3

    :goto_a1
    if-eqz v1, :cond_a6

    .line 182
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_a6
    throw v3

    .line 181
    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catchall_a7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_a1

    .line 178
    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catch_aa
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_93

    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :cond_ad
    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_91
.end method

.method private addHwRandomEntropy()V
    .registers 5

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->hwRandomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V

    .line 193
    const-string v1, "EntropyMixer"

    const-string v2, "Added HW RNG output to entropy pool"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_13} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 199
    :goto_13
    return-void

    .line 196
    :catch_14
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EntropyMixer"

    const-string v2, "Failed to add HW RNG output to entropy pool"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1d
    move-exception v1

    goto :goto_13
.end method

.method private static getSystemDir()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 203
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v1, "systemDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .registers 5

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_16

    .line 134
    :goto_c
    return-void

    .line 129
    :catch_d
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "EntropyMixer"

    const-string v2, "No existing entropy file -- first boot?"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 131
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_16
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EntropyMixer"

    const-string v2, "Failure loading existing entropy file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private scheduleEntropyWriter()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xa4cb80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method private writeEntropy()V
    .registers 5

    .prologue
    .line 138
    :try_start_0
    const-string v1, "EntropyMixer"

    const-string v2, "Writing entropy..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 143
    :goto_13
    return-void

    .line 140
    :catch_14
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EntropyMixer"

    const-string v2, "Unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
