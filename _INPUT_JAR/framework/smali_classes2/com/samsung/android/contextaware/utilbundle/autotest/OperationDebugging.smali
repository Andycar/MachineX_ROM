.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "OperationDebugging.java"


# instance fields
.field private final mPacketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "delayTime"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method protected final addPacket([B)V
    .registers 3
    .param p1, "packet"    # [B

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method protected final clearPacket()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    return-void
.end method

.method protected abstract doDebugging([B)V
.end method

.method protected final removePacket([B)V
    .registers 3
    .param p1, "packet"    # [B

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public final run()V
    .registers 9

    .prologue
    .line 59
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_17

    .line 60
    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->getDelayTime()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 62
    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 76
    :cond_17
    :goto_17
    return-void

    .line 66
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenario ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_42
    if-ge v3, v5, :cond_63

    aget-byte v4, v0, v3

    .line 68
    .local v4, "j":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 71
    .end local v4    # "j":I
    :cond_63
    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;->doDebugging([B)V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_6e} :catch_71

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_71
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_17
.end method
