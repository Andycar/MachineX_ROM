.class Landroid/media/RemoteController$TopTransportSessionListener;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopTransportSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .registers 2

    .prologue
    .line 800
    iput-object p1, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/RemoteController;
    .param p2, "x1"    # Landroid/media/RemoteController$1;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 806
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v4, :cond_23

    .line 807
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 808
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 811
    .local v2, "flags":J
    const-wide/16 v6, 0x2

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_20

    .line 812
    iget-object v5, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V
    invoke-static {v5, v0}, Landroid/media/RemoteController;->access$1000(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    .line 817
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    :goto_1f
    return-void

    .line 806
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    .restart local v2    # "flags":J
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 816
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    :cond_23
    iget-object v5, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    const/4 v6, 0x0

    # invokes: Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V
    invoke-static {v5, v6}, Landroid/media/RemoteController;->access$1000(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    goto :goto_1f
.end method
