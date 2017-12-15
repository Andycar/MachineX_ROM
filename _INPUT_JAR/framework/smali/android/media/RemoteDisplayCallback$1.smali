.class Landroid/media/RemoteDisplayCallback$1;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$1;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 104
    const-string v0, "RemoteDisplayCallback"

    const-string/jumbo v1, "mWfdSourceService connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback$1;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-static {p2}, Lcom/samsung/wfd/IWfdSourceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdSourceService;

    move-result-object v1

    iput-object v1, v0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 106
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    const-string v0, "RemoteDisplayCallback"

    const-string/jumbo v1, "mWfdSourceService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Landroid/media/RemoteDisplayCallback$1;->this$0:Landroid/media/RemoteDisplayCallback;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteDisplayCallback;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 111
    return-void
.end method
