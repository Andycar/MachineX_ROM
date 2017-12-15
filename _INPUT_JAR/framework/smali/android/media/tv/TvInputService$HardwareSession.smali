.class public abstract Landroid/media/tv/TvInputService$HardwareSession;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareSession"
.end annotation


# instance fields
.field private mHardwareSession:Landroid/media/tv/TvInputManager$Session;

.field private final mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

.field private mProxySession:Landroid/media/tv/ITvInputSession;

.field private mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    .line 1102
    new-instance v0, Landroid/media/tv/TvInputService$HardwareSession$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$HardwareSession$1;-><init>(Landroid/media/tv/TvInputService$HardwareSession;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    .line 1084
    return-void
.end method

.method static synthetic access$1000(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 1075
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    .line 1075
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$802(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .prologue
    .line 1075
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    .line 1075
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p1
.end method


# virtual methods
.method public abstract getHardwareInputId()Ljava/lang/String;
.end method

.method public onHardwareVideoAvailable()V
    .registers 1

    .prologue
    .line 1152
    return-void
.end method

.method public onHardwareVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 1166
    return-void
.end method

.method public final onSetSurface(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1144
    const-string v0, "TvInputService"

    const-string/jumbo v1, "onSetSurface() should not be called in HardwareProxySession."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v0, 0x0

    return v0
.end method
