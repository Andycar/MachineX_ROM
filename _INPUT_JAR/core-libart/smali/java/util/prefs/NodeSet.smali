.class Ljava/util/prefs/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "nodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    .line 13
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 14
    iget-object v0, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 16
    :cond_1a
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 25
    .local v2, "result":Lorg/w3c/dom/Node;
    :try_start_1
    iget-object v3, p0, Ljava/util/prefs/NodeSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v3, v2

    .line 31
    :goto_c
    return-object v3

    .line 26
    :catch_d
    move-exception v1

    .line 28
    .local v1, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_c
.end method
