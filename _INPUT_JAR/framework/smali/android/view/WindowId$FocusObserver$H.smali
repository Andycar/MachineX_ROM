.class Landroid/view/WindowId$FocusObserver$H;
.super Landroid/os/Handler;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    :goto_8
    return-void

    .line 85
    :pswitch_9
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowId;

    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    goto :goto_8

    .line 88
    :pswitch_13
    iget-object v1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowId;

    invoke-virtual {v1, v0}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    goto :goto_8

    .line 83
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method
