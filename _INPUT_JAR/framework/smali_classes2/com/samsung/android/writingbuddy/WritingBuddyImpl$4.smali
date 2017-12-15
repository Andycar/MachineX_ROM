.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .registers 2

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x96

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x7

    .line 1518
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1519
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1522
    :cond_1a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1523
    .local v0, "action":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_72

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I

    move-result v2

    if-nez v2, :cond_72

    .line 1524
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 1525
    .local v1, "im":Landroid/hardware/input/InputManager;
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z
    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/view/View;FF)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1526
    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close WritingBuddy cue : 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1528
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z
    invoke-static {v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$802(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1529
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1545
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_72
    :goto_72
    return v6

    .line 1531
    .restart local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_73
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_72

    .line 1533
    :cond_7d
    if-eqz v1, :cond_9e

    const/4 v2, -0x1

    const/16 v3, -0x100

    const/16 v4, 0x140

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v2

    if-nez v2, :cond_9e

    .line 1534
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Close WritingBuddy cue : 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1536
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const-string v3, "HOVER_CANCELED"

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$900(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 1537
    :cond_9e
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isAirButtonClicked()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1538
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Close WritingBuddy cue : 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_72

    .line 1541
    :cond_bf
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Close WritingBuddy cue : 4"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_72
.end method
