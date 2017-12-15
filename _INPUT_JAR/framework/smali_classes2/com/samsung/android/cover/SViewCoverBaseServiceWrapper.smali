.class public Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceWrapper.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cover/ISViewCoverBaseService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/ISViewCoverBaseService;)V
    .registers 3
    .param p1, "service"    # Lcom/samsung/android/cover/ISViewCoverBaseService;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "SViewCoverBaseServiceWrapper"

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    .line 34
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isCoverViewShowing()Z
    .registers 6

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "value":Z
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v3}, Lcom/samsung/android/cover/ISViewCoverBaseService;->isCoverViewShowing()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    move-result v1

    move v2, v1

    .line 86
    .end local v1    # "value":Z
    .local v2, "value":I
    :goto_8
    return v2

    .line 83
    .end local v2    # "value":I
    .restart local v1    # "value":Z
    :catch_9
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    move v2, v1

    .line 86
    .restart local v2    # "value":I
    goto :goto_8

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "value":I
    :catchall_13
    move-exception v3

    move v2, v1

    .restart local v2    # "value":I
    goto :goto_8
.end method

.method public onCoverAppCovered(Z)I
    .registers 5
    .param p1, "covered"    # Z

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 96
    :goto_6
    return v1

    .line 94
    :catch_7
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onSViewCoverHide()V
    .registers 4

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverHide()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 67
    :goto_5
    return-void

    .line 64
    :catch_6
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onSViewCoverShow()V
    .registers 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverShow()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 58
    :goto_5
    return-void

    .line 54
    :catch_6
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onSystemReady()V
    .registers 4

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 48
    :goto_5
    return-void

    .line 45
    :catch_6
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 76
    :goto_5
    return-void

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
