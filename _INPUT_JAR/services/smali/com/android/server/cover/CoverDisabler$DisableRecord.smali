.class Lcom/android/server/cover/CoverDisabler$DisableRecord;
.super Ljava/lang/Object;
.source "CoverDisabler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field disable:Z

.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cover/CoverDisabler;

.field token:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/CoverDisabler;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/CoverDisabler;Lcom/android/server/cover/CoverDisabler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/cover/CoverDisabler;
    .param p2, "x1"    # Lcom/android/server/cover/CoverDisabler$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverDisabler$DisableRecord;-><init>(Lcom/android/server/cover/CoverDisabler;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 93
    const-string v0, "CoverManager.CoverDisabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    iget-object v1, v0, Lcom/android/server/cover/CoverDisabler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_20
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->this$0:Lcom/android/server/cover/CoverDisabler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/cover/CoverDisabler;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/cover/CoverDisabler;->access$100(Lcom/android/server/cover/CoverDisabler;ZLandroid/os/IBinder;Ljava/lang/String;)Z

    .line 96
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_31

    .line 97
    iget-object v0, p0, Lcom/android/server/cover/CoverDisabler$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 98
    return-void

    .line 96
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method
