.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:J

.field private mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    .line 30
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 33
    return-void
.end method

.method private helpDestroy()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    .line 115
    :try_start_4
    iget-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v2, :cond_c

    .line 116
    const/4 v1, 0x1

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 119
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_38

    .line 121
    if-eqz v1, :cond_37

    .line 123
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 124
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 126
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2f

    .line 127
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    .line 129
    :cond_2f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 131
    iput-wide v6, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 133
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_37
    return-void

    .line 119
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method


# virtual methods
.method checkValid()V
    .registers 5

    .prologue
    .line 66
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 67
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_10
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 147
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_c
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 150
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p0, p1, :cond_5

    .line 193
    :cond_4
    :goto_4
    return v1

    .line 184
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 185
    goto :goto_4

    .line 188
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 189
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 192
    check-cast v0, Landroid/renderscript/BaseObj;

    .line 193
    .local v0, "b":Landroid/renderscript/BaseObj;
    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    iget-wide v6, v0, Landroid/renderscript/BaseObj;->mID:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void
.end method

.method getID(Landroid/renderscript/RenderScript;)J
    .registers 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 53
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_12

    .line 54
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_12
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 57
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_22
    if-eqz p1, :cond_31

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-eq p1, v0, :cond_31

    .line 60
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_31
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 168
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method setID(J)V
    .registers 8
    .param p1, "id"    # J

    .prologue
    .line 36
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 37
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_10
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_b

    .line 84
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName requires a string of non-zero length."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1b

    .line 88
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName does not accept a zero length string."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1b
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-eqz v2, :cond_28

    .line 92
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName object already has a name."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_28
    :try_start_28
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 98
    .local v0, "bytes":[B
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    .line 99
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_37} :catch_38

    .line 103
    return-void

    .line 100
    .end local v0    # "bytes":[B
    :catch_38
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method updateFromNative()V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 158
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 159
    return-void
.end method
