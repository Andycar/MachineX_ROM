.class public Landroid/content/UndoManager;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UndoManager$UndoState;
    }
.end annotation


# static fields
.field public static final MERGE_MODE_ANY:I = 0x2

.field public static final MERGE_MODE_NONE:I = 0x0

.field public static final MERGE_MODE_UNIQUE:I = 0x1


# instance fields
.field private mCommitId:I

.field private mHistorySize:I

.field private mInUndo:Z

.field private mMerged:Z

.field private mNextSavedIdx:I

.field private final mOwners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/UndoOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mStateOwners:[Landroid/content/UndoOwner;

.field private mStateSeq:I

.field private final mUndos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I

.field private mWorking:Landroid/content/UndoManager$UndoState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mOwners:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0x14

    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 734
    return-void
.end method

.method private createWorkingState()V
    .registers 4

    .prologue
    .line 419
    new-instance v0, Landroid/content/UndoManager$UndoState;

    iget v1, p0, Landroid/content/UndoManager;->mCommitId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/UndoManager;->mCommitId:I

    invoke-direct {v0, p0, v1}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 420
    iget v0, p0, Landroid/content/UndoManager;->mCommitId:I

    if-gez v0, :cond_14

    .line 421
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 423
    :cond_14
    return-void
.end method

.method private pushWorkingState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 579
    .local v0, "N":I
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 580
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 582
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->commit()V

    .line 583
    const/4 v1, 0x2

    if-lt v0, v1, :cond_31

    .line 587
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    .line 592
    :cond_31
    :goto_31
    iput-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 594
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v1, :cond_42

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_42

    .line 595
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v3, v1}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 597
    :cond_42
    return-void

    .line 590
    :cond_43
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->destroy()V

    goto :goto_31
.end method


# virtual methods
.method public addOperation(Landroid/content/UndoOperation;I)V
    .registers 7
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_c

    .line 541
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    :cond_c
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    .line 544
    .local v0, "owner":Landroid/content/UndoOwner;
    iget-object v2, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    if-eq v2, p0, :cond_1c

    .line 545
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given operation\'s owner is not in this undo manager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_1c
    if-eqz p2, :cond_59

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    if-nez v2, :cond_59

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-nez v2, :cond_59

    .line 549
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 550
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_59

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3a

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    if-nez v2, :cond_59

    :cond_3a
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 552
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 553
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 554
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 558
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_59
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->addOperation(Landroid/content/UndoOperation;)V

    .line 559
    return-void
.end method

