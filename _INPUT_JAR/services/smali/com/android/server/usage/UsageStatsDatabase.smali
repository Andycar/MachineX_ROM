.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "daily"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "weekly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "monthly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "yearly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 57
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 58
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 59
    return-void
.end method

.method private checkVersionLocked()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    .line 129
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_e} :catch_67
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_6e

    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 130
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_16} :catch_70
    .catchall {:try_start_f .. :try_end_16} :catchall_b6

    move-result v2

    .line 131
    .local v2, "version":I
    if-eqz v1, :cond_1e

    if-eqz v7, :cond_6a

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_67
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_6e

    .line 135
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1e
    :goto_1e
    if-eq v2, v9, :cond_61

    .line 136
    const-string v5, "UsageStatsDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrading from version "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    .line 139
    :try_start_45
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_8c

    .local v3, "writer":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x2

    :try_start_53
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5a} :catch_9e
    .catchall {:try_start_53 .. :try_end_5a} :catchall_b4

    .line 141
    if-eqz v3, :cond_61

    if-eqz v7, :cond_9a

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_87
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_8c

    .line 146
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_61
    :goto_61
    return-void

    .line 131
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_62
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_63
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "version":I
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_67
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :goto_68
    const/4 v2, 0x0

    .restart local v2    # "version":I
    goto :goto_1e

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_6a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6d} :catch_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_6e

    goto :goto_1e

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "version":I
    :catch_6e
    move-exception v0

    goto :goto_68

    .line 129
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_70
    move-exception v5

    :try_start_71
    throw v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 131
    :catchall_72
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_76
    if-eqz v1, :cond_7d

    if-eqz v6, :cond_83

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_7d} :catch_67
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_6e

    :cond_7d
    :goto_7d
    :try_start_7d
    throw v5

    :catch_7e
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7d

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_86} :catch_67
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_6e

    goto :goto_7d

    .line 141
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "version":I
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_87
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_88
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_61

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_8c
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UsageStatsDatabase"

    const-string v6, "Failed to write new version"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :cond_9a
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_8c

    goto :goto_61

    .line 139
    :catch_9e
    move-exception v5

    :try_start_9f
    throw v5
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 141
    :catchall_a0
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_a3
    if-eqz v3, :cond_aa

    if-eqz v7, :cond_b0

    :try_start_a7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_8c

    :cond_aa
    :goto_aa
    :try_start_aa
    throw v5

    :catch_ab
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_aa

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_b0
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b3} :catch_8c

    goto :goto_aa

    :catchall_b4
    move-exception v5

    goto :goto_a3

    .line 131
    .end local v2    # "version":I
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_b6
    move-exception v5

    move-object v6, v7

    goto :goto_76
.end method

.method private doUpgradeLocked(I)V
    .registers 10
    .param p1, "thisVersion"    # I

    .prologue
    .line 149
    const/4 v6, 0x2

    if-ge p1, v6, :cond_2a

    .line 152
    const-string v6, "UsageStatsDatabase"

    const-string v7, "Deleting all usage stats files"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-ge v3, v6, :cond_2a

    .line 154
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 155
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_27

    .line 156
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_27

    aget-object v1, v0, v4

    .line 157
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 153
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 162
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2a
    return-void
.end method

