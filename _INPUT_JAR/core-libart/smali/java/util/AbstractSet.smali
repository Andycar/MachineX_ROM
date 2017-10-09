.class public abstract Ljava/util/AbstractSet;
.super Ljava/util/AbstractCollection;
.source "AbstractSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 33
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    if-ne p0, p1, :cond_6

    move v3, v2

    .line 63
    :cond_5
    :goto_5
    return v3

    .line 52
    :cond_6
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_5

    move-object v1, p1

    .line 53
    check-cast v1, Ljava/util/Set;

    .line 56
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_d
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_1f

    invoke-virtual {p0, v1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_21
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_1a} :catch_23

    move-result v4

    if-eqz v4, :cond_1f

    :goto_1d
    move v3, v2

    goto :goto_5

    :cond_1f
    move v2, v3

    goto :goto_1d

    .line 57
    :catch_21
    move-exception v0

    .line 58
    .local v0, "ignored":Ljava/lang/NullPointerException;
    goto :goto_5

    .line 59
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :catch_23
    move-exception v0

    .line 60
    .local v0, "ignored":Ljava/lang/ClassCastException;
    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 76
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "next":Ljava/lang/Object;
    if-nez v1, :cond_14

    const/4 v3, 0x0

    :goto_12
    add-int/2addr v2, v3

    .line 81
    goto :goto_5

    .line 80
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_12

    .line 82
    .end local v1    # "next":Ljava/lang/Object;
    :cond_19
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 99
    .local v1, "result":Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-gt v2, v3, :cond_24

    .line 100
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 104
    const/4 v1, 0x1

    goto :goto_f

    .line 108
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    if-eqz v1, :cond_3c

    :cond_3a
    const/4 v1, 0x1

    :goto_3b
    goto :goto_28

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b

    .line 113
    :cond_3e
    return v1
.end method
