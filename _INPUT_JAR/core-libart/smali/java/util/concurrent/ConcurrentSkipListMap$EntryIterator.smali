.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$Iter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap",
        "<TK;TV;>.Iter<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentSkipListMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .registers 2

    .prologue
    .line 2237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->this$0:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$Iter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2239
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 2240
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 2241
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntryIterator;->advance()V

    .line 2242
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
