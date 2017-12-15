.class Landroid/app/VRSurfaceManager;
.super Ljava/lang/Object;
.source "VRSurfaceManager.java"


# static fields
.field private static mService:Lcom/android/internal/app/IVRManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/android/internal/app/IVRManagerService;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Landroid/app/VRSurfaceManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 62
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_11

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 68
    :cond_11
    return-void

    .line 65
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_12
    move-exception v0

    .line 66
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getClientBufferAddress(I)I
    .registers 4
    .param p0, "surface"    # I

    .prologue
    .line 52
    const/4 v0, -0x1

    .line 53
    .local v0, "result":I
    const-string v1, "VRSurfaceManager"

    const-string v2, "VRSurfaceManager: get ClientBuffer Address"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "getClientBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Landroid/app/VRSurfaceManager;->get_client_buffer_address(I)I

    move-result v0

    .line 56
    return v0
.end method

.method private static getFrontBufferAddress(I)I
    .registers 4
    .param p0, "surface"    # I

    .prologue
    .line 35
    const/4 v0, -0x1

    .line 36
    .local v0, "result":I
    const-string v1, "VRSurfaceManager"

    const-string v2, "VRSurfaceManager: get FrontBuffer Address"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v1, "getFrontBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Landroid/app/VRSurfaceManager;->get_front_buffer_address(I)I

    move-result v0

    .line 39
    return v0
.end method

.method private static declared-synchronized getService()Lcom/android/internal/app/IVRManagerService;
    .registers 3

    .prologue
    .line 15
    const-class v1, Landroid/app/VRSurfaceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_20

    .line 16
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    sput-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/android/internal/app/IVRManagerService;

    .line 17
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_20

    .line 18
    const-string v0, "VRSurfaceManager"

    const-string/jumbo v2, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_20
    sget-object v0, Landroid/app/VRSurfaceManager;->mService:Lcom/android/internal/app/IVRManagerService;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSurfaceBufferAddress(I[II)I
    .registers 6
    .param p0, "surface"    # I
    .param p1, "attribs"    # [I
    .param p2, "pitch"    # I

    .prologue
    .line 43
    const/4 v0, -0x1

    .line 44
    .local v0, "result":I
    const-string v1, "VRSurfaceManager"

    const-string v2, "VRSurfaceManager: get SurfaceBuffer Address "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v1, "getSurfaceBufferAddress"

    invoke-static {v1}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1, p2}, Landroid/app/VRSurfaceManager;->get_surface_buffer_address(I[II)I

    move-result v0

    .line 48
    return v0
.end method

.method private static native get_client_buffer_address(I)I
.end method

.method private static native get_front_buffer_address(I)I
.end method

.method private static native get_surface_buffer_address(I[II)I
.end method

.method private static setFrontBuffer(IZ)V
    .registers 4
    .param p0, "surface"    # I
    .param p1, "set"    # Z

    .prologue
    .line 29
    const-string v0, "VRSurfaceManager"

    const-string v1, "VRSurfaceManager : setFrontBuffer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string/jumbo v0, "setFrontBuffer"

    invoke-static {v0}, Landroid/app/VRSurfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p1}, Landroid/app/VRSurfaceManager;->set_front_buffer(IZ)V

    .line 32
    return-void
.end method

.method private static native set_front_buffer(IZ)V
.end method
