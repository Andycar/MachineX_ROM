.class Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$000(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
