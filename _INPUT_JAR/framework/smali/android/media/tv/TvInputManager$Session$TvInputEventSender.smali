.class final Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1721
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    .line 1722
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1723
    return-void
.end method


# virtual methods
.method public onInputEventFinished(IZ)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    .line 1728
    return-void
.end method
