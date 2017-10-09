.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 754
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 755
    .local v4, "userId":I
    if-ne v4, v7, :cond_a

    .line 777
    :cond_9
    :goto_9
    return-void

    .line 756
    :cond_a
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 758
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 760
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 761
    :try_start_22
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;Z)V
    invoke-static {v6, v3, v8}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/UserHandle;Z)V

    .line 762
    monitor-exit v7

    goto :goto_9

    :catchall_2a
    move-exception v6

    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v6

    .line 764
    :cond_2d
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 765
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 766
    :try_start_3c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 767
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 768
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 769
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 775
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_64
    move-exception v6

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_3c .. :try_end_66} :catchall_64

    throw v6

    .line 772
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_67
    :try_start_67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 773
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v6, v5}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    goto :goto_6b

    .line 775
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_64

    goto :goto_9
.end method
