.class Lcom/android/server/enterprise/auditlog/CircularBuffer$1;
.super Ljava/util/TimerTask;
.source "CircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/auditlog/CircularBuffer;->tictacForDeprecation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # getter for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$000(Lcom/android/server/enterprise/auditlog/CircularBuffer;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 200
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # getter for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$000(Lcom/android/server/enterprise/auditlog/CircularBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 203
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v1

    if-nez v1, :cond_11

    .line 207
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5a

    .line 208
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 209
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    # -= operator for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J
    invoke-static {v1, v4, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$122(Lcom/android/server/enterprise/auditlog/CircularBuffer;J)J

    .line 210
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # operator++ for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$208(Lcom/android/server/enterprise/auditlog/CircularBuffer;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V
    invoke-static {v1, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$300(Lcom/android/server/enterprise/auditlog/CircularBuffer;I)V

    .line 214
    :cond_5a
    monitor-exit v2

    .line 215
    return-void

    .line 214
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw v1
.end method
