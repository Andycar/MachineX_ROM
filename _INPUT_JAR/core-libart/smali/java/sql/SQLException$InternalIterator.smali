.class Ljava/sql/SQLException$InternalIterator;
.super Ljava/lang/Object;
.source "SQLException.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/sql/SQLException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Ljava/sql/SQLException;


# direct methods
.method constructor <init>(Ljava/sql/SQLException;)V
    .registers 2
    .param p1, "e"    # Ljava/sql/SQLException;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    .line 241
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/sql/SQLException$InternalIterator;->next()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Throwable;
    .registers 3

    .prologue
    .line 248
    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    if-nez v1, :cond_a

    .line 249
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 251
    :cond_a
    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    .line 252
    .local v0, "ret":Ljava/sql/SQLException;
    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    # getter for: Ljava/sql/SQLException;->next:Ljava/sql/SQLException;
    invoke-static {v1}, Ljava/sql/SQLException;->access$000(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    .line 253
    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
