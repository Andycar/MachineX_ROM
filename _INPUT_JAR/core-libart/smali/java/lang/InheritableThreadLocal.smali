.class public Ljava/lang/InheritableThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "InheritableThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .param p1, "current"    # Ljava/lang/Thread;

    .prologue
    .line 60
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    new-instance v0, Ljava/lang/ThreadLocal$Values;

    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    iput-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .param p1, "current"    # Ljava/lang/Thread;

    .prologue
    .line 55
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method
