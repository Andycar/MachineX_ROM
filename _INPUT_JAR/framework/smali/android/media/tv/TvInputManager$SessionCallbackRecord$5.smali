.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 373
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    iput-object p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 376
    iget v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    if-nez v0, :cond_23

    .line 377
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    # setter for: Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->access$502(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    :goto_f
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    iget-object v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V

    .line 387
    :cond_22
    return-void

    .line 378
    :cond_23
    iget v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 379
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    # setter for: Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->access$602(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 380
    :cond_34
    iget v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 381
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    # setter for: Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->access$702(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f
.end method
