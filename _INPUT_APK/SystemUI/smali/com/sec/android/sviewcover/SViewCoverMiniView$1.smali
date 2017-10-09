.class Lcom/sec/android/sviewcover/SViewCoverMiniView$1;
.super Ljava/lang/Object;
.source "SViewCoverMiniView.java"

# interfaces
.implements Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMissedEventsArrived(II)V
    .locals 3
    .param p1, "missedMessageCount"    # I
    .param p2, "missedCallCount"    # I

    .prologue
    .line 192
    const-string v0, "SViewCoverMiniView"

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

    .line 194
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    add-int v0, p1, p2

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$102(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$200(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    .line 202
    :cond_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$102(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    goto :goto_0
.end method

.method public onMissedEventsExists(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 179
    const-string v0, "SViewCoverMiniView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMissedCallbacks.onMissedEventsExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$000(Lcom/sec/android/sviewcover/SViewCoverMiniView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$102(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$200(Lcom/sec/android/sviewcover/SViewCoverMiniView;)V

    .line 188
    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMiniView$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->access$102(Lcom/sec/android/sviewcover/SViewCoverMiniView;Z)Z

    goto :goto_0
.end method
