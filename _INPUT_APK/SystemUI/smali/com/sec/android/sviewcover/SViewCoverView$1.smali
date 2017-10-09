.class Lcom/sec/android/sviewcover/SViewCoverView$1;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMissedEventsArrived(II)V
    .locals 3
    .param p1, "missedMessageCount"    # I
    .param p2, "missedCallCount"    # I

    .prologue
    .line 331
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMissedCallbacks.onMissedEventsArrived: missedMessageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", missedCallCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    add-int v0, p1, p2

    if-lez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$102(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/sviewcover/SViewCoverView;II)V

    .line 341
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$102(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z

    goto :goto_0
.end method

.method public onMissedEventsExists(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 318
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMissedCallbacks.onMissedEventsExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    if-eqz p1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$102(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$200(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 327
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$102(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z

    goto :goto_0
.end method
