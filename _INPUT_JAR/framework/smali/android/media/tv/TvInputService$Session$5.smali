.class Landroid/media/tv/TvInputService$Session$5;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTrackSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 377
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    iput-object p3, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$5;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$600(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputService$Session$5;->val$type:I

    iget-object v3, p0, Landroid/media/tv/TvInputService$Session$5;->val$trackId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputSessionCallback;->onTrackSelected(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 386
    :goto_d
    return-void

    .line 383
    :catch_e
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyTrackSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
