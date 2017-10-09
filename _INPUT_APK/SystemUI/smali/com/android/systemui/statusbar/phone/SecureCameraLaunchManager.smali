.class public Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;
.super Ljava/lang/Object;
.source "SecureCameraLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_AVAILABILITY_TIMEOUT_MS:I = 0x3e8

.field private static final CLOSE_CAMERA_ACTION_NAME:Ljava/lang/String; = "com.android.systemui.statusbar.phone.CLOSE_CAMERA"

.field private static final DEBUG:Z = false

.field private static final META_DATA_WILL_WAIT_FOR_CAMERA_AVAILABLE:Ljava/lang/String; = "com.android.systemui.statusbar.phone.will_wait_for_camera_available"

.field private static final TAG:Ljava/lang/String; = "SecureCameraLaunchManager"


# instance fields
.field private mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

.field private mCameraAvailabilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLaunchCameraRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWaitingToLaunchSecureCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardBottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 125
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private areAllCamerasAvailable()Z
    .locals 3

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 204
    .local v0, "cameraAvailable":Z
    if-nez v0, :cond_0

    .line 205
    const/4 v2, 0x0

    .line 208
    .end local v0    # "cameraAvailable":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private targetWillWaitForCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 224
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 226
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 229
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v4

    .line 237
    :cond_1
    const v5, 0x10080

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 241
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    .line 247
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.android.systemui.statusbar.phone.will_wait_for_camera_available"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 265
    .local v4, "willWaitForCameraAvailability":Z
    goto :goto_0
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const/4 v2, 0x0

    .line 280
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 273
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 154
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 161
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$2;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public startSecureCameraLaunch()V
    .locals 4

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->targetWillWaitForCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
