.class public final Lcom/android/server/AppOpsService$Callback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/AppOpsService$Callback;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 174
    :try_start_7
    iget-object v0, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 177
    :goto_11
    return-void

    .line 175
    :catch_12
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/AppOpsService$Callback;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 186
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 181
    return-void
.end method
