.class public Landroid/hardware/camera2/dispatch/InvokeDispatcher;
.super Ljava/lang/Object;
.source "InvokeDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InvocationSink"


# instance fields
.field private final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "target must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;->mTarget:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<TT;>;"
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;->mTarget:Ljava/lang/Object;

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_2b

    move-result-object v2

    .line 53
    :goto_6
    return-object v2

    .line 40
    :catch_7
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 43
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    .line 53
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_f
    const/4 v2, 0x0

    goto :goto_6

    .line 44
    :catch_11
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "InvocationSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException while invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2b
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "InvocationSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException while invoking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
