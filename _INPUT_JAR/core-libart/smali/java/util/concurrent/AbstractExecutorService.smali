.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 26
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 114
    new-instance v18, Ljava/lang/NullPointerException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    throw v18

    .line 115
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v15

    .line 116
    .local v15, "ntasks":I
    if-nez v15, :cond_14

    .line 117
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 118
    :cond_14
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v12, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v5, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 131
    .local v5, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v8, 0x0

    .line 132
    .local v8, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_82

    :try_start_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    add-long v6, v18, p3

    .line 133
    .local v6, "deadline":J
    :goto_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 136
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_8f

    .line 137
    add-int/lit8 v15, v15, -0x1

    .line 138
    const/4 v4, 0x1

    .local v4, "active":I
    move-object v9, v8

    .line 141
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v9, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_42
    :try_start_42
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v11

    .line 142
    .local v11, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v11, :cond_5f

    .line 143
    if-lez v15, :cond_85

    .line 144
    add-int/lit8 v15, v15, -0x1

    .line 145
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_c1

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 159
    :cond_5f
    :goto_5f
    if-eqz v11, :cond_e4

    .line 160
    add-int/lit8 v4, v4, -0x1

    .line 162
    :try_start_63
    invoke-interface {v11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_66
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_63 .. :try_end_66} :catch_d2
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_66} :catch_d7
    .catchall {:try_start_63 .. :try_end_66} :catchall_c1

    move-result-object v19

    .line 176
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "size":I
    :goto_6c
    move/from16 v0, v17

    if-ge v13, v0, :cond_e1

    .line 177
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Future;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 176
    add-int/lit8 v13, v13, 0x1

    goto :goto_6c

    .line 132
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v13    # "i":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v17    # "size":I
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_82
    const-wide/16 v6, 0x0

    goto :goto_29

    .line 148
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v6    # "deadline":J
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_85
    if-nez v4, :cond_ad

    .line 171
    if-nez v9, :cond_e2

    .line 172
    :try_start_89
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v8}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_c1

    .line 173
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_8e
    :try_start_8e
    throw v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    .line 176
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_8f
    move-exception v18

    move-object/from16 v19, v18

    :goto_92
    const/4 v13, 0x0

    .restart local v13    # "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    .restart local v17    # "size":I
    :goto_97
    move/from16 v0, v17

    if-ge v13, v0, :cond_e0

    .line 177
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Future;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 176
    add-int/lit8 v13, v13, 0x1

    goto :goto_97

    .line 150
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v13    # "i":I
    .end local v17    # "size":I
    .restart local v4    # "active":I
    .restart local v6    # "deadline":J
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_ad
    if-eqz p2, :cond_cd

    .line 151
    :try_start_af
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v11

    .line 152
    if-nez v11, :cond_c6

    .line 153
    new-instance v18, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v18

    .line 176
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_c1
    move-exception v18

    move-object/from16 v19, v18

    move-object v8, v9

    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_92

    .line 154
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_c6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sub-long p3, v6, v18

    goto :goto_5f

    .line 157
    :cond_cd
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v11

    goto :goto_5f

    .line 163
    :catch_d2
    move-exception v10

    .line 164
    .local v10, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v8, v10

    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v10    # "eex":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_d4
    move-object v9, v8

    .line 169
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_42

    .line 165
    :catch_d7
    move-exception v16

    .line 166
    .local v16, "rex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_df
    .catchall {:try_start_af .. :try_end_df} :catchall_c1

    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_d4

    .line 176
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v16    # "rex":Ljava/lang/RuntimeException;
    .restart local v13    # "i":I
    .restart local v17    # "size":I
    :cond_e0
    throw v19

    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v6    # "deadline":J
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_e1
    return-object v19

    .end local v13    # "i":I
    .end local v17    # "size":I
    :cond_e2
    move-object v8, v9

    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8e

    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_e4
    move-object v8, v9

    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_d4
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v10, 0x1

    .line 199
    if-nez p1, :cond_9

    .line 200
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 201
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v3, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "done":Z
    :try_start_13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Callable;

    .line 205
    .local v7, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v7}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v2

    .line 206
    .local v2, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 222
    .end local v2    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_2e
    move-exception v8

    move-object v9, v8

    if-nez v0, :cond_74

    .line 223
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_37
    if-ge v4, v6, :cond_74

    .line 224
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    invoke-interface {v8, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 209
    .end local v4    # "i":I
    .end local v6    # "size":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_45
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :try_start_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "size":I
    :goto_4a
    if-ge v4, v6, :cond_5e

    .line 210
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 211
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_2e

    move-result v8

    if-nez v8, :cond_5b

    .line 213
    :try_start_58
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_58 .. :try_end_5b} :catch_75
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_58 .. :try_end_5b} :catch_77
    .catchall {:try_start_58 .. :try_end_5b} :catchall_2e

    .line 209
    :cond_5b
    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 219
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_5e
    const/4 v0, 0x1

    .line 222
    if-nez v0, :cond_79

    .line 223
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_66
    if-ge v4, v6, :cond_79

    .line 224
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    invoke-interface {v8, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "size":I
    :cond_74
    throw v9

    .line 214
    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "size":I
    :catch_75
    move-exception v8

    goto :goto_5b

    .line 215
    :catch_77
    move-exception v8

    goto :goto_5b

    .line 223
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_79
    return-object v3
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 25
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 232
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 233
    :cond_8
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 234
    .local v12, "nanos":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v8, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v6, 0x0

    .line 237
    .local v6, "done":Z
    :try_start_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_56

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    .line 238
    .local v14, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_38

    goto :goto_20

    .line 270
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_38
    move-exception v16

    move-object/from16 v17, v16

    if-nez v6, :cond_102

    .line 271
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, "size":I
    :goto_42
    if-ge v9, v11, :cond_102

    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Future;

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 240
    .end local v9    # "i":I
    .end local v11    # "size":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_56
    :try_start_56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    add-long v4, v16, v12

    .line 241
    .local v4, "deadline":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 245
    .restart local v11    # "size":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_61
    if-ge v9, v11, :cond_96

    .line 246
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_38

    move-result-wide v16

    sub-long v12, v4, v16

    .line 248
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-gtz v16, :cond_93

    .line 270
    if-nez v6, :cond_103

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_83
    if-ge v9, v11, :cond_103

    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Future;

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    .line 245
    :cond_93
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 252
    :cond_96
    const/4 v9, 0x0

    :goto_97
    if-ge v9, v11, :cond_ea

    .line 253
    :try_start_99
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    .line 254
    .local v7, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_38

    move-result v16

    if-nez v16, :cond_cf

    .line 255
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-gtz v16, :cond_c2

    .line 270
    if-nez v6, :cond_103

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_b2
    if-ge v9, v11, :cond_103

    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Future;

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_b2

    .line 258
    :cond_c2
    :try_start_c2
    sget-object v16, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v7, v12, v13, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c2 .. :try_end_c9} :catch_106
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c2 .. :try_end_c9} :catch_104
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c2 .. :try_end_c9} :catch_d2
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_38

    .line 264
    :goto_c9
    :try_start_c9
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_38

    move-result-wide v16

    sub-long v12, v4, v16

    .line 252
    :cond_cf
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    .line 261
    :catch_d2
    move-exception v15

    .line 270
    .local v15, "toe":Ljava/util/concurrent/TimeoutException;
    if-nez v6, :cond_103

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_da
    if-ge v9, v11, :cond_103

    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Future;

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_da

    .line 267
    .end local v7    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v15    # "toe":Ljava/util/concurrent/TimeoutException;
    :cond_ea
    const/4 v6, 0x1

    .line 270
    if-nez v6, :cond_103

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_f2
    if-ge v9, v11, :cond_103

    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Future;

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_f2

    .end local v4    # "deadline":J
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "size":I
    :cond_102
    throw v17

    .restart local v4    # "deadline":J
    .restart local v9    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "size":I
    :cond_103
    return-object v8

    .line 260
    .restart local v7    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_104
    move-exception v16

    goto :goto_c9

    .line 259
    :catch_106
    move-exception v16

    goto :goto_c9
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    .line 187
    :goto_7
    return-object v1

    .line 185
    :catch_8
    move-exception v0

    .line 186
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 187
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 80
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 81
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 91
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 92
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 102
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 103
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-object v0
.end method
