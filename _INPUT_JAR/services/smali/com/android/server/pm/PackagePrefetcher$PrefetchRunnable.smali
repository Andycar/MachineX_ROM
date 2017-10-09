.class Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackagePrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackagePrefetcher;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p2, "x1"    # Lcom/android/server/pm/PackagePrefetcher$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    return-void
.end method


# virtual methods
.method public doPrefetch(Ljava/lang/String;I)V
    .registers 28
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "parseFlags"    # I

    .prologue
    .line 200
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v9, "file":Ljava/io/File;
    new-instance v19, Landroid/content/pm/PackageParser;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/PackageParser;-><init>()V

    .line 203
    .local v19, "pp":Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 206
    .local v18, "pkg":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, p2

    # invokes: Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackagePrefetcher;->access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v15

    .line 208
    .local v15, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_124

    .line 209
    :try_start_42
    const-string v21, "PackagePrefetcher"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "put: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-nez v15, :cond_71

    .line 211
    const-string v21, "PackagePrefetcher"

    const-string/jumbo v23, "pPkg is null"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v22
    :try_end_83
    .catchall {:try_start_42 .. :try_end_83} :catchall_121

    .line 217
    if-eqz v15, :cond_16b

    .line 219
    :try_start_85
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerService;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "instructionSets":[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/pm/PackageManagerService;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v17

    .line 222
    .local v17, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v7

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_9b
    if-ge v11, v13, :cond_16b

    aget-object v6, v4, v11

    .line 223
    .local v6, "dexCodeInstructionSet":Ljava/lang/String;
    const/4 v14, 0x1

    .line 224
    .local v14, "noNeed":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :cond_a4
    :goto_a4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b0} :catch_124

    .line 226
    .local v16, "path":Ljava/lang/String;
    :try_start_b0
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2}, Ldalvik/system/DexFile;->isDexOptNeededInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)B

    move-result v5

    .line 229
    .local v5, "b":B
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    .line 231
    .local v20, "ps":Lcom/android/server/pm/PackageSetting;
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v5, v0, :cond_ec

    .line 232
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    .line 234
    if-eqz v20, :cond_ec

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    .line 236
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->dexMode:I

    .line 241
    :cond_ec
    if-nez v5, :cond_102

    .line 243
    if-eqz v20, :cond_102

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    .line 245
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->dexMode:I
    :try_end_102
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_102} :catch_16c
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_102} :catch_18c
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_102} :catch_1b0

    .line 249
    :cond_102
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v5, v0, :cond_10e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_a4

    .line 250
    :cond_10e
    const/4 v14, 0x0

    .line 264
    .end local v5    # "b":B
    .end local v16    # "path":Ljava/lang/String;
    .end local v20    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_10f
    if-eqz v14, :cond_11c

    .line 265
    :try_start_111
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11c} :catch_124

    .line 222
    :cond_11c
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_9b

    .line 215
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v7    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "instructionSets":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v14    # "noNeed":Z
    .end local v17    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_121
    move-exception v21

    :try_start_122
    monitor-exit v22
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    :try_start_123
    throw v21
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_124} :catch_124

    .line 270
    .end local v9    # "file":Ljava/io/File;
    .end local v15    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "pp":Landroid/content/pm/PackageParser;
    :catch_124
    move-exception v8

    .line 271
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v21, :cond_16b

    .line 272
    const-string v21, "PackagePrefetcher"

    const-string v22, "PREFETCH"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception while prefetch: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v21, "PackagePrefetcher"

    const-string v22, "PREFETCH"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "give up prefetch : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_16b
    return-void

    .line 253
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v7    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    .local v10, "i$":Ljava/util/Iterator;
    .restart local v12    # "instructionSets":[Ljava/lang/String;
    .restart local v13    # "len$":I
    .restart local v14    # "noNeed":Z
    .restart local v15    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "pp":Landroid/content/pm/PackageParser;
    :catch_16c
    move-exception v8

    .line 254
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_16d
    const-string v21, "PackagePrefetcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Apk not found for dexopt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v14, 0x0

    .line 262
    goto/16 :goto_a4

    .line 256
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_18c
    move-exception v8

    .line 257
    .local v8, "e":Ljava/io/IOException;
    const-string v21, "PackagePrefetcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IOException reading apk: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v14, 0x0

    .line 262
    goto/16 :goto_a4

    .line 259
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1b0
    move-exception v8

    .line 260
    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "PackagePrefetcher"

    const-string v22, "Exception when doing dexopt : "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_1bc} :catch_124

    .line 261
    const/4 v14, 0x0

    goto/16 :goto_a4
.end method

.method public run()V
    .registers 4

    .prologue
    .line 188
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 189
    iget-object v1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 190
    .local v0, "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2e

    .line 191
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->doPrefetch(Ljava/lang/String;I)V

    goto :goto_0

    .line 193
    :cond_2e
    const-string v1, "PackagePrefetcher"

    const-string v2, "Entry is null prefetch wiil finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v0    # "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_36
    return-void
.end method
