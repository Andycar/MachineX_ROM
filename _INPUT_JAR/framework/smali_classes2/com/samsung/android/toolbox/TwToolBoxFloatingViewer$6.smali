.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;
.super Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 555
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isContain(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 559
    :cond_10
    const/4 v0, 0x0

    .line 563
    :goto_11
    return v0

    .line 561
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 562
    .local v0, "conflict":Z
    const-string/jumbo v1, "toolbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback isContain() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public receiveMessage(Ljava/lang/String;II)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-wide/16 v10, 0x64

    .line 569
    if-ne p2, v6, :cond_a8

    .line 572
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 574
    and-int/lit8 v7, p3, 0x8

    if-eqz v7, :cond_5f

    .line 576
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "lastPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 580
    const/4 v5, 0x0

    .line 581
    .local v5, "needBlock":Z
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_34
    if-ge v2, v4, :cond_45

    aget-object v1, v0, v2

    .line 582
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 583
    const/4 v5, 0x1

    .line 587
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_45
    if-eqz v5, :cond_48

    const/4 v6, 0x4

    :cond_48
    or-int/2addr p3, v6

    .line 590
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_49
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 595
    .end local v3    # "lastPackage":Ljava/lang/String;
    :cond_5f
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_79

    .line 597
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 598
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_79
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_7e

    .line 603
    const/4 p3, 0x4

    .line 606
    :cond_7e
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_95

    .line 607
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v6

    if-nez v6, :cond_95

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 610
    :cond_95
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_a4

    .line 611
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_a4
    :goto_a4
    return-void

    .line 581
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "blockPkg":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "lastPackage":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "needBlock":Z
    :cond_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 614
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "blockPkg":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "lastPackage":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "needBlock":Z
    :cond_a8
    const/4 v6, 0x3

    if-ne p2, v6, :cond_a4

    .line 616
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a4
.end method