.method public beginUpdate(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    if-eqz v0, :cond_d

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t being update while performing undo/redo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_d
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_18

    .line 409
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 410
    iput-boolean v1, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 411
    iput v1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 414
    :cond_18
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 415
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 416
    return-void
.end method

.method public commitState(Landroid/content/UndoOwner;)I
    .registers 6
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    const/4 v3, 0x0

    .line 614
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 615
    if-eqz p1, :cond_17

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 616
    :cond_17
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 617
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v0

    .line 618
    .local v0, "commitId":I
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 619
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 620
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 630
    .end local v0    # "commitId":I
    :goto_2b
    return v0

    .line 624
    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 625
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_43

    if-eqz p1, :cond_3b

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 626
    :cond_3b
    invoke-virtual {v1, v3}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 627
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v0

    goto :goto_2b

    .line 630
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_43
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method public countRedos([Landroid/content/UndoOwner;)I
    .registers 5
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 366
    if-nez p1, :cond_9

    .line 367
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 376
    :cond_8
    return v0

    .line 370
    :cond_9
    const/4 v0, 0x0

    .line 371
    .local v0, "count":I
    const/4 v1, 0x0

    .line 372
    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_8

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public countUndos([Landroid/content/UndoOwner;)I
    .registers 5
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 347
    if-nez p1, :cond_9

    .line 348
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 357
    :cond_8
    return v0

    .line 351
    :cond_9
    const/4 v0, 0x0

    .line 352
    .local v0, "count":I
    const/4 v1, 0x0

    .line 353
    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v1}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v1

    if-ltz v1, :cond_8

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public endUpdate()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_c

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_c
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 571
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-nez v0, :cond_19

    .line 572
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 574
    :cond_19
    return-void
.end method

.method findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .registers 8
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v2, -0x1

    .line 711
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    .local v0, "N":I
    if-gez p3, :cond_8

    .line 714
    const/4 p3, 0x0

    .line 716
    :cond_8
    if-lt p3, v0, :cond_b

    .line 731
    :cond_a
    :goto_a
    return v2

    .line 719
    :cond_b
    if-nez p2, :cond_11

    move v2, p3

    .line 720
    goto :goto_a

    .line 728
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_f
    add-int/lit8 p3, p3, 0x1

    .line 723
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_11
    if-ge p3, v0, :cond_a

    .line 724
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    .line 725
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v2, p3

    .line 726
    goto :goto_a
.end method

.method findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .registers 8
    .param p2, "owners"    # [Landroid/content/UndoOwner;
    .param p3, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UndoManager$UndoState;>;"
    const/4 v2, -0x1

    .line 687
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 689
    .local v0, "N":I
    if-ne p3, v2, :cond_9

    .line 690
    add-int/lit8 p3, v0, -0x1

    .line 692
    :cond_9
    if-lt p3, v0, :cond_c

    .line 707
    :cond_b
    :goto_b
    return v2

    .line 695
    :cond_c
    if-nez p2, :cond_12

    move v2, p3

    .line 696
    goto :goto_b

    .line 704
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    :cond_10
    add-int/lit8 p3, p3, -0x1

    .line 699
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :cond_12
    if-ltz p3, :cond_b

    .line 700
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    .line 701
    .restart local v1    # "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {p0, v1, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v2, p3

    .line 702
    goto :goto_b
.end method

.method public forgetRedos([Landroid/content/UndoOwner;I)I
    .registers 7
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 324
    if-gez p2, :cond_8

    .line 325
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 328
    :cond_8
    const/4 v1, 0x0

    .line 329
    .local v1, "removed":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    if-ge v1, p2, :cond_31

    .line 330
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 331
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_2e

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 332
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 333
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 329
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 338
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_31
    return v1
.end method

.method public forgetUndos([Landroid/content/UndoOwner;I)I
    .registers 7
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 306
    if-gez p2, :cond_8

    .line 307
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 310
    :cond_8
    const/4 v1, 0x0

    .line 311
    .local v1, "removed":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    if-ge v1, p2, :cond_31

    .line 312
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 313
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    if-lez p2, :cond_2e

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 314
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 315
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 311
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 320
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_31
    return v1
.end method

.method public getHistorySize()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    return v0
.end method

.method public getLastOperation(I)Landroid/content/UndoOperation;
    .registers 3
    .param p1, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0, v0, p1}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .registers 4
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOwner;",
            "I)",
            "Landroid/content/UndoOperation",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    return-object v0
.end method

.method public getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .registers 8
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .param p3, "mergeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v2, :cond_c

    .line 513
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must be called during an update"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_c
    if-eqz p3, :cond_4c

    iget-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    if-nez v2, :cond_4c

    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 516
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v1

    .line 518
    .local v1, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v1, :cond_4c

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2a

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_2a
    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v0

    .local v0, "last":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz v0, :cond_4c

    .line 520
    invoke-virtual {v0}, Landroid/content/UndoOperation;->allowMerge()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 521
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 522
    iput-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 523
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 530
    .end local v0    # "last":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    .end local v1    # "state":Landroid/content/UndoManager$UndoState;
    :goto_4b
    return-object v0

    :cond_4c
    iget-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v2, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object v0

    goto :goto_4b
.end method

.method public getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-nez p1, :cond_b

    .line 89
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "tag can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_b
    if-nez p2, :cond_15

    .line 92
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "data can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_15
    iget-object v2, p0, Landroid/content/UndoManager;->mOwners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UndoOwner;

    .line 95
    .local v0, "owner":Landroid/content/UndoOwner;
    if-eqz v0, :cond_5a

    .line 96
    iget-object v2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eq v2, p2, :cond_58

    .line 97
    iget-object v2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eqz v2, :cond_56

    .line 98
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists with data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but giving different data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_56
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    :cond_58
    move-object v1, v0

    .line 110
    .end local v0    # "owner":Landroid/content/UndoOwner;
    .local v1, "owner":Ljava/lang/Object;
    :goto_59
    return-object v1

    .line 106
    .end local v1    # "owner":Ljava/lang/Object;
    .restart local v0    # "owner":Landroid/content/UndoOwner;
    :cond_5a
    new-instance v0, Landroid/content/UndoOwner;

    .end local v0    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v0, p1}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v0    # "owner":Landroid/content/UndoOwner;
    iput-object p0, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    .line 108
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    .line 109
    iget-object v2, p0, Landroid/content/UndoManager;->mOwners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 110
    .restart local v1    # "owner":Ljava/lang/Object;
    goto :goto_59
.end method

.method public getRedoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 396
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .registers 6
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a

    .line 671
    :cond_9
    :goto_9
    return-object v1

    .line 670
    :cond_a
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    .line 671
    .local v0, "i":I
    if-ltz v0, :cond_9

    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    goto :goto_9
.end method

.method getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .registers 6
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a

    .line 663
    :cond_9
    :goto_9
    return-object v1

    .line 662
    :cond_a
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    .line 663
    .local v0, "i":I
    if-ltz v0, :cond_9

    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    goto :goto_9
.end method

.method public getUndoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 386
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getUpdateNestingLevel()I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    return v0
.end method

.method public hasOperation(Landroid/content/UndoOwner;)Z
    .registers 4
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 471
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_c

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_c
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v0

    return v0
.end method

.method public isInUndo()Z
    .registers 2

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v0
.end method

.method public isInUpdate()Z
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z
    .registers 6
    .param p1, "state"    # Landroid/content/UndoManager$UndoState;
    .param p2, "owners"    # [Landroid/content/UndoOwner;

    .prologue
    const/4 v1, 0x1

    .line 675
    if-nez p2, :cond_4

    .line 683
    :cond_3
    :goto_3
    return v1

    .line 678
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, p2

    if-ge v0, v2, :cond_13

    .line 679
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Landroid/content/UndoManager$UndoState;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 683
    :cond_13
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public redo([Landroid/content/UndoOwner;I)I
    .registers 8
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 274
    iget-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v3, :cond_c

    .line 275
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t be called during an update"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_c
    const/4 v1, 0x0

    .line 279
    .local v1, "num":I
    const/4 v0, -0x1

    .line 281
    .local v0, "i":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 283
    :goto_11
    if-lez p2, :cond_30

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_30

    .line 284
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 285
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->redo()V

    .line 286
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 p2, p2, -0x1

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 289
    goto :goto_11

    .line 291
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_30
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 293
    return v1
.end method

.method removeOwner(Landroid/content/UndoOwner;)V
    .registers 2
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 119
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 177
    iget v4, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v4, :cond_f

    .line 178
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t save state while updating"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_f
    invoke-virtual {p0, v7, v5}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 181
    invoke-virtual {p0, v7, v5}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    move-object v1, p1

    .line 182
    check-cast v1, Landroid/os/ParcelableParcel;

    .line 183
    .local v1, "pp":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-array v4, v4, [Landroid/content/UndoOwner;

    iput-object v4, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    .line 188
    :goto_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "stype":I
    if-eqz v2, :cond_48

    .line 189
    new-instance v3, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, p0, v0, v4}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 190
    .local v3, "ustate":Landroid/content/UndoManager$UndoState;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_42

    .line 191
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2a

    .line 193
    :cond_42
    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2a

    .line 196
    .end local v3    # "ustate":Landroid/content/UndoManager$UndoState;
    :cond_48
    return-void
.end method

.method restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, "idx":I
    iget-object v3, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aget-object v1, v3, v0

    .line 201
    .local v1, "owner":Landroid/content/UndoOwner;
    if-nez v1, :cond_1c

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/content/UndoOwner;

    .end local v1    # "owner":Landroid/content/UndoOwner;
    invoke-direct {v1, v2}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v1    # "owner":Landroid/content/UndoOwner;
    iget-object v3, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aput-object v1, v3, v0

    .line 205
    iget-object v3, p0, Landroid/content/UndoManager;->mOwners:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v2    # "tag":Ljava/lang/String;
    :cond_1c
    return-object v1
.end method

.method public saveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 126
    iget v3, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v3, :cond_d

    .line 127
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t save state while updating"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_d
    new-instance v2, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 130
    .local v2, "pp":Landroid/os/ParcelableParcel;
    invoke-virtual {v2}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 131
    .local v1, "p":Landroid/os/Parcel;
    iget v3, p0, Landroid/content/UndoManager;->mStateSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 132
    iget v3, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-gtz v3, :cond_2a

    .line 133
    iput v4, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 135
    :cond_2a
    iput v4, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    .line 136
    iget v3, p0, Landroid/content/UndoManager;->mHistorySize:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v3, p0, Landroid/content/UndoManager;->mOwners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 141
    .local v0, "i":I
    :goto_40
    if-lez v0, :cond_54

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    add-int/lit8 v0, v0, -0x1

    .line 144
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v3, v1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_40

    .line 146
    :cond_54
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_5d
    if-lez v0, :cond_71

    .line 149
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 151
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v3, v1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_5d

    .line 153
    :cond_71
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-object v2
.end method

.method saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "owner"    # Landroid/content/UndoOwner;
    .param p2, "out"    # Landroid/os/Parcel;

    .prologue
    .line 158
    iget v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-ne v0, v1, :cond_c

    .line 159
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    :goto_b
    return-void

    .line 161
    :cond_c
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    iput v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    .line 162
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    iput v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    .line 163
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p1, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    goto :goto_b
.end method

.method public setHistorySize(I)V
    .registers 5
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 214
    iput p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 215
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v0, :cond_19

    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_19

    .line 216
    invoke-virtual {p0, v2}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 218
    :cond_19
    return-void
.end method

.method public setUndoLabel(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_c

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_c
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->setLabel(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public suggestUndoLabel(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_c

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_c
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method

.method public uncommitState(ILandroid/content/UndoOwner;)Z
    .registers 6
    .param p1, "commitId"    # I
    .param p2, "owner"    # Landroid/content/UndoOwner;

    .prologue
    const/4 v2, 0x1

    .line 643
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_1e

    .line 644
    if-eqz p2, :cond_17

    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 645
    :cond_17
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v2}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    .line 655
    :goto_1d
    return v1

    .line 648
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 649
    .local v0, "state":Landroid/content/UndoManager$UndoState;
    if-eqz v0, :cond_38

    if-eqz p2, :cond_2d

    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 650
    :cond_2d
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v1

    if-ne v1, p1, :cond_38

    .line 651
    invoke-virtual {v0, v2}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result v1

    goto :goto_1d

    .line 655
    .end local v0    # "state":Landroid/content/UndoManager$UndoState;
    :cond_38
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public undo([Landroid/content/UndoOwner;I)I
    .registers 9
    .param p1, "owners"    # [Landroid/content/UndoOwner;
    .param p2, "count"    # I

    .prologue
    .line 237
    iget-object v4, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v4, :cond_c

    .line 238
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t be called during an update"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_c
    const/4 v1, 0x0

    .line 242
    .local v1, "num":I
    const/4 v0, -0x1

    .line 244
    .local v0, "i":I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 246
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v3

    .line 247
    .local v3, "us":Landroid/content/UndoManager$UndoState;
    if-eqz v3, :cond_1b

    .line 248
    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    .line 251
    :cond_1b
    :goto_1b
    if-lez p2, :cond_3a

    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_3a

    .line 252
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 253
    .local v2, "state":Landroid/content/UndoManager$UndoState;
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->undo()V

    .line 254
    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 p2, p2, -0x1

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 257
    goto :goto_1b

    .line 259
    .end local v2    # "state":Landroid/content/UndoManager$UndoState;
    :cond_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 261
    return v1
.end method
