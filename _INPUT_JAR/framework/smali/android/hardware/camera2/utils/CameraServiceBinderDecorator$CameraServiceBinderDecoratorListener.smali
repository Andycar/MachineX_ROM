.class Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;
.super Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.source "CameraServiceBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraServiceBinderDecoratorListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 6
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    instance-of v0, p3, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_6

    .line 51
    :cond_4
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_6
    instance-of v0, p3, Landroid/os/RemoteException;

    if-eqz v0, :cond_4

    .line 48
    const-string v0, "CameraServiceBinderDecorator"

    const-string v1, "Unexpected RemoteException from camera service call."

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
