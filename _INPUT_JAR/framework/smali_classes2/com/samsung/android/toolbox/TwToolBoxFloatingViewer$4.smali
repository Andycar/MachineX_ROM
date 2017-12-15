.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;
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
    .line 506
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 508
    const/4 v4, 0x0

    .line 510
    .local v4, "needUpdate":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    .line 511
    .local v1, "coverOpen":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v1, v5, :cond_15

    .line 512
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z
    invoke-static {v5, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 513
    const/4 v4, 0x1

    .line 516
    :cond_15
    const/4 v2, 0x0

    .line 518
    .local v2, "isDreaming":Z
    :try_start_16
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 519
    const/4 v2, 0x1

    .line 520
    const-string/jumbo v5, "toolbox"

    const-string v6, "Daydream isDreaming"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_8b

    .line 525
    :cond_2b
    :goto_2b
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardShowing()Z

    move-result v5

    if-nez v5, :cond_4b

    if-nez v2, :cond_4b

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->inKeyguardRestrictedKeyInputMode()Z

    move-result v5

    if-eqz v5, :cond_89

    :cond_4b
    const/4 v3, 0x1

    .line 527
    .local v3, "keyguardShowing":Z
    :goto_4c
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v3, v5, :cond_5a

    .line 528
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z
    invoke-static {v5, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 529
    const/4 v4, 0x1

    .line 532
    :cond_5a
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v0

    .line 533
    .local v0, "OTAShowing":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v0, v5, :cond_6e

    .line 534
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z
    invoke-static {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 535
    const/4 v4, 0x1

    .line 538
    :cond_6e
    if-eqz v4, :cond_88

    .line 539
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 540
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    :cond_88
    return-void

    .line 525
    .end local v0    # "OTAShowing":Z
    .end local v3    # "keyguardShowing":Z
    :cond_89
    const/4 v3, 0x0

    goto :goto_4c

    .line 522
    :catch_8b
    move-exception v5

    goto :goto_2b
.end method
