.class Landroid/media/tv/TvInputManager$2;
.super Landroid/media/tv/ITvInputManagerCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;)V
    .registers 2

    .prologue
    .line 701
    iput-object p1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 714
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1400(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 715
    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1500(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1600(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 717
    .local v1, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputAdded(Ljava/lang/String;)V

    goto :goto_1f

    .line 719
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_32
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 720
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1400(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 725
    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1500(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1600(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 727
    .local v1, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V

    goto :goto_1a

    .line 729
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 730
    return-void
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 704
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1400(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 705
    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1500(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1600(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 707
    .local v1, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V

    goto :goto_1e

    .line 709
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 710
    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 734
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1400(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 735
    :try_start_7
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    # getter for: Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->access$1600(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 736
    .local v1, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V

    goto :goto_11

    .line 738
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 739
    return-void
.end method
