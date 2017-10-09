.class Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
.super Ljava/lang/Object;
.source "LogCollectionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/LogCollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogClient"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field private final files:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field logGroups:I

.field final synthetic this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/analytics/data/collection/LogCollectionManager;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    .line 70
    iput-object p2, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->binder:Landroid/os/IBinder;

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 75
    iget-object v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    monitor-enter v4

    .line 76
    :try_start_3
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 77
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_20

    .line 78
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 79
    .local v0, "acos":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    # invokes: Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$000(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 81
    .end local v0    # "acos":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :cond_20
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    # getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$100(Lcom/android/server/analytics/data/collection/LogCollectionManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->binder:Landroid/os/IBinder;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_32

    .line 84
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->this$0:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    # invokes: Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V
    invoke-static {v3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->access$200(Lcom/android/server/analytics/data/collection/LogCollectionManager;)V

    .line 85
    return-void

    .line 83
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_32
    move-exception v3

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v3
.end method
