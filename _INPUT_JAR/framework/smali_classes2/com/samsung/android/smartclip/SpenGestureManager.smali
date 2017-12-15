.class public Lcom/samsung/android/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field public static final GLOBAL_AIR_BUTTON_ALL_ENABLE:I = -0x1

.field public static final GLOBAL_AIR_BUTTON_FLASHANNOTATE:I = 0x2

.field public static final GLOBAL_AIR_BUTTON_GALAXYFINDER:I = 0x3

.field public static final GLOBAL_AIR_BUTTON_MULTIWINDOW:I = 0x4

.field public static final GLOBAL_AIR_BUTTON_QUICKMEMO:I = 0x0

.field public static final GLOBAL_AIR_BUTTON_RAKEIN:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/smartclip/ISpenGestureService;


# instance fields
.field private mSpenGestureBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 52
    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 53
    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sput-object p1, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 64
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/smartclip/ISpenGestureService;
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_1e

    .line 80
    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 82
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_1e

    .line 83
    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1e
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateExclusiveCroppingMode()V
    .registers 4

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 132
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_9

    .line 133
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->activateExclusiveCroppingMode()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 139
    :cond_9
    return-void

    .line 135
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_a
    move-exception v0

    .line 137
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAirButtonHitTest(III)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 184
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 185
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getAirButtonHitTest(III)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 191
    :goto_a
    return v2

    .line 187
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 189
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 191
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, -0x1

    goto :goto_a
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 170
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 171
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 177
    :goto_a
    return-object v2

    .line 173
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 175
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 177
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 4

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 149
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 150
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 156
    :goto_a
    return-object v2

    .line 152
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 154
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isExclusiveModeActivated()Z
    .registers 4

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 118
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 119
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->isExclusiveModeActivated()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 125
    :goto_a
    return v2

    .line 121
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public declared-synchronized isServiceAvailable()Z
    .registers 4

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "spengestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    .line 71
    .local v0, "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-nez v0, :cond_18

    .line 72
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 73
    const/4 v1, 0x0

    .line 75
    :goto_16
    monitor-exit p0

    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_16

    .line 70
    .end local v0    # "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAirButtonHitTestResult(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "result"    # I

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 198
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_9

    .line 199
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureService;->setAirButtonHitTestResult(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 205
    :cond_9
    return-void

    .line 201
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_a
    move-exception v0

    .line 203
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 215
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_9

    .line 216
    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setDisableGlobalAirBottonAppindex(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 222
    :cond_9
    return-void

    .line 218
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_a
    move-exception v0

    .line 220
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFocusWindow(I)V
    .registers 6
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 105
    :try_start_0
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_22

    .line 106
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setFocusWindow(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 112
    :cond_22
    return-void

    .line 109
    :catch_23
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 93
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_9

    .line 94
    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 100
    :cond_9
    return-void

    .line 96
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_a
    move-exception v0

    .line 98
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
