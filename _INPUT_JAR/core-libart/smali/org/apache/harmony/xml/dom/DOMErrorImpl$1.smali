.class final Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, -0x1

    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtf16Offset()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, -0x1

    return v0
.end method
