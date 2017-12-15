.class Landroid/hardware/camera2/legacy/RequestThreadManager$4;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$4;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 252
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 253
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$4;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$600(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->countAndLog()V

    .line 255
    :cond_f
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$4;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/GLThreadManager;->queueNewFrame()V

    .line 256
    return-void
.end method
