.class Landroid/media/tv/TvInputService$Session$9;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$rating:Landroid/media/tv/TvContentRating;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V
    .registers 3

    .prologue
    .line 509
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$9;->this$0:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$9;->val$rating:Landroid/media/tv/TvContentRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$9;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;
    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->access$600(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$9;->val$rating:Landroid/media/tv/TvContentRating;

    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onContentBlocked(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 518
    :goto_f
    return-void

    .line 515
    :catch_10
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputService"

    const-string v2, "error in notifyContentBlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
