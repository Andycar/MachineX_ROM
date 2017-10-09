.class Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 682
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 687
    :goto_0
    return-void

    .line 684
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$900(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    goto :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
