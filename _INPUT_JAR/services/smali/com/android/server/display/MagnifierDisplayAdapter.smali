.class final Lcom/android/server/display/MagnifierDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MagnifierDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/MagnifierSurfaceControl$Listener;
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MagnifierDisplayAdapter"


# instance fields
.field private mDevice:Lcom/android/server/display/MagnifierDevice;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mEnabled:Z

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mScale:F

.field private mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

.field private mTempSpec:Landroid/view/MagnificationSpec;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 59
    const-string v5, "MagnifierDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    .line 52
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    .line 60
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 61
    iput-object p5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 120
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 67
    return-void
.end method

.method public enable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    if-ne v0, p1, :cond_24

    .line 76
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag is same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_23
    return-void

    .line 80
    :cond_24
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    .line 83
    if-eqz p1, :cond_57

    .line 84
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->create()V

    goto :goto_23

    .line 87
    :cond_57
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 90
    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 91
    iput-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    goto :goto_23
.end method

.method public onChangeSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 138
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChangeSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_23

    .line 141
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDevice;->setSurface(Landroid/view/Surface;)V

    .line 145
    :goto_22
    return-void

    .line 143
    :cond_23
    const-string v0, "MagnifierDisplayAdapter"

    const-string/jumbo v1, "onChangeSurface: device is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onCreateSurface(Landroid/view/Surface;F)V
    .registers 10
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "refreshRate"    # F

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 126
    :try_start_5
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateSurface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "OverlayMagnifier"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 129
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/MagnifierDevice;

    const-string v4, "OverlayMagnifier"

    iget-object v5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    .line 130
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 131
    monitor-exit v6

    .line 133
    return-void

    .line 131
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_3a
    move-exception v0

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public registerLocked()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 72
    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 97
    iput p3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    .line 98
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    monitor-enter v1

    .line 102
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_9

    .line 103
    monitor-exit v1

    .line 114
    :goto_8
    return-void

    .line 105
    :cond_9
    if-eqz p1, :cond_29

    .line 106
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 107
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 108
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 109
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 113
    :goto_24
    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    .line 111
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    goto :goto_24
.end method
