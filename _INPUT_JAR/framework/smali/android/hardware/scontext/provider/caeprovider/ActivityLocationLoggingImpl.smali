.class public Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "ActivityLocationLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;,
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider.ActivityLocationLoggingImpl"


# instance fields
.field private final MAXIMUM_WAITING_TIME:I

.field private mAreaRadius:I

.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

.field private mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

.field private mLppResolution:I

.field private mStayingRadius:I

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 64
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 42
    const v0, 0xea60

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->MAXIMUM_WAITING_TIME:I

    .line 44
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 48
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    .line 50
    const/16 v0, 0x78

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    .line 52
    const/16 v0, 0x32

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    .line 54
    const/16 v0, 0x96

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    .line 66
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 67
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-object p1
.end method


# virtual methods
.method public add()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_b

    .line 79
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 83
    :goto_a
    return-void

    .line 81
    :cond_b
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->add()V

    goto :goto_a
.end method

.method public handleDiedBinder()V
    .registers 5

    .prologue
    .line 151
    const-string v1, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v1, v2, :cond_31

    .line 153
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 154
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 156
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_31
    return-void
.end method

.method public onBinderDied()V
    .registers 4

    .prologue
    .line 137
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 138
    const-string v0, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public remove()V
    .registers 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    .line 94
    return-void
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 8
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 106
    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_11

    .line 108
    const-string v1, "SContext.CaeProvider.ActivityLocationLoggingImpl"

    const-string/jumbo v2, "setProperty() : attribute is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_10
    return-void

    .line 111
    :cond_11
    const-string/jumbo v1, "stop_period"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    .line 112
    const-string/jumbo v1, "wait_period"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    .line 113
    const-string/jumbo v1, "staying_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    .line 114
    const-string v1, "area_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    .line 115
    const-string v1, "lpp_resolution"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    .line 117
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v3, 0x1c

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStopPeriod:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 119
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v3, 0x1d

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mWaitPeriod:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 121
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v3, 0x1e

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mStayingRadius:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 123
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v3, 0x1f

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mAreaRadius:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 125
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v3, 0x20

    iget v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityLocationLoggingImpl;->mLppResolution:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_10
.end method
