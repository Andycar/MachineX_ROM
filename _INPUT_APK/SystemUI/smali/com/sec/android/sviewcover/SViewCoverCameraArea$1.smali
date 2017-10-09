.class Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;
.super Landroid/os/Handler;
.source "SViewCoverCameraArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverCameraArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverCameraArea;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverCameraArea;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->access$000(Lcom/sec/android/sviewcover/SViewCoverCameraArea;)V

    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->moveToHome()V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
