.class public final Lorg/apache/harmony/xml/dom/CommentImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "CommentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public containsDashDash()Z
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CommentImpl;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "#comment"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x8

    return v0
.end method
