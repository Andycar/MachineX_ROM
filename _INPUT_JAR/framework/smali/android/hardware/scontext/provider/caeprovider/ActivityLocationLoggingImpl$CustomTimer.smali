.class Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;
.super Ljava/util/TimerTask;
.source "ActivityLocationLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->access$100(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    move-result-object v0

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_1d

    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->remove()V

    .line 167
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    # setter for: Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    invoke-static {v0, v1}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->access$102(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 168
    const-string v0, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    const-string v1, "handleDiedBinder(): we waited 60000 sec, but the app doesn\'t resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1d
    return-void
.end method
