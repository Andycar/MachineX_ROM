.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/RemoteController;)V
    .registers 3
    .param p1, "rc"    # Landroid/media/RemoteController;

    .prologue
    .line 637
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 638
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    .line 639
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 753
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 754
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_c

    .line 776
    :cond_b
    :goto_b
    return-void

    .line 758
    :cond_c
    if-nez p2, :cond_10

    if-eqz p3, :cond_b

    .line 761
    :cond_10
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 762
    :try_start_15
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_20

    .line 763
    monitor-exit v1

    goto :goto_b

    .line 765
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 766
    if-nez p2, :cond_29

    .line 767
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "metadata":Landroid/os/Bundle;
    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 769
    .restart local p2    # "metadata":Landroid/os/Bundle;
    :cond_29
    if-eqz p3, :cond_34

    .line 770
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    :cond_34
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "genId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 735
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 736
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_c

    .line 750
    :goto_b
    return-void

    .line 740
    :cond_c
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 741
    :try_start_11
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 742
    monitor-exit v1

    goto :goto_b

    .line 744
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 745
    new-instance v5, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 746
    .local v5, "metadata":Landroid/os/Bundle;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 747
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .registers 15
    .param p1, "genId"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/RemoteController;

    .line 644
    .local v10, "rc":Landroid/media/RemoteController;
    if-nez v10, :cond_c

    .line 662
    :cond_b
    :goto_b
    return-void

    .line 647
    :cond_c
    const/4 v9, 0x0

    .line 648
    .local v9, "isNew":Z
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 649
    :try_start_12
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v10}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 650
    # setter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v10, p1}, Landroid/media/RemoteController;->access$502(Landroid/media/RemoteController;I)I

    .line 651
    const/4 v9, 0x1

    .line 653
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_3f

    .line 654
    if-eqz p2, :cond_2b

    .line 655
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v10}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, v1

    move-object v5, p2

    move v6, v1

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 658
    :cond_2b
    if-nez v9, :cond_2f

    if-eqz p3, :cond_b

    .line 659
    :cond_2f
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v10}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz p3, :cond_42

    const/4 v6, 0x1

    :goto_37
    const/4 v7, 0x0

    move v4, v1

    move v5, p1

    move v8, v1

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b

    .line 653
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    move v6, v1

    .line 659
    goto :goto_37
.end method

.method public setEnabled(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 666
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_c

    .line 671
    :goto_b
    return-void

    .line 669
    :cond_c
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_1b

    const/4 v3, 0x1

    :goto_14
    const/4 v5, 0x0

    move v4, v2

    move v6, v2

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b

    :cond_1b
    move v3, v2

    goto :goto_14
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 716
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 717
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_c

    .line 732
    :cond_b
    :goto_b
    return-void

    .line 721
    :cond_c
    if-eqz p2, :cond_b

    .line 724
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 725
    :try_start_13
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 726
    monitor-exit v1

    goto :goto_b

    .line 728
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 729
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b
.end method

.method public setPlaybackState(IIJJF)V
    .registers 17
    .param p1, "genId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 675
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteController;

    .line 676
    .local v8, "rc":Landroid/media/RemoteController;
    if-nez v8, :cond_b

    .line 697
    :goto_a
    return-void

    .line 687
    :cond_b
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 688
    :try_start_10
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v8}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v1

    if-eq v1, p1, :cond_1b

    .line 689
    monitor-exit v2

    goto :goto_a

    .line 691
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    .line 692
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 694
    .local v0, "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v8}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v6, v0

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_a
.end method

.method public setTransportControlInfo(III)V
    .registers 12
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 702
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_c

    .line 713
    :goto_b
    return-void

    .line 705
    :cond_c
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 706
    :try_start_11
    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v7}, Landroid/media/RemoteController;->access$500(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 707
    monitor-exit v1

    goto :goto_b

    .line 709
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 710
    # getter for: Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;
    invoke-static {v7}, Landroid/media/RemoteController;->access$600(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move v6, v2

    # invokes: Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b
.end method
