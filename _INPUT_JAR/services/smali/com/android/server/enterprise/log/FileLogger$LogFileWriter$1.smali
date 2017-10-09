.class Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/BufferedWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iput-object p2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/BufferedWriter;)V
    .registers 2
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 305
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
    .line 278
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->close(Ljava/io/BufferedWriter;)V

    return-void
.end method

.method public flush(Ljava/io/BufferedWriter;)V
    .registers 2
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 299
    return-void
.end method

.method public bridge synthetic flush(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->flush(Ljava/io/BufferedWriter;)V

    return-void
.end method

.method public open()Ljava/io/BufferedWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->val$file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

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
    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->open()Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/BufferedWriter;)V
    .registers 5
    .param p1, "io"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->this$1:Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iget-object v2, v2, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v2, v2, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "log":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_a

    .line 293
    .end local v1    # "log":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 294
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
    .line 278
    check-cast p1, Ljava/io/BufferedWriter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;->process(Ljava/io/BufferedWriter;)V

    return-void
.end method
