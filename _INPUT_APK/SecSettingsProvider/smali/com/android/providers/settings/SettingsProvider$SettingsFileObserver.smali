.class Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
.super Landroid/os/FileObserver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsFileObserver"
.end annotation


# instance fields
.field private final mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPath:Ljava/lang/String;

.field private final mUserHandle:I

.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V
    .locals 2
    .param p2, "userHandle"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    .line 386
    const/16 v0, 0x38a

    invoke-direct {p0, p3, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 381
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 389
    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    .line 390
    iput-object p3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mPath:Ljava/lang/String;

    .line 391
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    monitor-enter v2

    .line 396
    :try_start_0
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 397
    .local v0, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 397
    .end local v0    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 406
    .restart local v0    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    iget v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-static {v1, v2}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;I)V

    .line 415
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
