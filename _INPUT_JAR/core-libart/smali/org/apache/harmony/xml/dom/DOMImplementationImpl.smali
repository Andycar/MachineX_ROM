.class public final Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
.super Ljava/lang/Object;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field private static instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    .line 84
    :cond_b
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .registers 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "doctype"    # Lorg/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .registers 6
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0    # "this":Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    :goto_6
    return-object p0

    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3b

    :cond_a
    move v0, v2

    .line 54
    .local v0, "anyVersion":Z
    :goto_b
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_17
    const-string v3, "Core"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 63
    if-nez v0, :cond_39

    const-string v3, "1.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "2.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "3.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_39
    move v1, v2

    .line 69
    :cond_3a
    :goto_3a
    return v1

    .end local v0    # "anyVersion":Z
    :cond_3b
    move v0, v1

    .line 53
    goto :goto_b

    .line 64
    .restart local v0    # "anyVersion":Z
    :cond_3d
    const-string v3, "XML"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 65
    if-nez v0, :cond_5f

    const-string v3, "1.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "2.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "3.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_5f
    move v1, v2

    goto :goto_3a

    .line 66
    :cond_61
    const-string v3, "XMLVersion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 67
    if-nez v0, :cond_7b

    const-string v3, "1.0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "1.1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_7b
    move v1, v2

    goto :goto_3a
.end method
