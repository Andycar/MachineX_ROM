.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Lcom/samsung/android/motion/MotionRecognitionManager;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$1;,
        Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/motion/MotionRecognitionManager;-><init>(Landroid/os/Looper;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 51
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V
    .registers 12
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 72
    :try_start_3
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 73
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_38

    .line 74
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .line 75
    .local v1, "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v3

    if-ne v3, p1, :cond_35

    .line 76
    const-string v3, "MotionRecognitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v4

    .line 84
    :goto_34
    return-void

    .line 73
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 80
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :cond_38
    new-instance v1, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;Landroid/hardware/motion/MotionRecognitionManager$1;)V

    .line 81
    .restart local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$200(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/motion/MRListener;

    move-result-object v3

    invoke-super {p0, v3, p2, p3, p4}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V

    .line 83
    monitor-exit v4

    goto :goto_34

    .end local v0    # "i":I
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    .end local v2    # "size":I
    :catchall_4c
    move-exception v3

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V

    .line 62
    return-void
.end method

.method public setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public setSmartMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 155
    :try_start_3
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_26

    .line 157
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .line 158
    .local v1, "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v3

    if-ne v3, p1, :cond_23

    .line 159
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$200(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/motion/MRListener;

    move-result-object v3

    invoke-super {p0, v3, p2}, Lcom/samsung/android/motion/MotionRecognitionManager;->setSmartMotionAngle(Lcom/samsung/android/motion/MRListener;I)V

    .line 160
    monitor-exit v4

    .line 165
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :goto_22
    return-void

    .line 156
    .restart local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 163
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :cond_26
    monitor-exit v4

    goto :goto_22

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .registers 10
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 106
    :try_start_3
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 107
    .local v3, "size":I
    const/4 v2, 0x0

    .line 108
    .local v2, "motionevents":I
    const/4 v1, 0x0

    .line 109
    .local v1, "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v3, :cond_35

    .line 110
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .line 111
    .restart local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->moldListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$000(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v4

    if-ne v4, p1, :cond_45

    .line 112
    const-string v4, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_35
    if-eqz v1, :cond_43

    .line 117
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    # getter for: Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->mListener:Lcom/samsung/android/motion/MRListener;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->access$200(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/motion/MRListener;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 121
    :cond_43
    monitor-exit v5

    .line 122
    return-void

    .line 109
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 121
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    .end local v2    # "motionevents":I
    .end local v3    # "size":I
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v4
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 96
    return-void
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    return-void
.end method
