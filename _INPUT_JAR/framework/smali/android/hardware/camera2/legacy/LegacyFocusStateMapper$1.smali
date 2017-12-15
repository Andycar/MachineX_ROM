.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .registers 10
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 121
    :try_start_8
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    move-result v0

    .line 123
    .local v0, "latestAfRun":I
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 124
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAutoFocusMoving - start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " latest AF run "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", last AF run "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_45
    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    if-eq v2, v0, :cond_68

    .line 131
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocusMoving - ignoring move callbacks from old af run"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v4

    .line 156
    :goto_67
    return-void

    .line 138
    :cond_68
    if-eqz p1, :cond_9f

    move v1, v3

    .line 143
    .local v1, "newAfState":I
    :goto_6b
    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_b6

    :cond_75
    :goto_75
    packed-switch v2, :pswitch_data_c0

    .line 149
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocus - got unexpected onAutoFocus in mode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :pswitch_95
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # setter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$402(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    .line 155
    monitor-exit v4

    goto :goto_67

    .end local v0    # "latestAfRun":I
    .end local v1    # "newAfState":I
    :catchall_9c
    move-exception v2

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_8 .. :try_end_9e} :catchall_9c

    throw v2

    .line 138
    .restart local v0    # "latestAfRun":I
    :cond_9f
    const/4 v1, 0x2

    goto :goto_6b

    .line 143
    .restart local v1    # "newAfState":I
    :sswitch_a1
    :try_start_a1
    const-string v3, "continuous-picture"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const/4 v2, 0x0

    goto :goto_75

    :sswitch_ab
    const-string v6, "continuous-video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_9c

    move-result v5

    if-eqz v5, :cond_75

    move v2, v3

    goto :goto_75

    nop

    :sswitch_data_b6
    .sparse-switch
        -0xb99cbc3 -> :sswitch_ab
        0x363d9440 -> :sswitch_a1
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_95
        :pswitch_95
    .end packed-switch
.end method
