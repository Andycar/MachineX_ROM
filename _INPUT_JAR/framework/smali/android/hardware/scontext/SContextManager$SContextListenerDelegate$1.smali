.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iput-object p3, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->val$this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1172
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/scontext/SContextEvent;

    .line 1174
    .local v0, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;->this$1:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    # getter for: Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/scontext/SContextListener;->onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V

    .line 1176
    .end local v0    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    :cond_15
    return-void
.end method
