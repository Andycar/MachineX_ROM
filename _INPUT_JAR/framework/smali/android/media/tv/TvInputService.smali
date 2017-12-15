.class public abstract Landroid/media/tv/TvInputService;
.super Landroid/app/Service;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$ServiceHandler;,
        Landroid/media/tv/TvInputService$HardwareSession;,
        Landroid/media/tv/TvInputService$Session;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.TvInputService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.input"

.field private static final TAG:Ljava/lang/String; = "TvInputService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/tv/ITvInputServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/os/Handler;

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    new-instance v0, Landroid/media/tv/TvInputService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$1;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1189
    return-void
.end method

.method static synthetic access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/media/tv/TvInputService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isNavigationKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 1171
    sparse-switch p0, :sswitch_data_8

    .line 1186
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1184
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1171
    nop

    :sswitch_data_8
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x7a -> :sswitch_5
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private isPassthroughInput(Ljava/lang/String;)Z
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v1, :cond_f

    .line 231
    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    iput-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 233
    :cond_f
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 234
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 235
    const/4 v1, 0x1

    .line 237
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public final getRegisteredCallbackCount()I
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    new-instance v0, Landroid/media/tv/TvInputService$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$1;-><init>(Landroid/media/tv/TvInputService;)V

    return-object v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
.end method

.method public onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;
    .registers 3
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;
    .registers 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method
