.class Ljava/util/Collections$UnmodifiableMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xe5a57018b0af8beL


# instance fields
.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1239
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    .line 1241
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1244
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1248
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1252
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1256
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1260
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1268
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1272
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1284
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1292
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1300
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap;, "Ljava/util/Collections$UnmodifiableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
