.class final Landroid/os/ParcelFileDescriptor$ListenerBridge;
.super Ljava/lang/Thread;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerBridge"
.end annotation


# instance fields
.field private mCommFd:Ljava/io/FileDescriptor;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .registers 5
    .param p1, "comm"    # Ljava/io/FileDescriptor;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1016
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    .line 1017
    new-instance v0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;-><init>(Landroid/os/ParcelFileDescriptor$ListenerBridge;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mHandler:Landroid/os/Handler;

    .line 1024
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1029
    const/16 v2, 0x400

    :try_start_3
    new-array v0, v2, [B

    .line 1030
    .local v0, "buf":[B
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    # invokes: Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->access$000(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v1

    .line 1031
    .local v1, "status":Landroid/os/ParcelFileDescriptor$Status;
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 1033
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1034
    iput-object v4, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    .line 1036
    return-void

    .line 1033
    .end local v0    # "buf":[B
    .end local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    :catchall_1d
    move-exception v2

    iget-object v3, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1034
    iput-object v4, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge;->mCommFd:Ljava/io/FileDescriptor;

    throw v2
.end method
