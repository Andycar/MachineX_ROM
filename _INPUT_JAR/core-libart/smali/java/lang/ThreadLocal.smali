.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final hash:I

.field private final reference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    .line 139
    sget-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x3c6ef372

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iput v0, p0, Ljava/lang/ThreadLocal;->hash:I

    .line 40
    return-void
.end method

.method static synthetic access$200(Ljava/lang/ThreadLocal;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/ThreadLocal;

    .prologue
    .line 33
    iget v0, p0, Ljava/lang/ThreadLocal;->hash:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;
    .registers 2
    .param p0, "x0"    # Ljava/lang/ThreadLocal;

    .prologue
    .line 33
    iget-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 54
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    .line 55
    .local v3, "values":Ljava/lang/ThreadLocal$Values;
    if-eqz v3, :cond_21

    .line 56
    # getter for: Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;

    move-result-object v2

    .line 57
    .local v2, "table":[Ljava/lang/Object;
    iget v4, p0, Ljava/lang/ThreadLocal;->hash:I

    # getter for: Ljava/lang/ThreadLocal$Values;->mask:I
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$100(Ljava/lang/ThreadLocal$Values;)I

    move-result v5

    and-int v1, v4, v5

    .line 58
    .local v1, "index":I
    iget-object v4, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_25

    .line 59
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    .line 65
    .end local v1    # "index":I
    .end local v2    # "table":[Ljava/lang/Object;
    :goto_20
    return-object v4

    .line 62
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    .line 65
    :cond_25
    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal$Values;->getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_20
.end method

.method protected initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .param p1, "current"    # Ljava/lang/Thread;

    .prologue
    .line 114
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    new-instance v0, Ljava/lang/ThreadLocal$Values;

    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    iput-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 103
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 104
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 105
    .local v1, "values":Ljava/lang/ThreadLocal$Values;
    if-eqz v1, :cond_d

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal$Values;->remove(Ljava/lang/ThreadLocal;)V

    .line 108
    :cond_d
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 87
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 88
    .local v1, "values":Ljava/lang/ThreadLocal$Values;
    if-nez v1, :cond_e

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 91
    :cond_e
    invoke-virtual {v1, p0, p1}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .param p1, "current"    # Ljava/lang/Thread;

    .prologue
    .line 121
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method
