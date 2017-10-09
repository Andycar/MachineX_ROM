.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .prologue
    .line 156
    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$400(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_2a

    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$200(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_2a

    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$000(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_2a

    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$600(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$100(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    # getter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$700(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 6
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 168
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$402(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 169
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$202(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 170
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$002(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 171
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$602(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 172
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$102(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 173
    # setter for: Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->access$702(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    .line 175
    :cond_1c
    return-void
.end method
