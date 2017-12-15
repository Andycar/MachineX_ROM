.class Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;->val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 594
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 595
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_30

    .line 604
    :cond_f
    :goto_f
    return-void

    .line 597
    :pswitch_10
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1e

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    goto :goto_f

    :cond_1e
    move v0, v1

    goto :goto_1a

    .line 600
    :pswitch_20
    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    invoke-static {v2}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->access$200(Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2e

    :goto_2a
    invoke-virtual {v2, v0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_f

    :cond_2e
    move v0, v1

    goto :goto_2a

    .line 595
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_10
        :pswitch_20
    .end packed-switch
.end method
