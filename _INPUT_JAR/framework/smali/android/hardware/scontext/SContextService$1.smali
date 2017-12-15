.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/scontext/provider/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .registers 2

    .prologue
    .line 796
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventChanged(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "service"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 801
    if-nez p2, :cond_3

    .line 810
    :cond_2
    :goto_2
    return-void

    .line 804
    :cond_3
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/provider/Provider;->parse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 806
    if-eqz p2, :cond_2

    .line 807
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_2
.end method
