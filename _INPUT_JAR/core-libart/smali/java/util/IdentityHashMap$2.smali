.class Ljava/util/IdentityHashMap$2;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;)V
    .registers 2

    .prologue
    .line 672
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 685
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 686
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 675
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    new-instance v1, Ljava/util/IdentityHashMap$2$1;

    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$2$1;-><init>(Ljava/util/IdentityHashMap$2;)V

    iget-object v2, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 700
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 701
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 703
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 704
    const/4 v1, 0x1

    .line 707
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public size()I
    .registers 2

    .prologue
    .line 680
    .local p0, "this":Ljava/util/IdentityHashMap$2;, "Ljava/util/IdentityHashMap.2;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$2;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    return v0
.end method
