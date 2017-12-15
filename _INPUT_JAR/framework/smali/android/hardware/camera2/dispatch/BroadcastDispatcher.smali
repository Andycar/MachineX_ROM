.class public Landroid/hardware/camera2/dispatch/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

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


# instance fields
.field private final mDispatchTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Landroid/hardware/camera2/dispatch/BroadcastDispatcher;, "Landroid/hardware/camera2/dispatch/BroadcastDispatcher<TT;>;"
    .local p1, "dispatchTargets":[Landroid/hardware/camera2/dispatch/Dispatchable;, "[Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "dispatchTargets must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;->mDispatchTargets:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Landroid/hardware/camera2/dispatch/BroadcastDispatcher;, "Landroid/hardware/camera2/dispatch/BroadcastDispatcher<TT;>;"
    const/4 v4, 0x0

    .line 51
    .local v4, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 53
    .local v1, "gotResult":Z
    iget-object v5, p0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;->mDispatchTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "result":Ljava/lang/Object;
    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 54
    .local v0, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "localResult":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 57
    const/4 v1, 0x1

    .line 58
    move-object v4, v3

    .restart local v4    # "result":Ljava/lang/Object;
    goto :goto_8

    .line 62
    .end local v0    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .end local v3    # "localResult":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1d
    return-object v4
.end method
