.class public Lorg/apache/harmony/xml/dom/ElementImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/AttrImpl;",
            ">;"
        }
    .end annotation
.end field

.field localName:Ljava/lang/String;

.field namespaceAware:Z

.field namespaceURI:Ljava/lang/String;

.field prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 56
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 51
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/ElementImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/ElementImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lorg/apache/harmony/xml/dom/ElementImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private indexOfAttribute(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 61
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 62
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 67
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1    # "i":I
    :goto_1b
    return v1

    .line 60
    .restart local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v1    # "i":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method private indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 72
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 73
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 79
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1    # "i":I
    :goto_25
    return v1

    .line 71
    .restart local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v1    # "i":I
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_29
    const/4 v1, -0x1

    goto :goto_25
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 85
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 86
    const-string v1, ""

    .line 89
    :goto_8
    return-object v1

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 95
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 96
    const-string v1, ""

    .line 99
    :goto_8
    return-object v1

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 106
    const/4 v1, 0x0

    .line 109
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    goto :goto_8
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 116
    const/4 v1, 0x0

    .line 119
    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    goto :goto_8
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;-><init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V

    return-object v0
.end method

.method getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 134
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->isId()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 158
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/ElementImpl;
    :cond_22
    :goto_22
    return-object p0

    .line 145
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/ElementImpl;
    :cond_23
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 149
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 150
    .local v3, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 151
    check-cast v3, Lorg/apache/harmony/xml/dom/ElementImpl;

    .end local v3    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 152
    .local v1, "element":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_35

    move-object p0, v1

    .line 153
    goto :goto_22

    .line 158
    .end local v1    # "element":Lorg/w3c/dom/Element;
    :cond_52
    const/4 p0, 0x0

    goto :goto_22
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 163
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 169
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .prologue
    .line 390
    sget-object v0, Lorg/apache/harmony/xml/dom/ElementImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_1f
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    :cond_c
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 229
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    :cond_c
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 6
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 236
    .local v0, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eq v1, p0, :cond_12

    .line 237
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 240
    :cond_12
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 243
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 249
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 250
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 254
    :cond_f
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 261
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 262
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 266
    :cond_f
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 8
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 270
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 272
    .local v1, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v3, v4, :cond_11

    .line 273
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 276
    :cond_11
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 277
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 280
    :cond_1f
    const/4 v2, 0x0

    .line 282
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "i":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_38

    .line 284
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 285
    .restart local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    :cond_38
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 291
    return-object v2
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 8
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 295
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 297
    .local v1, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eq v3, v4, :cond_11

    .line 298
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 301
    :cond_11
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 302
    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 305
    :cond_1f
    const/4 v2, 0x0

    .line 307
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "i":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3c

    .line 309
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 310
    .restart local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_3c
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 316
    return-object v2
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 395
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_21

    .line 396
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 399
    :cond_21
    iput-boolean p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 400
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 405
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_2b

    .line 406
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 409
    :cond_2b
    iput-boolean p3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 410
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .registers 3
    .param p1, "idAttr"    # Lorg/w3c/dom/Attr;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 413
    check-cast p1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .end local p1    # "idAttr":Lorg/w3c/dom/Attr;
    iput-boolean p2, p1, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 414
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 322
    return-void
.end method
