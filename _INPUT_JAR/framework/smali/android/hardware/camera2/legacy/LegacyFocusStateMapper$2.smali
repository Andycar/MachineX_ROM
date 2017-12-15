.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 205
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 12
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 209
    :try_start_a
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    move-result v0

    .line 211
    .local v0, "latestAfRun":I
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 212
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAutoFocus - success "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " latest AF run "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", last AF run "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_47
    iget v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    if-eq v0, v3, :cond_6e

    .line 218
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAutoFocus - ignoring AF callback (old run %d, new run %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v6

    .line 243
    :goto_6d
    return-void

    .line 224
    :cond_6e
    if-eqz p1, :cond_a6

    const/4 v1, 0x4

    .line 228
    .local v1, "newAfState":I
    :goto_71
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_d0

    :cond_7b
    move v2, v3

    :goto_7c
    packed-switch v2, :pswitch_data_e2

    .line 236
    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocus - got unexpected onAutoFocus in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :pswitch_9c
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # setter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$402(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    .line 242
    monitor-exit v6

    goto :goto_6d

    .end local v0    # "latestAfRun":I
    .end local v1    # "newAfState":I
    :catchall_a3
    move-exception v2

    monitor-exit v6
    :try_end_a5
    .catchall {:try_start_a .. :try_end_a5} :catchall_a3

    throw v2

    .line 224
    .restart local v0    # "latestAfRun":I
    :cond_a6
    const/4 v1, 0x5

    goto :goto_71

    .line 228
    .restart local v1    # "newAfState":I
    :sswitch_a8
    :try_start_a8
    const-string v4, "auto"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    goto :goto_7c

    :sswitch_b1
    const-string v2, "continuous-picture"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v4

    goto :goto_7c

    :sswitch_bb
    const-string v2, "continuous-video"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v5

    goto :goto_7c

    :sswitch_c5
    const-string/jumbo v2, "macro"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cb
    .catchall {:try_start_a8 .. :try_end_cb} :catchall_a3

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x3

    goto :goto_7c

    :sswitch_data_d0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_bb
        0x2dddaf -> :sswitch_a8
        0x62d9bcc -> :sswitch_c5
        0x363d9440 -> :sswitch_b1
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
    .end packed-switch
.end method
