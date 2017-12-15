.class Landroid/media/MediaFocusControl$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mClientNotifListComp:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private final mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .registers 6
    .param p2, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v0, -0x1

    .line 1737
    iput-object p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 1732
    iput v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 1733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    .line 1735
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    .line 1739
    iput-object p2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 1740
    invoke-interface {p2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    .line 1741
    iput p3, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 1742
    iput p4, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 1743
    return-void
.end method

.method static synthetic access$2300(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget-boolean v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Z

    .prologue
    .line 1727
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 1727
    iput-object p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget-boolean v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return v0
.end method

.method static synthetic access$502(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Z

    .prologue
    .line 1727
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # I

    .prologue
    .line 1727
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .prologue
    .line 1727
    iget v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # I

    .prologue
    .line 1727
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p1
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 1766
    iget-object v2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mPRStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/MediaFocusControl;->access$2400(Landroid/media/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 1767
    :try_start_7
    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteControl: display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/MediaFocusControl;->access$2500(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1770
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1772
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    iget-object v2, v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget-object v4, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-ne v2, v4, :cond_31

    .line 1774
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1775
    monitor-exit v3

    .line 1779
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :goto_47
    return-void

    .line 1778
    :cond_48
    monitor-exit v3

    goto :goto_47

    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public init()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1747
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 1753
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 1748
    :catch_9
    move-exception v0

    .line 1750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public release()V
    .registers 4

    .prologue
    .line 1758
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1763
    :goto_6
    return-void

    .line 1759
    :catch_7
    move-exception v0

    .line 1761
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Error in DisplaInfoForServer.relase()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
