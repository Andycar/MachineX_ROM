.class Lcom/android/server/power/PowerManagerService$AlpmLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlpmLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3551
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    .line 3554
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 3558
    :goto_b
    return-void

    .line 3555
    :catch_c
    move-exception v0

    .line 3556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$AlpmLock;->binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3560
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    # invokes: Lcom/android/server/power/PowerManagerService;->setAlpmModeLockedInternal(ZIILandroid/os/IBinder;)V
    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;ZIILandroid/os/IBinder;)V

    .line 3561
    return-void
.end method
