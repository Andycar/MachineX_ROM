.class Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;
.super Landroid/os/Handler;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/ContextAwareManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->val$this$0:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1017
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    # getter for: Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    invoke-static {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->access$100(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1018
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1019
    .local v1, "type":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1020
    .local v0, "context":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    # getter for: Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    invoke-static {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->access$100(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareListener;->onContextChanged(ILandroid/os/Bundle;)V

    .line 1022
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "type":I
    :cond_17
    return-void
.end method
