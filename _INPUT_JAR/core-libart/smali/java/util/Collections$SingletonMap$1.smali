.class Ljava/util/Collections$SingletonMap$1;
.super Ljava/util/AbstractSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Ljava/util/Collections$SingletonMap;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap;)V
    .registers 2

    .prologue
    .line 319
    .local p0, "this":Ljava/util/Collections$SingletonMap$1;, "Ljava/util/Collections$SingletonMap.1;"
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Collections$SingletonMap$1;, "Ljava/util/Collections$SingletonMap.1;"
    const/4 v1, 0x0

    .line 321
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 322
    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Collections$SingletonMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Collections$SingletonMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 326
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
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
    .line 334
    .local p0, "this":Ljava/util/Collections$SingletonMap$1;, "Ljava/util/Collections$SingletonMap.1;"
    new-instance v0, Ljava/util/Collections$SingletonMap$1$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonMap$1$1;-><init>(Ljava/util/Collections$SingletonMap$1;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 330
    .local p0, "this":Ljava/util/Collections$SingletonMap$1;, "Ljava/util/Collections$SingletonMap.1;"
    const/4 v0, 0x1

    return v0
.end method
