.class final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# static fields
.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .registers 7
    .param p1, "windowId"    # I

    .prologue
    .line 277
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 278
    .local v3, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v3, :cond_b

    .line 289
    :goto_a
    return-void

    .line 282
    :cond_b
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 283
    .local v2, "nodeCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_22

    .line 284
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 285
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 286
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 288
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_22
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a
.end method

.method private clearSubTreeLocked(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .prologue
    .line 302
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 303
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_d

    .line 304
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 306
    :cond_d
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .registers 10
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 318
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_9

    .line 327
    :cond_8
    return-void

    .line 321
    :cond_9
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 322
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 323
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v0, :cond_8

    .line 324
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 325
    .local v2, "childNodeId":J
    invoke-direct {p0, p1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_11
.end method

.method private refreshCachedNodeLocked(IJ)V
    .registers 8
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .prologue
    .line 119
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 120
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_b

    .line 134
    :cond_a
    :goto_a
    return-void

    .line 123
    :cond_b
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 125
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_a

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_a
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 22
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 210
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v14

    .line 211
    .local v14, "windowId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 212
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_23

    .line 213
    new-instance v5, Landroid/util/LongSparseArray;

    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 214
    .restart local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    .line 218
    .local v12, "sourceId":J
    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 219
    .local v7, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_5f

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    .line 226
    .local v4, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 227
    .local v6, "oldChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    if-ge v3, v6, :cond_4e

    .line 228
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 230
    .local v8, "oldChildId":J
    if-eqz v4, :cond_46

    invoke-virtual {v4, v8, v9}, Landroid/util/LongArray;->indexOf(J)I

    move-result v15

    if-gez v15, :cond_4b

    .line 231
    :cond_46
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 227
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 238
    .end local v8    # "oldChildId":J
    :cond_4e
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    .line 239
    .local v10, "oldParentId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v18

    cmp-long v15, v18, v10

    if-eqz v15, :cond_5f

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 246
    .end local v3    # "i":I
    .end local v4    # "newChildrenIds":Landroid/util/LongArray;
    .end local v6    # "oldChildCount":I
    .end local v10    # "oldParentId":J
    :cond_5f
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 247
    .local v2, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 248
    monitor-exit v16

    .line 249
    return-void

    .line 248
    .end local v2    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "sourceId":J
    .end local v14    # "windowId":I
    :catchall_68
    move-exception v15

    monitor-exit v16
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_68

    throw v15
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 7
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 53
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 58
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 59
    .local v0, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_14

    .line 60
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 62
    :cond_14
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    monitor-exit v3

    .line 64
    return-void

    .line 63
    .end local v0    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "windowId":I
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public checkIntegrity()V
    .registers 27

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 339
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    if-nez v22, :cond_21

    .line 340
    monitor-exit v23

    .line 448
    :goto_20
    return-void

    .line 343
    :cond_21
    const/4 v7, 0x0

    .line 344
    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 346
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 347
    .local v20, "windowCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    move/from16 v0, v20

    if-ge v8, v0, :cond_99

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 351
    .local v19, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v22

    if-eqz v22, :cond_68

    .line 352
    if-eqz v3, :cond_93

    .line 353
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate active window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_68
    :goto_68
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_90

    .line 361
    if-eqz v7, :cond_96

    .line 362
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate focused window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_90
    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 355
    :cond_93
    move-object/from16 v3, v19

    goto :goto_68

    .line 364
    :cond_96
    move-object/from16 v7, v19

    goto :goto_90

    .line 370
    .end local v19    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_99
    const/4 v2, 0x0

    .line 371
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v9, 0x0

    .line 373
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 374
    .local v16, "nodesForWindowCount":I
    const/4 v8, 0x0

    :goto_a6
    move/from16 v0, v16

    if-ge v8, v0, :cond_22b

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/LongSparseArray;

    .line 376
    .local v15, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v22

    if-gtz v22, :cond_c1

    .line 374
    :cond_be
    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    .line 380
    :cond_c1
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 381
    .local v18, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 383
    .local v21, "windowId":I
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 384
    .local v13, "nodeCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_d7
    if-ge v10, v13, :cond_be

    .line 385
    invoke-virtual {v15, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 388
    .local v12, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_116

    .line 389
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate node: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_113
    add-int/lit8 v10, v10, 0x1

    goto :goto_d7

    .line 396
    :cond_116
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v22

    if-eqz v22, :cond_14a

    .line 397
    if-eqz v2, :cond_221

    .line 398
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate accessibility focus:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_14a
    :goto_14a
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_17e

    .line 407
    if-eqz v9, :cond_224

    .line 408
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate input focus: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " in window:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_17e
    :goto_17e
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 417
    .local v14, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v14, :cond_1cf

    .line 418
    const/4 v6, 0x0

    .line 419
    .local v6, "childOfItsParent":Z
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 420
    .local v5, "childCount":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_192
    if-ge v11, v5, :cond_1a3

    .line 421
    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 422
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v4, v12, :cond_227

    .line 423
    const/4 v6, 0x1

    .line 427
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1a3
    if-nez v6, :cond_1cf

    .line 428
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid parent-child relation between parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v11    # "k":I
    :cond_1cf
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 435
    .restart local v5    # "childCount":I
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_1d4
    if-ge v11, v5, :cond_113

    .line 436
    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 437
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_21e

    .line 438
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 439
    .local v17, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v17

    if-eq v0, v12, :cond_21e

    .line 440
    const-string v22, "AccessibilityCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid child-parent relation between child: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and parent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v17    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_21e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d4

    .line 401
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v11    # "k":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_221
    move-object v2, v12

    goto/16 :goto_14a

    .line 411
    :cond_224
    move-object v9, v12

    goto/16 :goto_17e

    .line 420
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "childCount":I
    .restart local v6    # "childOfItsParent":Z
    .restart local v11    # "k":I
    .restart local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_227
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_192

    .line 447
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v12    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "nodeCount":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v21    # "windowId":I
    :cond_22b
    monitor-exit v23

    goto/16 :goto_20

    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v8    # "i":I
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "nodesForWindowCount":I
    .end local v20    # "windowCount":I
    :catchall_22e
    move-exception v22

    monitor-exit v23
    :try_end_230
    .catchall {:try_start_7 .. :try_end_230} :catchall_22e

    throw v22
.end method

.method public clear()V
    .registers 8

    .prologue
    .line 255
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 259
    :try_start_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 260
    .local v3, "windowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_20

    .line 261
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 262
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 263
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 260
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 265
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_20
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 266
    .local v1, "nodesForWindowCount":I
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v1, :cond_35

    .line 267
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 268
    .local v4, "windowId":I
    invoke-direct {p0, v4}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 270
    .end local v4    # "windowId":I
    :cond_35
    monitor-exit v6

    .line 271
    return-void

    .line 270
    .end local v0    # "i":I
    .end local v1    # "nodesForWindowCount":I
    .end local v3    # "windowCount":I
    :catchall_37
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v5
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .prologue
    .line 145
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 147
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_10

    .line 148
    const/4 v0, 0x0

    monitor-exit v3

    .line 159
    :goto_f
    return-object v0

    .line 150
    :cond_10
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 151
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1c

    .line 154
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 159
    :cond_1c
    monitor-exit v3

    goto :goto_f

    .line 160
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    .line 190
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 192
    .local v0, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_13

    .line 193
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    monitor-exit v2

    .line 195
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_12

    .line 196
    .end local v0    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 165
    :try_start_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 166
    .local v3, "windowCount":I
    if-lez v3, :cond_43

    .line 168
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 169
    .local v1, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v3, :cond_25

    .line 172
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 173
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 176
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v0, v3, -0x1

    :goto_2c
    if-ltz v0, :cond_41

    .line 178
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 179
    .restart local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 183
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_41
    monitor-exit v6

    .line 185
    .end local v0    # "i":I
    .end local v1    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :goto_42
    return-object v4

    :cond_43
    const/4 v4, 0x0

    monitor-exit v6

    goto :goto_42

    .line 186
    .end local v3    # "windowCount":I
    :catchall_46
    move-exception v5

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v5
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 73
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 74
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 75
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_52

    .line 107
    :goto_a
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 109
    sget-boolean v4, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v4, :cond_12

    .line 110
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 112
    :cond_12
    return-void

    .line 82
    :sswitch_13
    :try_start_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_a

    .line 107
    .end local v0    # "eventType":I
    :catchall_1f
    move-exception v4

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1f

    throw v4

    .line 86
    .restart local v0    # "eventType":I
    :sswitch_22
    :try_start_22
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 87
    :try_start_25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    .line 88
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    .line 89
    .local v2, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3d

    .line 91
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 95
    :goto_38
    monitor-exit v6

    goto :goto_a

    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :catchall_3a
    move-exception v4

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1f

    .line 93
    .restart local v1    # "windowId":I
    .restart local v2    # "sourceId":J
    :cond_3d
    :try_start_3d
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    goto :goto_38

    .line 99
    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :sswitch_41
    :try_start_41
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_a

    .line 104
    :sswitch_4d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_1f

    goto :goto_a

    .line 75
    nop

    :sswitch_data_52
    .sparse-switch
        0x4 -> :sswitch_13
        0x8 -> :sswitch_13
        0x10 -> :sswitch_13
        0x20 -> :sswitch_4d
        0x800 -> :sswitch_22
        0x1000 -> :sswitch_41
        0x2000 -> :sswitch_13
        0x8000 -> :sswitch_13
        0x10000 -> :sswitch_13
        0x400000 -> :sswitch_4d
    .end sparse-switch
.end method
