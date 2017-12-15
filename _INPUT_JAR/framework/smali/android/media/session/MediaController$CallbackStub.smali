.class final Landroid/media/session/MediaController$CallbackStub;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackStub"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 949
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    .line 950
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    .line 951
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 963
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 964
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_e

    .line 965
    const/4 v1, 0x1

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, p2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 967
    :cond_e
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1005
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1006
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 1007
    const/4 v1, 0x7

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1009
    :cond_f
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 5
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 979
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 980
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 981
    const/4 v1, 0x3

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 983
    :cond_f
    return-void
.end method

.method public onPlayItemResponse(Z)V
    .registers 6
    .param p1, "success"    # Z

    .prologue
    .line 1050
    const-string v1, "MediaController"

    const-string v2, "CallBackStub: onPlayItemResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1052
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_1c

    .line 1053
    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1055
    :cond_1c
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 5
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 971
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 972
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 973
    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 975
    :cond_f
    return-void
.end method

.method public onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "parceledQueue"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    const/4 v2, 0x0

    .line 987
    if-nez p1, :cond_13

    move-object v1, v2

    .line 989
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_4
    iget-object v3, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 990
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_12

    .line 991
    const/4 v3, 0x5

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v3, v1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 993
    :cond_12
    return-void

    .line 987
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_4
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 997
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 998
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_f

    .line 999
    const/4 v1, 0x6

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1001
    :cond_f
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 956
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_10

    .line 957
    const/16 v1, 0xc

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 959
    :cond_10
    return-void
.end method

.method public onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 5
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-string v1, "MediaController"

    const-string v2, "CallBackStub: onUpdateFolderInfoBrowsedPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1025
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_17

    .line 1026
    const/16 v1, 0x8

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1028
    :cond_17
    return-void
.end method

.method public onUpdateNowPlayingContentChange()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1041
    const-string v1, "MediaController"

    const-string v2, "CallBackStub: onUpdateNowPlayingContentChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1043
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_17

    .line 1044
    const/16 v1, 0xa

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v3, v3}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1046
    :cond_17
    return-void
.end method

.method public onUpdateNowPlayingEntries([J)V
    .registers 5
    .param p1, "playList"    # [J

    .prologue
    .line 1032
    const-string v1, "MediaController"

    const-string v2, "CallBackStub: onUpdateNowPlayingEntries"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1034
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_17

    .line 1035
    const/16 v1, 0x9

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1037
    :cond_17
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    .registers 9
    .param p1, "pvi"    # Landroid/media/session/ParcelableVolumeInfo;

    .prologue
    .line 1013
    iget-object v1, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    .line 1014
    .local v6, "controller":Landroid/media/session/MediaController;
    if-eqz v6, :cond_1e

    .line 1015
    new-instance v0, Landroid/media/session/MediaController$PlaybackInfo;

    iget v1, p1, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    iget-object v2, p1, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    iget v3, p1, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, p1, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, p1, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    .line 1017
    .local v0, "info":Landroid/media/session/MediaController$PlaybackInfo;
    const/4 v1, 0x4

    const/4 v2, 0x0

    # invokes: Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    invoke-static {v6, v1, v0, v2}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1019
    .end local v0    # "info":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_1e
    return-void
.end method
