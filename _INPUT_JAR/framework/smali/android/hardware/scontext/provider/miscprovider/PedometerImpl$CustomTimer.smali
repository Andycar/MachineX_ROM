.class Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;
.super Ljava/util/TimerTask;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V
    .registers 2

    .prologue
    .line 562
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    invoke-static {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    move-result-object v0

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_1d

    .line 567
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->remove()V

    .line 568
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    invoke-static {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$202(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 569
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "handleDiedBinder(): we waited 60000 sec, but the app doesn\'t resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_1d
    return-void
.end method
