.class Ljava/util/Collections$SingletonMap$1$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$1:Ljava/util/Collections$SingletonMap$1;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap$1;)V
    .registers 3

    .prologue
    .line 334
    .local p0, "this":Ljava/util/Collections$SingletonMap$1$1;, "Ljava/util/Collections$SingletonMap$1.1;"
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 338
    .local p0, "this":Ljava/util/Collections$SingletonMap$1$1;, "Ljava/util/Collections$SingletonMap$1.1;"
    iget-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 334
    .local p0, "this":Ljava/util/Collections$SingletonMap$1$1;, "Ljava/util/Collections$SingletonMap$1.1;"
    invoke-virtual {p0}, Ljava/util/Collections$SingletonMap$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Ljava/util/Collections$SingletonMap$1$1;, "Ljava/util/Collections$SingletonMap$1.1;"
    iget-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    if-nez v0, :cond_a

    .line 343
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 346
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    .line 347
    new-instance v0, Ljava/util/Collections$SingletonMap$1$1$1;

    iget-object v1, p0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v2, v2, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v2, v2, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Ljava/util/Collections$SingletonMap$1$1$1;-><init>(Ljava/util/Collections$SingletonMap$1$1;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 355
    .local p0, "this":Ljava/util/Collections$SingletonMap$1$1;, "Ljava/util/Collections$SingletonMap$1.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
