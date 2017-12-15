.class public Landroid/filterfw/core/FinalPort;
.super Landroid/filterfw/core/FieldPort;
.source "FinalPort.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 5
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "hasDefault"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .registers 6
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "isAssignment"    # Z

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/FinalPort;->assertPortIsOpen()V

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FinalPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    .line 35
    iget-object v0, p0, Landroid/filterfw/core/FinalPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v0

    if-eqz v0, :cond_31

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to modify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2e

    .line 33
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 38
    :cond_31
    :try_start_31
    invoke-super {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    .line 39
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/filterfw/core/FieldPort;->transfer(Landroid/filterfw/core/FilterContext;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 41
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
