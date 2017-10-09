.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAConnection"
.end annotation


# instance fields
.field public mAdminId:I

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V
    .registers 3
    .param p2, "adminId"    # I

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput p2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    .line 733
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 737
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_23

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onServiceConnected for admin_ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_23
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    .line 739
    .local v2, "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    .line 741
    .local v1, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->setISLCallBack(I)V

    .line 745
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 746
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA Service connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA ComponentName className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_a2

    .line 752
    :cond_8e
    if-eqz v2, :cond_93

    .line 753
    :try_start_90
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onReady()V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_93} :catch_95
    .catchall {:try_start_90 .. :try_end_93} :catchall_a2

    .line 758
    :cond_93
    :goto_93
    monitor-exit p0

    return-void

    .line 755
    :catch_95
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_96
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_96 .. :try_end_a1} :catchall_a2

    goto :goto_93

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .end local v2    # "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    :catchall_a2
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 761
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISA Service has unexpectedly disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_f
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 765
    .local v1, "key":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 766
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$800()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 775
    .end local v1    # "key":I
    :cond_70
    return-void
.end method
