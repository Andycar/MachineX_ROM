.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiClient"


# instance fields
.field protected final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 26
    return-void
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 2
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    .prologue
    .line 92
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public addVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    .prologue
    .line 80
    if-nez p1, :cond_a

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 88
    :goto_17
    return-void

    .line 85
    :catch_18
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "failed to add vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 40
    :goto_6
    return-object v1

    .line 37
    :catch_7
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected abstract getDeviceType()I
.end method

.method public sendKeyEvent(IZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 55
    :goto_9
    return-void

    .line 52
    :catch_a
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string/jumbo v2, "sendKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendVendorCommand(I[BZ)V
    .registers 7
    .param p1, "targetAddress"    # I
    .param p2, "params"    # [B
    .param p3, "hasVendorId"    # Z

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 72
    :goto_9
    return-void

    .line 69
    :catch_a
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
