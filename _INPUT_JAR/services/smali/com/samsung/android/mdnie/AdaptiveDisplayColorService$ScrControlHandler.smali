.class final Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 847
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 851
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    .line 885
    :cond_5
    :goto_5
    return-void

    .line 853
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V
    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Ljava/lang/String;II)V

    goto :goto_5

    .line 857
    :pswitch_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    iget-object v1, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_5

    .line 858
    :catch_1f
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 860
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 865
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_30
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 868
    :pswitch_36
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 871
    :pswitch_3c
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setVideoMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 874
    :pswitch_42
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setBrowserMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 877
    :pswitch_48
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateVideoMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 880
    :pswitch_4e
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateScrRGB()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 851
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
    .end packed-switch
.end method
