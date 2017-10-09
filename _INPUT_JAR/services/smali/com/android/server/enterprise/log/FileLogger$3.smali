.class Lcom/android/server/enterprise/log/FileLogger$3;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$outFile:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V
    .registers 4

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    iput-object p2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/FileInputStream;)V
    .registers 2
    .param p1, "inFile"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 398
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    check-cast p1, Ljava/io/FileInputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->close(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public open()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger$3;->open()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/FileInputStream;)V
    .registers 6
    .param p1, "inFile"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 388
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_11

    .line 389
    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 391
    :cond_11
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    check-cast p1, Ljava/io/FileInputStream;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->process(Ljava/io/FileInputStream;)V

    return-void
.end method
