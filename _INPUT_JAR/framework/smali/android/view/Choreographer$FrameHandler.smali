.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 684
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    .line 685
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 686
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 690
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 701
    :goto_5
    return-void

    .line 692
    :pswitch_6
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    goto :goto_5

    .line 695
    :pswitch_11
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    goto :goto_5

    .line 698
    :pswitch_17
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    goto :goto_5

    .line 690
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method
