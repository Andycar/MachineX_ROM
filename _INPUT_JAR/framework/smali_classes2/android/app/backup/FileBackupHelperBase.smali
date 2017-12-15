.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field mContext:Landroid/content/Context;

.field mExceptionLogged:Z

.field mPtr:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    .line 38
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static native ctor()J
.end method

.method private static native dtor(J)V
.end method

.method static performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .param p0, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "files"    # [Ljava/lang/String;
    .param p4, "keys"    # [Ljava/lang/String;

    .prologue
    .line 55
    array-length v2, p3

    if-nez v2, :cond_4

    .line 82
    :cond_3
    return-void

    .line 59
    :cond_4
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v10, v0

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_7
    if-ge v9, v10, :cond_30

    aget-object v8, v0, v9

    .line 60
    .local v8, "f":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2d

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "files must have all absolute paths: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_2d
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 65
    .end local v8    # "f":Ljava/lang/String;
    :cond_30
    array-length v2, p3

    array-length v3, p4

    if-eq v2, v3, :cond_59

    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "files.length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " keys.length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, p4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_59
    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 71
    .local v1, "oldStateFd":Ljava/io/FileDescriptor;
    :goto_5f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 72
    .local v4, "newStateFd":Ljava/io/FileDescriptor;
    if-nez v4, :cond_6d

    .line 73
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 70
    .end local v1    # "oldStateFd":Ljava/io/FileDescriptor;
    .end local v4    # "newStateFd":Ljava/io/FileDescriptor;
    :cond_6b
    const/4 v1, 0x0

    goto :goto_5f

    .line 76
    .restart local v1    # "oldStateFd":Ljava/io/FileDescriptor;
    .restart local v4    # "newStateFd":Ljava/io/FileDescriptor;
    :cond_6d
    iget-wide v2, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 78
    .local v7, "err":I
    if-eqz v7, :cond_3

    .line 80
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup failed 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native writeFile_native(JLjava/lang/String;J)I
.end method

.method private static native writeSnapshot_native(JLjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-static {v0, v1}, Landroid/app/backup/FileBackupHelperBase;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    return-void

    .line 45
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 110
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 111
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 112
    const/4 v4, 0x1

    .line 115
    .end local v3    # "s":Ljava/lang/String;
    :goto_e
    return v4

    .line 110
    .restart local v3    # "s":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 115
    .end local v3    # "s":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    .registers 11
    .param p1, "f"    # Ljava/io/File;
    .param p2, "in"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    const/4 v2, 0x1

    .line 85
    const/4 v1, -0x1

    .line 88
    .local v1, "result":I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    iget-wide v4, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    iget-wide v6, v6, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v4, v5, v3, v6, v7}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(JLjava/lang/String;J)I

    move-result v1

    .line 92
    if-eqz v1, :cond_55

    .line 94
    iget-boolean v3, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    if-nez v3, :cond_55

    .line 95
    const-string v3, "FileBackupHelperBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed restoring file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for app \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' result=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    .line 101
    :cond_55
    if-nez v1, :cond_58

    :goto_57
    return v2

    :cond_58
    const/4 v2, 0x0

    goto :goto_57
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 105
    iget-wide v2, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(JLjava/io/FileDescriptor;)I

    move-result v0

    .line 107
    .local v0, "result":I
    return-void
.end method
