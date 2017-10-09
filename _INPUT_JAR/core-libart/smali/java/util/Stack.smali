.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 2

    .prologue
    .line 41
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Stack;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_b
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    monitor-exit p0

    return-object v1

    .line 56
    :catch_b
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_c
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12

    .line 55
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    if-nez v2, :cond_e

    .line 73
    new-instance v2, Ljava/util/EmptyStackException;

    invoke-direct {v2}, Ljava/util/EmptyStackException;-><init>()V

    throw v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 72
    :catchall_b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 75
    :cond_e
    :try_start_e
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Ljava/util/Stack;->elementCount:I

    .line 76
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 77
    .local v1, "obj":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 78
    iget v2, p0, Ljava/util/Stack;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Stack;->modCount:I
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_b

    .line 79
    monitor-exit p0

    return-object v1
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 93
    return-object p1
.end method

.method public declared-synchronized search(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 106
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    .line 107
    .local v0, "dumpArray":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Stack;->elementCount:I

    .line 108
    .local v2, "size":I
    if-eqz p1, :cond_1a

    .line 109
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_28

    .line 110
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    move-result v3

    if-eqz v3, :cond_17

    .line 111
    sub-int v3, v2, v1

    .line 121
    :goto_15
    monitor-exit p0

    return v3

    .line 109
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 115
    .end local v1    # "i":I
    :cond_1a
    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1c
    if-ltz v1, :cond_28

    .line 116
    :try_start_1e
    aget-object v3, v0, v1
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_2a

    if-nez v3, :cond_25

    .line 117
    sub-int v3, v2, v1

    goto :goto_15

    .line 115
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 121
    :cond_28
    const/4 v3, -0x1

    goto :goto_15

    .line 106
    .end local v0    # "dumpArray":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3
.end method
