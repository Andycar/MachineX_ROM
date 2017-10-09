.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;
.super Landroid/service/tima/ITimaISLCallback$Stub;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimaISLCallback"
.end annotation


# instance fields
.field subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .registers 3

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Landroid/service/tima/ITimaISLCallback$Stub;-><init>()V

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-void
.end method


# virtual methods
.method public onTimaViolation(Ljava/lang/String;)V
    .registers 7
    .param p1, "violation"    # Ljava/lang/String;

    .prologue
    .line 1121
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_42

    .line 1122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 1123
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1124
    .local v0, "adminId":I
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    if-eqz v3, :cond_32

    .line 1126
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    invoke-interface {v3, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onTimaViolation(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_35

    .line 1122
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1127
    :catch_35
    move-exception v1

    .line 1128
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 1133
    .end local v0    # "adminId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :cond_42
    return-void
.end method
