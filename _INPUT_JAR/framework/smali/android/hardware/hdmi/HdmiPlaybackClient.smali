.class public final Landroid/hardware/hdmi/HdmiPlaybackClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiPlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;,
        Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiPlaybackClient"


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 69
    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .prologue
    .line 116
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$2;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$2;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    return-object v0
.end method

.method private getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 3
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .prologue
    .line 107
    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient$1;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceType()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x4

    return v0
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 85
    :goto_9
    return-void

    .line 82
    :catch_a
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string/jumbo v2, "oneTouchPlay threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiPlaybackClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 104
    :goto_9
    return-void

    .line 101
    :catch_a
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiPlaybackClient"

    const-string/jumbo v2, "queryDisplayStatus threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
