.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->getParameterNames()Lorg/w3c/dom/DOMStringList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 361
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->this$0:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 369
    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$1100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