.method private indexFilesLocked()V
    .registers 13

    .prologue
    .line 99
    new-instance v2, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 107
    .local v2, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v8

    if-ge v5, v8, :cond_49

    .line 108
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v5

    if-nez v8, :cond_3e

    .line 109
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v9, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v9}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v9, v8, v5

    .line 113
    :goto_1a
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v8, v8, v5

    invoke-virtual {v8, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 114
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_46

    .line 119
    move-object v1, v4

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_27
    if-ge v6, v7, :cond_46

    aget-object v3, v1, v6

    .line 120
    .local v3, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 121
    .local v0, "af":Landroid/util/AtomicFile;
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v5

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 111
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3e
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->clear()V

    goto :goto_1a

    .line 107
    .restart local v4    # "files":[Ljava/io/File;
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 125
    .end local v4    # "files":[Ljava/io/File;
    :cond_49
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 14
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .prologue
    .line 382
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 383
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_40

    .line 384
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9
    if-ge v5, v6, :cond_40

    aget-object v1, v0, v5

    .line 385
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "path":Ljava/lang/String;
    const-string v8, ".bak"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 387
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v1    # "f":Ljava/io/File;
    :cond_29
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 390
    .local v2, "beginTime":J
    cmp-long v8, v2, p1

    if-gez v8, :cond_3d

    .line 391
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 384
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 395
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "beginTime":J
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "path":Ljava/lang/String;
    :cond_40
    return-void
.end method


# virtual methods
.method public findBestFitBucket(JJ)I
    .registers 18
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .prologue
    .line 335
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 336
    const/4 v0, -0x1

    .line 337
    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    .line 338
    .local v6, "smallestDiff":J
    :try_start_9
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_3a

    .line 339
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v4

    .line 340
    .local v4, "index":I
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    .line 341
    .local v5, "size":I
    if-ltz v4, :cond_37

    if-ge v4, v5, :cond_37

    .line 343
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 344
    .local v2, "diff":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_37

    .line 345
    move-wide v6, v2

    .line 346
    move v0, v1

    .line 338
    .end local v2    # "diff":J
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 350
    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_3a
    monitor-exit v9

    return v0

    .line 351
    .end local v1    # "i":I
    :catchall_3c
    move-exception v8

    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v8
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 10
    .param p1, "intervalType"    # I

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 201
    if-ltz p1, :cond_b

    :try_start_6
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-lt p1, v6, :cond_27

    .line 202
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad interval type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v4

    .line 205
    :cond_27
    :try_start_27
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 206
    .local v2, "fileCount":I
    if-nez v2, :cond_34

    .line 207
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_24

    move-object v3, v4

    .line 219
    :goto_33
    return-object v3

    .line 211
    :cond_34
    :try_start_34
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 212
    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 213
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_48} :catch_4a
    .catchall {:try_start_34 .. :try_end_48} :catchall_24

    .line 214
    :try_start_48
    monitor-exit v5

    goto :goto_33

    .line 215
    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_4a
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "UsageStatsDatabase"

    const-string v7, "Failed to read usage stats file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_24

    move-object v3, v4

    .line 219
    goto :goto_33
.end method

.method public getLatestUsageStatsBeginTime(I)J
    .registers 7
    .param p1, "intervalType"    # I

    .prologue
    .line 226
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 227
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_26

    .line 228
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :catchall_23
    move-exception v1

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1

    .line 231
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    .line 232
    .local v0, "statsFileCount":I
    if-lez v0, :cond_3c

    .line 233
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    monitor-exit v4

    .line 235
    :goto_3b
    return-wide v2

    :cond_3c
    const-wide/16 v2, -0x1

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_23

    goto :goto_3b
.end method

.method public init(J)V
    .registers 16
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 65
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 66
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7
    if-ge v5, v6, :cond_37

    aget-object v1, v0, v5

    .line 67
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_34

    .line 69
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 95
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_31
    move-exception v8

    monitor-exit v9
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v8

    .line 66
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 74
    .end local v1    # "f":Ljava/io/File;
    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionLocked()V

    .line 75
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 78
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v0, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v6, :cond_6a

    aget-object v3, v0, v5

    .line 79
    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v7

    .line 80
    .local v7, "startIndex":I
    if-gez v7, :cond_4e

    .line 78
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 84
    :cond_4e
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 85
    .local v2, "fileCount":I
    move v4, v7

    .local v4, "i":I
    :goto_53
    if-ge v4, v2, :cond_61

    .line 86
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 91
    :cond_61
    move v4, v7

    :goto_62
    if-ge v4, v2, :cond_4b

    .line 92
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 95
    .end local v2    # "fileCount":I
    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "i":I
    .end local v7    # "startIndex":I
    :cond_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_37 .. :try_end_6b} :catchall_31

    .line 96
    return-void
.end method

