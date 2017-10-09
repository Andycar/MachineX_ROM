.class public Lcom/android/server/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V
    .registers 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p3, "syncAdapters"    # Landroid/content/SyncAdaptersCache;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    iput-object p2, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 57
    iput-object p3, p0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 58
    return-void
.end method

.method private add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 13
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "pop"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 124
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 125
    .local v4, "operationKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 127
    .local v1, "existingOperation":Lcom/android/server/content/SyncOperation;
    if-eqz v1, :cond_23

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "changed":Z
    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncOperation;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_22

    .line 130
    iget-wide v6, v1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v8, p1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 133
    .local v2, "newRunTime":J
    iput-wide v2, v1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 135
    iget-wide v6, p1, Lcom/android/server/content/SyncOperation;->flexTime:J

    iput-wide v6, v1, Lcom/android/server/content/SyncOperation;->flexTime:J

    .line 136
    const/4 v0, 0x1

    .line 154
    .end local v0    # "changed":Z
    .end local v2    # "newRunTime":J
    :cond_22
    :goto_22
    return v0

    .line 141
    :cond_23
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 144
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    if-nez v5, :cond_4c

    .line 145
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine;->insertIntoPending(Lcom/android/server/content/SyncOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    .line 146
    if-nez p2, :cond_4a

    .line 147
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error adding pending sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_4a
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 153
    :cond_4c
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    goto :goto_22
.end method


# virtual methods
.method public add(Lcom/android/server/content/SyncOperation;)Z
    .registers 3
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public addPendingOperations(I)V
    .registers 26
    .param p1, "userId"    # I

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 62
    .local v22, "op":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v21, v0

    .line 63
    .local v21, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_c

    .line 65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 67
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v4, :cond_d6

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v5

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v23

    .line 70
    .local v23, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v23, :cond_78

    .line 71
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 72
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing sync adapter info for authority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 76
    :cond_78
    new-instance v3, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v0, v22

    iget-boolean v10, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    if-eqz v10, :cond_d0

    const-wide/16 v10, -0x1

    :goto_9a
    const-wide/16 v12, 0x0

    if-eqz v2, :cond_d3

    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/SyncAdapterType;

    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v18

    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    .line 84
    .local v3, "operationToAdd":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v22

    iput-object v0, v3, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_c

    .line 76
    .end local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    :cond_d0
    const-wide/16 v10, 0x0

    goto :goto_9a

    :cond_d3
    const-wide/16 v14, 0x0

    goto :goto_a6

    .line 86
    .end local v23    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_d6
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v4, :cond_c

    .line 88
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dc .. :try_end_e8} :catch_12c

    .line 95
    new-instance v3, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v0, v22

    iget-boolean v9, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    if-eqz v9, :cond_154

    const-wide/16 v9, -0x1

    :goto_106
    const-wide/16 v11, 0x0

    if-eqz v2, :cond_157

    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :goto_112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v15

    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    .line 102
    .restart local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v22

    iput-object v0, v3, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_c

    .line 89
    .end local v3    # "operationToAdd":Lcom/android/server/content/SyncOperation;
    :catch_12c
    move-exception v19

    .line 90
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 91
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing sync service for authority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 95
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_154
    const-wide/16 v9, 0x0

    goto :goto_106

    :cond_157
    const-wide/16 v13, 0x0

    goto :goto_112

    .line 106
    .end local v2    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v21    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v22    # "op":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_15a
    return-void
.end method

.method public clearBackoffs()V
    .registers 5

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 194
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/content/SyncOperation;->backoff:J

    .line 195
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_a

    .line 197
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1e
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 259
    .local v2, "now":J
    const-string v4, "SyncQueue: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operation(s)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 261
    .local v1, "operation":Lcom/android/server/content/SyncOperation;
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-wide v4, v1, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_55

    .line 263
    const-string v4, "READY"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_3f
    const-string v4, " - "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 265
    :cond_55
    iget-wide v4, v1, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 270
    .end local v1    # "operation":Lcom/android/server/content/SyncOperation;
    :cond_63
    return-void
.end method

.method public getOperations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onBackoffChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 8
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "backoff"    # J

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 203
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 204
    iput-wide p2, v1, Lcom/android/server/content/SyncOperation;->backoff:J

    .line 205
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_a

    .line 208
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_24
    return-void
.end method

.method public onDelayUntilTimeChanged(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 8
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 213
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 214
    iput-wide p2, v1, Lcom/android/server/content/SyncOperation;->delayUntil:J

    .line 215
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_a

    .line 218
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_24
    return-void
.end method

.method public remove(Lcom/android/server/content/SyncOperation;)V
    .registers 8
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 174
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 175
    .local v1, "isLoggable":Z
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 176
    .local v2, "operationToRemove":Lcom/android/server/content/SyncOperation;
    if-eqz v1, :cond_2d

    .line 177
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2d
    if-nez v2, :cond_4c

    .line 180
    if-eqz v1, :cond_4b

    .line 181
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4b
    :goto_4b
    return-void

    .line 185
    :cond_4c
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find pending row for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public remove(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 230
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 233
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 234
    .local v4, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 235
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 238
    if-eqz p2, :cond_2f

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 245
    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 246
    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v6, v4, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to find pending row for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 251
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/content/SyncOperation;>;"
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v4    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_5b
    return-void
.end method

.method public removeUserLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "opsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 160
    .local v1, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_f

    .line 161
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 164
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 165
    .restart local v1    # "op":Lcom/android/server/content/SyncOperation;
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    goto :goto_29

    .line 167
    .end local v1    # "op":Lcom/android/server/content/SyncOperation;
    :cond_39
    return-void
.end method
