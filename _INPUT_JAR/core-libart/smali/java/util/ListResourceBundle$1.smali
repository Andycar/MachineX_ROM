.class Ljava/util/ListResourceBundle$1;
.super Ljava/lang/Object;
.source "ListResourceBundle.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ListResourceBundle;->getKeys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field local:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextElement:Ljava/lang/String;

.field pEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ListResourceBundle;


# direct methods
.method constructor <init>(Ljava/util/ListResourceBundle;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v0, v0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    .line 54
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v0, v0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    return-void
.end method

.method private findNext()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v2, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 69
    :goto_5
    return v1

    .line 62
    :cond_6
    iget-object v2, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 63
    iget-object v2, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "next":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v2, v2, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 65
    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    goto :goto_5

    .line 69
    .end local v0    # "next":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    goto :goto_5
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/util/ListResourceBundle$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 81
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    :goto_10
    return-object v1

    .line 83
    :cond_11
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 84
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    .line 85
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    move-object v1, v0

    .line 86
    goto :goto_10

    .line 89
    .end local v0    # "result":Ljava/lang/String;
    :cond_1e
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_10
.end method
