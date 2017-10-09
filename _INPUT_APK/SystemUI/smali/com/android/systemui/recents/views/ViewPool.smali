.class public Lcom/android/systemui/recents/views/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TV;>;"
        }
    .end annotation
.end field

.field mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
            "<TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p2, "viewCreator":Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;, "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    .line 44
    return-void
.end method


# virtual methods
.method pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TV;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p1, "preferredData":Ljava/lang/Object;, "TT;"
    .local p2, "prepareData":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 55
    .local v2, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 56
    .local v0, "isNewView":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    iget-object v5, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->createView(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    const/4 v0, 0x1

    .line 75
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v4, v2, p2, v0}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 76
    return-object v2

    .line 61
    .restart local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "vpv":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v4, v3, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    move-object v2, v3

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 71
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v3    # "vpv":Ljava/lang/Object;, "TV;"
    :cond_3
    if-nez v2, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method returnViewToPool(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->prepareViewToEnterPool(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
