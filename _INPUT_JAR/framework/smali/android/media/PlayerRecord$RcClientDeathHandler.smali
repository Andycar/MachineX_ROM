.class Landroid/media/PlayerRecord$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/media/PlayerRecord;


# direct methods
.method constructor <init>(Landroid/media/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 158
    iput-object p1, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->this$0:Landroid/media/PlayerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    .line 160
    iput-object p3, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    .line 161
    return-void
.end method

.method static synthetic access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Landroid/media/PlayerRecord$RcClientDeathHandler;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    .line 169
    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 170
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
