.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 7
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 89
    if-nez p1, :cond_40

    const/4 v0, 0x0

    .line 90
    .local v0, "lengthFaces":I
    :goto_3
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 92
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    # setter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v1, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 99
    :cond_17
    :goto_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_4f

    .line 101
    # getter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 102
    # getter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceDetection - read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " faces"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3f
    return-void

    .line 89
    .end local v0    # "lengthFaces":I
    :cond_40
    array-length v0, p1

    goto :goto_3

    .line 93
    .restart local v0    # "lengthFaces":I
    :cond_42
    if-lez v0, :cond_17

    .line 95
    :try_start_44
    # getter for: Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 99
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_4f

    throw v1
.end method
