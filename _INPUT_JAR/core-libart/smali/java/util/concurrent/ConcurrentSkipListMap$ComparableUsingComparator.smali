.class final Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComparableUsingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final actualKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    .line 615
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    .line 616
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator<TK;>;"
    .local p1, "k2":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ComparableUsingComparator;->actualKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
