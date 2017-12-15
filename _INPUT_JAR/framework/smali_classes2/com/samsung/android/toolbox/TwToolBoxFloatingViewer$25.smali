.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1216
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1220
    const/4 v2, 0x1

    .line 1221
    .local v2, "keepGoing":Z
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    sub-int v0, v3, v6

    .line 1222
    .local v0, "deltaX":I
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    sub-int v1, v3, v6

    .line 1224
    .local v1, "deltaY":I
    if-nez v0, :cond_44

    if-nez v1, :cond_44

    .line 1225
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1226
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V
    invoke-static {v3, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)V

    .line 1227
    const/4 v2, 0x0

    .line 1228
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1229
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 1230
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z
    invoke-static {v3, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 1236
    :cond_44
    if-eqz v0, :cond_5d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-ge v3, v6, :cond_5d

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-lez v0, :cond_b0

    move v3, v4

    :goto_5b
    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 1237
    :cond_5d
    if-eqz v1, :cond_76

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v6

    if-ge v3, v6, :cond_76

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v3

    if-lez v1, :cond_74

    move v5, v4

    :cond_74
    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1239
    :cond_76
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    div-int v5, v0, v5

    # += operator for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I
    invoke-static {v3, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5312(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1240
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I

    move-result v5

    div-int v5, v1, v5

    # += operator for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I
    invoke-static {v3, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5512(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 1242
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V

    .line 1244
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;

    move-result-object v3

    if-eqz v3, :cond_af

    if-eqz v2, :cond_af

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1245
    :cond_af
    return-void

    :cond_b0
    move v3, v5

    .line 1236
    goto :goto_5b
.end method
