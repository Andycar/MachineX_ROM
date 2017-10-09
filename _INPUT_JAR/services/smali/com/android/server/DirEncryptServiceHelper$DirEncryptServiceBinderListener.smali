.class final Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirEncryptServiceBinderListener"
.end annotation


# instance fields
.field final mListener:Landroid/os/storage/IDirEncryptServiceListener;

.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    .line 122
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 125
    const-string v0, "An IDirEncryptServiceListener has died!"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_c
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    invoke-interface {v0}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v0
.end method
