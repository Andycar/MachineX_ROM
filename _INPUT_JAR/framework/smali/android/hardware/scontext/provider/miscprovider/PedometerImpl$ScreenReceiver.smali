.class Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V
    .registers 2

    .prologue
    .line 578
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 584
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 588
    :cond_16
    :goto_16
    return-void

    .line 585
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 586
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_16
.end method