.method public onTimeChanged(J)V
    .registers 18
    .param p1, "timeDiffMillis"    # J

    .prologue
    .line 165
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v0, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7
    if-ge v5, v6, :cond_a8

    aget-object v3, v0, v5

    .line 167
    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 168
    .local v2, "fileCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v2, :cond_a1

    .line 169
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 170
    .local v1, "file":Landroid/util/AtomicFile;
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v12

    add-long v8, v12, p1

    .line 171
    .local v8, "newTime":J
    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-gez v10, :cond_50

    .line 172
    const-string v10, "UsageStatsDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for it is in the future now."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_9e

    .line 168
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 177
    :cond_50
    :try_start_50
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_ad
    .catchall {:try_start_50 .. :try_end_57} :catchall_9e

    .line 181
    :goto_57
    :try_start_57
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v7, "newFile":Ljava/io/File;
    const-string v10, "UsageStatsDatabase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Moving file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_4d

    .line 193
    .end local v0    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .end local v1    # "file":Landroid/util/AtomicFile;
    .end local v2    # "fileCount":I
    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "newTime":J
    :catchall_9e
    move-exception v10

    monitor-exit v11
    :try_end_a0
    .catchall {:try_start_57 .. :try_end_a0} :catchall_9e

    throw v10

    .line 188
    .restart local v0    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .restart local v2    # "fileCount":I
    .restart local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_a1
    :try_start_a1
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 192
    .end local v2    # "fileCount":I
    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "i":I
    :cond_a8
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 193
    monitor-exit v11
    :try_end_ac
    .catchall {:try_start_a1 .. :try_end_ac} :catchall_9e

    .line 194
    return-void

    .line 178
    .restart local v1    # "file":Landroid/util/AtomicFile;
    .restart local v2    # "fileCount":I
    .restart local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v4    # "i":I
    .restart local v8    # "newTime":J
    :catch_ad
    move-exception v10

    goto :goto_57
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 360
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 364
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 365
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 369
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 370
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 371
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 374
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 375
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x7

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_69
    move-exception v0

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_26

    .line 403
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad interval type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1

    .line 406
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    .line 407
    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_51

    .line 408
    new-instance v0, Landroid/util/AtomicFile;

    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 410
    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 413
    :cond_51
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 414
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 415
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    .line 416
    return-void
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 21
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 265
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-lt p1, v10, :cond_26

    .line 266
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad interval type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 326
    :catchall_23
    move-exception v10

    monitor-exit v11
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v10

    .line 269
    :cond_26
    :try_start_26
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v10, p1

    .line 271
    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    if-gtz v10, :cond_31

    .line 275
    const/4 v7, 0x0

    monitor-exit v11

    .line 324
    :goto_30
    return-object v7

    .line 278
    :cond_31
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v8

    .line 279
    .local v8, "startIndex":I
    if-gez v8, :cond_3a

    .line 282
    const/4 v8, 0x0

    .line 285
    :cond_3a
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v3

    .line 286
    .local v3, "endIndex":I
    if-gez v3, :cond_45

    .line 291
    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_30

    .line 294
    :cond_45
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v12

    cmp-long v10, v12, p4

    if-nez v10, :cond_54

    .line 296
    add-int/lit8 v3, v3, -0x1

    .line 297
    if-gez v3, :cond_54

    .line 302
    const/4 v7, 0x0

    monitor-exit v11
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_23

    goto :goto_30

    .line 307
    :cond_54
    :try_start_54
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 308
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    .local v5, "i":I
    :goto_5f
    if-gt v5, v3, :cond_79

    .line 310
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 316
    .local v4, "f":Landroid/util/AtomicFile;
    invoke-static {v4, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 317
    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v10, p2, v12

    if-gez v10, :cond_76

    .line 318
    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_76} :catch_7b
    .catchall {:try_start_54 .. :try_end_76} :catchall_23

    .line 309
    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 321
    .end local v4    # "f":Landroid/util/AtomicFile;
    :cond_79
    :try_start_79
    monitor-exit v11

    goto :goto_30

    .line 322
    .end local v5    # "i":I
    .end local v7    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_7b
    move-exception v2

    .line 323
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "UsageStatsDatabase"

    const-string v12, "Failed to read usage stats file"

    invoke-static {v10, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const/4 v7, 0x0

    monitor-exit v11
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_23

    goto :goto_30
.end method
