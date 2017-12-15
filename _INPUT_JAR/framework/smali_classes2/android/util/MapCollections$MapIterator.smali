.class final Landroid/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .registers 3

    .prologue
    .line 78
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iput-object p1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 79
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 81
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-boolean v3, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_e

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This container does not support retaining Map.Entry objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_e
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_13

    .line 143
    :goto_12
    return v2

    :cond_13
    move-object v0, p1

    .line 142
    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v5, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v5, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    :goto_3a
    move v2, v1

    goto :goto_12

    :cond_3c
    move v1, v2

    goto :goto_3a
.end method

.method public getKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_c

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_c
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_c

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_c
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 85
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hashCode()I
    .registers 7

    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v2, 0x0

    .line 149
    iget-boolean v3, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_d

    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_d
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "key":Ljava/lang/Object;
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_25

    move v3, v2

    :goto_21
    if-nez v1, :cond_2a

    :goto_23
    xor-int/2addr v2, v3

    return v2

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_21

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_23
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 92
    return-object p0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 97
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_a

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 100
    :cond_a
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 101
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 102
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 104
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_c

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_c
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
