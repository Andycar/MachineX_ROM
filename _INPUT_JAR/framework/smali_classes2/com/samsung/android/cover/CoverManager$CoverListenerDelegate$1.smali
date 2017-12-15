.class Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;->val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 527
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 528
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_18

    .line 529
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 534
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_17
    :goto_17
    return-void

    .line 531
    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_18
    const-string v1, "CoverManager"

    const-string v2, "coverState : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
