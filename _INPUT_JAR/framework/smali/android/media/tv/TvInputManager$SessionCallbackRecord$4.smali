.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$tracks:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 350
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 353
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$200(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 354
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$300(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 355
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$400(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 356
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 357
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4d

    .line 358
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$200(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 359
    :cond_4d
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    .line 360
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$300(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 361
    :cond_62
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    .line 362
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    # getter for: Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->access$400(Landroid/media/tv/TvInputManager$Session;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 367
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_77
    iget-object v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;
    invoke-static {v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v3}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v3

    iget-object v4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;->val$tracks:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$SessionCallback;->onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V

    .line 368
    return-void
.end method
