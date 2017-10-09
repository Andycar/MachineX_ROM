.class final Lcom/android/server/display/MagnifierDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "MagnifierDevice.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MagnifierDevice"


# instance fields
.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 8
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 38
    iput-object p3, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    .line 39
    iput-object p4, p0, Lcom/android/server/display/MagnifierDevice;->mName:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 42
    const-string v0, "MagnifierDevice"

    const-string v1, "MagnifierDevice init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 4

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "defaultDisplay":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_51

    .line 50
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 51
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDevice;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 54
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 55
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->refreshRate:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 56
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 57
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 58
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 59
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 61
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 62
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 63
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 69
    :goto_50
    return-object v1

    .line 65
    :cond_51
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 66
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 68
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 69
    iget-object v1, p0, Lcom/android/server/display/MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    goto :goto_50
.end method

.method public performTraversalInTransactionLocked()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 76
    iget-object v0, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 78
    :cond_e
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/display/MagnifierDevice;->mSurface:Landroid/view/Surface;

    .line 82
    return-void
.end method
