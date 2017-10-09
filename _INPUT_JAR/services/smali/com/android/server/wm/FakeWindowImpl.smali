.class public final Lcom/android/server/wm/FakeWindowImpl;
.super Ljava/lang/Object;
.source "FakeWindowImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$FakeWindow;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTouchFullscreen:Z

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)V
    .registers 16
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "windowType"    # I
    .param p6, "layoutParamsFlags"    # I
    .param p7, "layoutParamsPrivateFlags"    # I
    .param p8, "canReceiveKeys"    # Z
    .param p9, "hasFocus"    # Z
    .param p10, "touchFullscreen"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    invoke-static {p4}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 46
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 47
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 48
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 50
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-interface {p3, v1, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 53
    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p4, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 58
    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p4, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 61
    invoke-direct {p0, p5}, Lcom/android/server/wm/FakeWindowImpl;->getLayerLw(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p6, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p7, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p5, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 69
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p8, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p9, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 78
    iput-boolean p10, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    .line 79
    return-void
.end method

.method private getLayerLw(I)I
    .registers 3
    .param p1, "windowType"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 96
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 102
    :cond_25
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method layout(II)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    if-eqz v0, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 87
    :goto_c
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 91
    return-void

    .line 85
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_c
.end method
