.class final Ljava/util/Hashtable$EntryIterator;
.super Ljava/util/Hashtable$HashIterator;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    .prologue
    .line 776
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/Hashtable$EntryIterator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .prologue
    .line 776
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntryIterator;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 776
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$EntryIterator;->nextEntry()Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    return-object v0
.end method
