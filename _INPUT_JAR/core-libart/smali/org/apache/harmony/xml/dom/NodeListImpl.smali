.class public Lorg/apache/harmony/xml/dom/NodeListImpl;
.super Ljava/lang/Object;
.source "NodeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/xml/dom/NodeImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method add(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 3
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeListImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_9
.end method
