.class Lcom/sec/android/sviewcover/SViewCoverView$9;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 2
    .param p1, "clearing"    # Z

    .prologue
    .line 2422
    if-eqz p1, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4000(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    .line 2425
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 2464
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2429
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 2435
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientPlaybackStateUpdate(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stateChangeTimeMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentPosMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4100(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/media/RemoteController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2442
    .local v0, "contentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2443
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteControl Package Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v2, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4200(Lcom/sec/android/sviewcover/SViewCoverView;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2446
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4000(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2450
    :cond_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v2, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->setCurrentClientId(Ljava/lang/String;)V

    .line 2452
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    long-to-int v4, p2

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2454
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$9;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 2460
    return-void
.end method
