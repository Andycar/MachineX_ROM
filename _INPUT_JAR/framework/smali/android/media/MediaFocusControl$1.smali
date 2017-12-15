.class Landroid/media/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 446
    if-ne p1, v0, :cond_13

    .line 448
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$1800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 449
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x1

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$1902(Landroid/media/MediaFocusControl;Z)Z

    .line 450
    monitor-exit v1

    .line 457
    :cond_f
    :goto_f
    return-void

    .line 450
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    .line 451
    :cond_13
    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    if-nez p1, :cond_f

    .line 453
    :cond_18
    # getter for: Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$1800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 454
    :try_start_1d
    iget-object v0, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Landroid/media/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$1902(Landroid/media/MediaFocusControl;Z)Z

    .line 455
    monitor-exit v1

    goto :goto_f

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 461
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 462
    const-string v0, "MediaFocusControl"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "MediaFocusControl"

    const-string v1, "### RIL State is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "MediaFocusControl"

    const-string v1, "##################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v0, "ril_state_connected=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 467
    :cond_24
    return-void
.end method
