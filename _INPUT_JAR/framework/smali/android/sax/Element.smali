.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field children:Landroid/sax/Children;

.field final depth:I

.field endElementListener:Landroid/sax/EndElementListener;

.field endTextElementListener:Landroid/sax/EndTextElementListener;

.field final localName:Ljava/lang/String;

.field final parent:Landroid/sax/Element;

.field requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field startElementListener:Landroid/sax/StartElementListener;

.field final uri:Ljava/lang/String;

.field visited:Z


# direct methods
.method constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "depth"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    .line 48
    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 50
    iput p4, p0, Landroid/sax/Element;->depth:I

    .line 51
    return-void
.end method

.method static toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .end local p1    # "localName":Ljava/lang/String;
    :goto_13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "localName":Ljava/lang/String;
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_13
.end method


# virtual methods
.method checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .registers 8
    .param p1, "locator"    # Lorg/xml/sax/Locator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 190
    .local v2, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v2, :cond_48

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_48

    .line 192
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sax/Element;

    .line 193
    .local v0, "child":Landroid/sax/Element;
    iget-boolean v3, v0, Landroid/sax/Element;->visited:Z

    if-nez v3, :cond_45

    .line 194
    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    .line 191
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 201
    .end local v0    # "child":Landroid/sax/Element;
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method public getChild(Ljava/lang/String;)Landroid/sax/Element;
    .registers 3
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_c

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has an end text element listener. It cannot have children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_c
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_17

    .line 71
    new-instance v0, Landroid/sax/Children;

    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 74
    :cond_17
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .registers 3
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 95
    .local v0, "child":Landroid/sax/Element;
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 97
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_14
    :goto_14
    return-object v0

    .line 99
    :cond_15
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 100
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method resetRequiredChildren()V
    .registers 5

    .prologue
    .line 177
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 178
    .local v1, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v1, :cond_18

    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_18

    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sax/Element;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/sax/Element;->visited:Z

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 183
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public setElementListener(Landroid/sax/ElementListener;)V
    .registers 2
    .param p1, "elementListener"    # Landroid/sax/ElementListener;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 112
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 113
    return-void
.end method

.method public setEndElementListener(Landroid/sax/EndElementListener;)V
    .registers 4
    .param p1, "endElementListener"    # Landroid/sax/EndElementListener;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v0, :cond_c

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_c
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    .line 144
    return-void
.end method

.method public setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .registers 4
    .param p1, "endTextElementListener"    # Landroid/sax/EndTextElementListener;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_c

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End text element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_c
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-eqz v0, :cond_18

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has children. It cannot have an end text element listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_18
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    .line 162
    return-void
.end method

.method public setStartElementListener(Landroid/sax/StartElementListener;)V
    .registers 4
    .param p1, "startElementListener"    # Landroid/sax/StartElementListener;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_c

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Start element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    .line 133
    return-void
.end method

.method public setTextElementListener(Landroid/sax/TextElementListener;)V
    .registers 2
    .param p1, "elementListener"    # Landroid/sax/TextElementListener;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
