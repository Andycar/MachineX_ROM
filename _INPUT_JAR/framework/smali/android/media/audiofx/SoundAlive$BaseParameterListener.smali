.class Landroid/media/audiofx/SoundAlive$BaseParameterListener;
.super Ljava/lang/Object;
.source "SoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/SoundAlive;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/SoundAlive;)V
    .registers 2

    .prologue
    .line 493
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/audiofx/SoundAlive;
    .param p2, "x1"    # Landroid/media/audiofx/SoundAlive$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 14
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "l":Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 500
    :try_start_b
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 501
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    move-result-object v0

    .line 503
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_42

    .line 504
    if-eqz v0, :cond_41

    .line 505
    const/4 v3, -0x1

    .line 506
    .local v3, "p1":I
    const/4 v4, -0x1

    .line 507
    .local v4, "p2":I
    const/4 v5, -0x1

    .line 509
    .local v5, "v":I
    array-length v1, p3

    if-lt v1, v7, :cond_2f

    .line 510
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    .line 511
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2f

    .line 512
    invoke-static {p3, v7}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 515
    :cond_2f
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    .line 516
    invoke-static {p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    .line 521
    :cond_37
    :goto_37
    if-eq v3, v8, :cond_41

    if-eq v5, v8, :cond_41

    .line 522
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/SoundAlive;IIII)V

    .line 525
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "v":I
    :cond_41
    return-void

    .line 503
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 517
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v5    # "v":I
    :cond_45
    array-length v1, p4

    if-ne v1, v7, :cond_37

    .line 518
    invoke-static {p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_37
.end method
