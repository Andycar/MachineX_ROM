.class public Landroid/hardware/camera2/dispatch/MethodNameInvoker;
.super Ljava/lang/Object;
.source "MethodNameInvoker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMethods:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Landroid/hardware/camera2/dispatch/MethodNameInvoker;, "Landroid/hardware/camera2/dispatch/MethodNameInvoker<TT;>;"
    .local p1, "target":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    iput-object p2, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 46
    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Landroid/hardware/camera2/dispatch/MethodNameInvoker;, "Landroid/hardware/camera2/dispatch/MethodNameInvoker<TT;>;"
    const-string/jumbo v6, "methodName must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 70
    .local v5, "targetMethod":Ljava/lang/reflect/Method;
    if-nez v5, :cond_5e

    .line 71
    iget-object v6, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_18
    if-ge v2, v3, :cond_34

    aget-object v4, v0, v2

    .line 73
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    array-length v6, p2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_5b

    .line 75
    move-object v5, v4

    .line 76
    iget-object v6, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mMethods:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_34
    if-nez v5, :cond_5e

    .line 82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist on class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 71
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 88
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_5e
    :try_start_5e
    iget-object v6, p0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    invoke-interface {v6, v5, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_63} :catch_65

    move-result-object v6

    .line 92
    :goto_64
    return-object v6

    .line 89
    :catch_65
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    .line 92
    const/4 v6, 0x0

    goto :goto_64
.end method
