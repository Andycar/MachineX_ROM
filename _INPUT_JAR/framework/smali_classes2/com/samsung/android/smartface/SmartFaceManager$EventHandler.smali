.class Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "manager"    # Lcom/samsung/android/smartface/SmartFaceManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 513
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 515
    iput-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 516
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 522
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 545
    :goto_d
    return-void

    .line 525
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/smartface/FaceInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V

    goto :goto_d

    .line 528
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_38

    .line 529
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onRegistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_d

    .line 531
    :cond_38
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 534
    :pswitch_40
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_5a

    .line 535
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onUnregistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_d

    .line 537
    :cond_5a
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 543
    :cond_62
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 522
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1e
        :pswitch_40
    .end packed-switch
.end method
