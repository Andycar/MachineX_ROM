.class Lcom/android/server/location/RemoteListenerHelper$LinkedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkedListener"
.end annotation


# instance fields
.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    .line 134
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 143
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Listener died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)Z

    .line 145
    return-void
.end method

.method public getUnderlyingListener()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT",
            "Listener;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->mListener:Landroid/os/IInterface;

    return-object v0
.end method
