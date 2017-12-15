.class public Landroid/app/backup/BackupDataInput;
.super Ljava/lang/Object;
.source "BackupDataInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupDataInput$1;,
        Landroid/app/backup/BackupDataInput$EntityHeader;
    }
.end annotation


# instance fields
.field mBackupReader:J

.field private mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput$1;)V

    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 77
    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_13
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 79
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3a
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private native readEntityData_native(J[BII)I
.end method

.method private native readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(J)I
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
    .line 88
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v0, v1}, Landroid/app/backup/BackupDataInput;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    return-void

    .line 90
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDataSize()I
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    return v0

    .line 144
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    return-object v0

    .line 129
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEntityData([BII)I
    .registers 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v1, :cond_2f

    .line 165
    iget-wide v2, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/backup/BackupDataInput;->readEntityData_native(J[BII)I

    move-result v0

    .line 166
    .local v0, "result":I
    if-ltz v0, :cond_11

    .line 167
    return v0

    .line 169
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "result":I
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Entity header not read"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNextHeader()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    iget-wide v4, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    iget-object v3, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    invoke-direct {p0, v4, v5, v3}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I

    move-result v0

    .line 105
    .local v0, "result":I
    if-nez v0, :cond_f

    .line 107
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 112
    :goto_e
    return v1

    .line 109
    :cond_f
    if-lez v0, :cond_15

    .line 111
    iput-boolean v2, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    move v1, v2

    .line 112
    goto :goto_e

    .line 115
    :cond_15
    iput-boolean v2, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 116
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipEntityData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_a

    .line 186
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(J)I

    .line 190
    return-void

    .line 188
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
