.class public Lcom/android/server/enterprise/auditlog/PartialFileNode;
.super Ljava/lang/Object;
.source "PartialFileNode.java"


# static fields
.field static FILESIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PartialFileNode"


# instance fields
.field private isCompressed:Z

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private volatile mFile:Ljava/io/File;

.field private mLastLineLength:I

.field private volatile mMarkAsDeprecated:Z

.field private mPackageName:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mTimestamp:J

.field private mTruncateFileAt:J

.field private mWriteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    const-wide/32 v0, 0x80000

    sput-wide v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isCompressed:Z

    .line 84
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isCompressed:Z

    .line 64
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 65
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 66
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "suffix":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 68
    iput v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 69
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 70
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    .line 72
    :try_start_3b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    sget-wide v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6f} :catch_70

    .line 81
    :goto_6f
    return-void

    .line 77
    :catch_70
    move-exception v7

    .line 78
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "PartialFileNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PartialFileNode.Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6f
.end method


# virtual methods
.method closeFile()V
    .registers 7

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 117
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_2a

    .line 118
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 119
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 120
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 121
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    monitor-exit v2

    .line 128
    :cond_26
    :goto_26
    return-void

    .line 122
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 124
    :catch_2a
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PartialFileNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFile.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_26
.end method

.method compressFile()Z
    .registers 16

    .prologue
    .line 170
    const/4 v10, 0x0

    .line 171
    .local v10, "success":Z
    const/4 v11, 0x0

    .line 172
    .local v11, "tempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 173
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 174
    .local v8, "outputStream":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 176
    .local v3, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_5
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_73
    .catchall {:try_start_5 .. :try_end_23} :catchall_87

    .line 177
    .end local v11    # "tempFile":Ljava/io/File;
    .local v12, "tempFile":Ljava/io/File;
    :try_start_23
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_b8
    .catchall {:try_start_23 .. :try_end_2a} :catchall_a6

    .line 178
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_2a
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_bb
    .catchall {:try_start_2a .. :try_end_2f} :catchall_a9

    .line 179
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_2f
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_bf
    .catchall {:try_start_2f .. :try_end_34} :catchall_ad

    .line 180
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/high16 v13, 0x10000

    :try_start_36
    new-array v0, v13, [B

    .line 181
    .local v0, "buffer":[B
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 183
    .local v1, "bytesRead":I
    const/4 v2, 0x0

    .line 185
    .local v2, "bytesWritten":I
    :goto_3d
    if-lez v1, :cond_49

    .line 186
    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 187
    add-int/2addr v2, v1

    .line 188
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_3d

    .line 190
    :cond_49
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 192
    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v10

    .line 194
    if-eqz v10, :cond_59

    .line 195
    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_59} :catch_c4
    .catchall {:try_start_36 .. :try_end_59} :catchall_b2

    .line 202
    :cond_59
    if-eqz v4, :cond_5e

    .line 204
    :try_start_5b
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_98

    .line 207
    :cond_5e
    :goto_5e
    if-eqz v7, :cond_63

    .line 209
    :try_start_60
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_9a

    .line 213
    :cond_63
    :goto_63
    if-eqz v9, :cond_ca

    .line 215
    :try_start_65
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6d

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 219
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    :cond_6c
    :goto_6c
    return v10

    .line 216
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_6d
    move-exception v13

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_6c

    .line 199
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    :catch_73
    move-exception v5

    .line 200
    .local v5, "e":Ljava/lang/Exception;
    :goto_74
    const/4 v10, 0x0

    .line 202
    if-eqz v3, :cond_7a

    .line 204
    :try_start_77
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_9c

    .line 207
    :cond_7a
    :goto_7a
    if-eqz v6, :cond_7f

    .line 209
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_9e

    .line 213
    :cond_7f
    :goto_7f
    if-eqz v8, :cond_6c

    .line 215
    :try_start_81
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_6c

    .line 216
    :catch_85
    move-exception v13

    goto :goto_6c

    .line 202
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_87
    move-exception v13

    :goto_88
    if-eqz v3, :cond_8d

    .line 204
    :try_start_8a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_a0

    .line 207
    :cond_8d
    :goto_8d
    if-eqz v6, :cond_92

    .line 209
    :try_start_8f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_a2

    .line 213
    :cond_92
    :goto_92
    if-eqz v8, :cond_97

    .line 215
    :try_start_94
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_a4

    .line 216
    :cond_97
    :goto_97
    throw v13

    .line 205
    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_98
    move-exception v13

    goto :goto_5e

    .line 210
    :catch_9a
    move-exception v13

    goto :goto_63

    .line 205
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "bytesWritten":I
    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "tempFile":Ljava/io/File;
    :catch_9c
    move-exception v13

    goto :goto_7a

    .line 210
    :catch_9e
    move-exception v13

    goto :goto_7f

    .line 205
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_a0
    move-exception v14

    goto :goto_8d

    .line 210
    :catch_a2
    move-exception v14

    goto :goto_92

    .line 216
    :catch_a4
    move-exception v14

    goto :goto_97

    .line 202
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_a6
    move-exception v13

    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_88

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_a9
    move-exception v13

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_88

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_ad
    move-exception v13

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_88

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catchall_b2
    move-exception v13

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_88

    .line 199
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_b8
    move-exception v5

    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_bb
    move-exception v5

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_bf
    move-exception v5

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :catch_c4
    move-exception v5

    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_74

    .end local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "bytesWritten":I
    .restart local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "tempFile":Ljava/io/File;
    :cond_ca
    move-object v3, v4

    .end local v4    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "compressedOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    goto :goto_6c
.end method

.method delete()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 132
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v1

    .line 133
    :try_start_7
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 135
    monitor-exit v1

    .line 137
    :cond_10
    return-void

    .line 135
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getFileSize()J
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 148
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method getTimestamp()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    return-wide v0
.end method

.method isDeprecated()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    return v0
.end method

.method declared-synchronized setDeprecated(Z)Z
    .registers 3
    .param p1, "dep"    # Z

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    .line 157
    const/4 v0, 0x0

    .line 161
    :goto_6
    monitor-exit p0

    return v0

    .line 160
    :cond_8
    :try_start_8
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    .line 161
    const/4 v0, 0x1

    goto :goto_6

    .line 156
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setTimestamp()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 142
    :cond_c
    return-void
.end method

.method write(Ljava/lang/String;)Z
    .registers 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_f

    .line 96
    const/4 v1, 0x0

    .line 110
    :goto_e
    return v1

    .line 98
    :cond_f
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_39

    .line 99
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    monitor-enter v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_3e

    .line 100
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 101
    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    .line 102
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 103
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    monitor-exit v2

    .line 110
    :cond_39
    :goto_39
    const/4 v1, 0x1

    goto :goto_e

    .line 104
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 106
    :catch_3e
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PartialFileNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write.Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_39
.end method
