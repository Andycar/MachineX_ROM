.class Lcom/sec/android/sviewcover/SViewCoverMiniView$3;
.super Landroid/os/Handler;
.source "SViewCoverMiniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_0
    :pswitch_0
    return-void

    .line 295
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;

    invoke-static {v2, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMiniView;Lcom/sec/android/sviewcover/SViewCoverMiniView$CoverRemoteViews;)V

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->handleBackgroundColorUpdated()V

    goto :goto_0

    .line 301
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 305
    :pswitch_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 309
    :cond_0
    const-string v1, "SViewCoverMiniView"

    const-string v2, "setVisibility: MGS_SHOW_SET_VISIBILITY_VIEW "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGS_SHOW_SET_VISIBILITY_VIEW - Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 320
    :pswitch_5
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 322
    const-string v1, "SViewCoverMiniView"

    const-string v2, "setVisibility: MGS_HIDE_SET_VISIBILITY_VIEW "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SViewCoverMiniView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGS_HIDE_SET_VISIBILITY_VIEW - Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    throw v1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
