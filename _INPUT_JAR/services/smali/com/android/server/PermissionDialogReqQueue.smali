.class public Lcom/android/server/PermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/PermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/PermissionDialog;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 76
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 77
    .local v0, "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->set(I)V

    .line 78
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v0    # "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v1

    :cond_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 81
    return-void
.end method

.method public register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .registers 3
    .param p1, "res"    # Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setDialog(Lcom/android/server/PermissionDialog;)V
    .registers 2
    .param p1, "mDialog"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 32
    return-void
.end method
