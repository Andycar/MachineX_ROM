.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDataObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 1588
    monitor-enter p0

    .line 1589
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->finished:Z

    .line 1590
    iput-boolean p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->result:Z

    .line 1591
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1592
    monitor-exit p0

    .line 1593
    return-void

    .line 1592
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
