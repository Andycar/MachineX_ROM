.class Landroid/service/media/MediaBrowserService$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$1;->val$parentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 358
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 359
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    # getter for: Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$100(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 360
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 361
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$1;->val$parentId:Ljava/lang/String;

    # invokes: Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    invoke-static {v3, v4, v1}, Landroid/service/media/MediaBrowserService;->access$600(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    goto :goto_e

    .line 364
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :cond_38
    return-void
.end method
