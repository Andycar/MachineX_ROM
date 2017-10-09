.class Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;
.super Landroid/os/Handler;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1175
    :goto_0
    return-void

    .line 1172
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->access$1300(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    goto :goto_0

    .line 1170
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
