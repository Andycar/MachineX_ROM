.class Ljava/util/concurrent/SynchronousQueue$EmptyIterator;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue$EmptyIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1043
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;-><init>()V

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1042
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue$EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 1046
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue$EmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1047
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue$EmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1048
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue$EmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
