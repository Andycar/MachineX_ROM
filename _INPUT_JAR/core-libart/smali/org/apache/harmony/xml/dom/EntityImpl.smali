.class public Lorg/apache/harmony/xml/dom/EntityImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "EntityImpl.java"

# interfaces
.implements Lorg/w3c/dom/Entity;


# instance fields
.field private notationName:Ljava/lang/String;

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "notationName"    # Ljava/lang/String;
    .param p3, "publicID"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->notationName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->publicID:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->systemID:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/EntityImpl;->getNotationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x6

    return v0
.end method

.method public getNotationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->notationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/EntityImpl;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
