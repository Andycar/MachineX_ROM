.class final Ljava/util/HashMap$ValueIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    .prologue
    .line 817
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Ljava/util/HashMap$ValueIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/HashMap;
    .param p2, "x1"    # Ljava/util/HashMap$1;

    .prologue
    .line 817
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$ValueIterator;->nextEntry()Ljava/util/HashMap$HashMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
