.class public abstract Ljavax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# instance fields
.field private coalescing:Z

.field private expandEntityRef:Z

.field private ignoreComments:Z

.field private namespaceAware:Z

.field private validating:Z

.field private whitespace:Z


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    .line 36
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    .line 37
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    .line 39
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    .line 40
    iput-boolean v1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    .line 43
    return-void
.end method

.method public static newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/DocumentBuilderFactory;
    .registers 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 66
    if-nez p0, :cond_a

    .line 67
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    const-string v3, "factoryClassName == null"

    invoke-direct {v2, v3}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_a
    if-nez p1, :cond_14

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 73
    :cond_14
    if-eqz p1, :cond_21

    :try_start_16
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/parsers/DocumentBuilderFactory;

    return-object v2

    .line 73
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_24} :catch_26
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_24} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_24} :catch_34

    move-result-object v1

    goto :goto_1a

    .line 77
    :catch_26
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 79
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2d
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 81
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_34
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v2, v0}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .registers 4

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCoalescing()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    return v0
.end method

.method public isExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    return v0
.end method

.method public isIgnoringComments()Z
    .registers 2

    .prologue
    .line 259
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .registers 4

    .prologue
    .line 493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setCoalescing(Z)V
    .registers 2
    .param p1, "coalescing"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->coalescing:Z

    .line 199
    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .registers 2
    .param p1, "expandEntityRef"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->expandEntityRef:Z

    .line 172
    return-void
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public setIgnoringComments(Z)V
    .registers 2
    .param p1, "ignoreComments"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->ignoreComments:Z

    .line 184
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .registers 2
    .param p1, "whitespace"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->whitespace:Z

    .line 159
    return-void
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .param p1, "awareness"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->namespaceAware:Z

    .line 110
    return-void
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .registers 5
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidating(Z)V
    .registers 2
    .param p1, "validating"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Ljavax/xml/parsers/DocumentBuilderFactory;->validating:Z

    .line 140
    return-void
.end method

.method public setXIncludeAware(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This parser does not support specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
