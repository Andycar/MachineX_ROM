.class Lcom/android/server/TimaObserver$1;
.super Landroid/os/Handler;
.source "TimaObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaObserver;


# direct methods
.method constructor <init>(Lcom/android/server/TimaObserver;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/TimaObserver$1;->this$0:Lcom/android/server/TimaObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 127
    :goto_5
    return-void

    .line 124
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/TimaObserver$1;->this$0:Lcom/android/server/TimaObserver;

    # invokes: Lcom/android/server/TimaObserver;->handleTimaStateChange()V
    invoke-static {v0}, Lcom/android/server/TimaObserver;->access$000(Lcom/android/server/TimaObserver;)V

    goto :goto_5

    .line 122
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
