.class final Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap;)V
    .registers 2

    .prologue
    .line 1501
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    const/4 v1, 0x0

    .line 1519
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 1523
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 1522
    check-cast v0, Ljava/util/Map$Entry;

    .line 1523
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v2, v2, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1507
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1511
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    # invokes: Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;
    invoke-static {v1, v2}, Ljava/util/TreeMap$BoundedMap;->access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;Ljava/util/TreeMap$Node;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    const/4 v1, 0x0

    .line 1527
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 1531
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 1530
    check-cast v0, Ljava/util/Map$Entry;

    .line 1531
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    # invokes: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v2, v2, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1503
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->size()I

    move-result v0

    return v0
.end method
