.class Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;
.super Landroid/os/Handler;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 2

    .prologue
    .line 650
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 653
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 654
    :try_start_7
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_32

    .line 655
    const-string v0, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for an invalid detector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    monitor-exit v1

    .line 679
    :goto_31
    return-void

    .line 658
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_3c

    .line 660
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_78

    .line 677
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_31

    .line 658
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 662
    :pswitch_3f
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onAvailabilityChanged(I)V

    goto :goto_31

    .line 665
    :pswitch_4b
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    invoke-virtual {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    goto :goto_31

    .line 668
    :pswitch_59
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    goto :goto_31

    .line 671
    :pswitch_63
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionPaused()V

    goto :goto_31

    .line 674
    :pswitch_6d
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    # getter for: Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionResumed()V

    goto :goto_31

    .line 660
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_4b
        :pswitch_59
        :pswitch_63
        :pswitch_6d
    .end packed-switch
.end method
