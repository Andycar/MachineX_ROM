.class Landroid/util/ArrayMap$1;
.super Landroid/util/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2

    .prologue
    .line 771
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iput-object p1, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    .prologue
    .line 814
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 815
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 779
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .registers 2

    .prologue
    .line 774
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 784
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 789
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 809
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 810
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
