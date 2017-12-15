.class final Landroid/media/tv/TvInputManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1697
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    .line 1698
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1703
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 1717
    :goto_6
    return-void

    .line 1705
    :pswitch_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    # invokes: Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    invoke-static {v1, v0}, Landroid/media/tv/TvInputManager$Session;->access$2000(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    goto :goto_6

    .line 1709
    :pswitch_11
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    goto :goto_6

    .line 1713
    :pswitch_1a
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    goto :goto_6

    .line 1703
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
        :pswitch_11
        :pswitch_1a
    .end packed-switch
.end method
