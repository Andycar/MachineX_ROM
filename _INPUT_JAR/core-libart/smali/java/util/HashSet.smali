.class public Ljava/util/HashSet;
.super Ljava/util/AbstractSet;
.source "HashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45bb7a6a694748ccL


# instance fields
.field transient backingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 50
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 63
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x6

    if-ge v2, v4, :cond_23

    const/16 v2, 0xb

    :goto_b
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 74
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_b

    .line 79
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2a
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "backingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<TE;Ljava/util/HashSet<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 82
    iput-object p1, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    .line 83
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 201
    .local v3, "length":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v4

    .line 202
    .local v4, "loadFactor":F
    invoke-virtual {p0, v3, v4}, Ljava/util/HashSet;->createBackingMap(IF)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 204
    .local v0, "elementCount":I
    move v1, v0

    .local v1, "i":I
    :goto_16
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_24

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, "key":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 208
    .end local v2    # "key":Ljava/lang/Object;, "TE;"
    :cond_24
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 188
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 189
    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 190
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 191
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1b

    .line 194
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_29
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 120
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 121
    .local v0, "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 122
    return-object v0

    .line 123
    .end local v0    # "clone":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :catch_11
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 138
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createBackingMap(IF)Ljava/util/HashMap;
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 150
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 173
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 183
    .local p0, "this":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
