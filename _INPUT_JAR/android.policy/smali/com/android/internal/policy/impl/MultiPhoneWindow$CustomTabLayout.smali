.class Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
.super Landroid/widget/LinearLayout;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTabLayout"
.end annotation


# instance fields
.field private handled:Z

.field private interporation:I

.field private lastMoveX:I

.field private lastMoveY:I

.field public longPressed:Z

.field public moving:Z

.field private sipHiding:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2584
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .line 2585
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2575
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    .line 2578
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    .line 2580
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    .line 2581
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    .line 2582
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    .line 2586
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    .prologue
    .line 2574
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2591
    .local v0, "action":I
    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomTabLayout::dispatchTouchEvent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    packed-switch v0, :pswitch_data_130

    .line 2649
    :cond_21
    :goto_21
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    if-eqz v2, :cond_111

    .line 2650
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    .line 2651
    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomTabLayout::handled ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :goto_3f
    return v1

    .line 2594
    :pswitch_40
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    .line 2595
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    .line 2596
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    .line 2597
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2598
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    .line 2599
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_21

    .line 2605
    :pswitch_53
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_67

    .line 2606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_move(II)V

    .line 2607
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_21

    .line 2608
    :cond_67
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    if-nez v2, :cond_a4

    .line 2609
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    if-eqz v2, :cond_74

    .line 2610
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->sipHiding:Z

    .line 2611
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto :goto_21

    .line 2614
    :cond_74
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    .line 2615
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 2616
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v2

    if-eqz v2, :cond_93

    .line 2617
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2619
    :cond_93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_down(II)V

    .line 2620
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    goto/16 :goto_21

    .line 2622
    :cond_a4
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_ca

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d9

    .line 2624
    :cond_ca
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    .line 2625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_move(II)V

    .line 2627
    :cond_d9
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    goto/16 :goto_21

    .line 2634
    :pswitch_dd
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_f5

    .line 2635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_up(II)V

    .line 2636
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 2637
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    .line 2639
    :cond_f5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    if-eqz v2, :cond_21

    .line 2640
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->moving:Z

    .line 2641
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->handled:Z

    .line 2642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->tab_action_up(II)V

    .line 2643
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_21

    .line 2654
    :cond_111
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomTabLayout::not handled ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_3f

    .line 2592
    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_40
        :pswitch_dd
        :pswitch_53
        :pswitch_dd
    .end packed-switch
.end method

.method public tab_action_down(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2660
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    .line 2661
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    .line 2662
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    .line 2663
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2664
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 2666
    :cond_27
    return-void
.end method

.method public tab_action_move(II)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2669
    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    sub-int v1, p1, v4

    .line 2670
    .local v1, "dx":I
    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    sub-int v2, p2, v4

    .line 2672
    .local v2, "dy":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2674
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2676
    :try_start_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_4c

    .line 2682
    :cond_36
    :goto_36
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2683
    .local v0, "dockingBound":Landroid/graphics/Rect;
    if-eqz v0, :cond_51

    .line 2684
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 2689
    :goto_47
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    .line 2690
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    .line 2691
    return-void

    .line 2677
    .end local v0    # "dockingBound":Landroid/graphics/Rect;
    :catch_4c
    move-exception v3

    .line 2678
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 2686
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "dockingBound":Landroid/graphics/Rect;
    :cond_51
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    goto :goto_47
.end method

.method public tab_action_up(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2694
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveX:I

    sub-int v0, p1, v2

    .line 2695
    .local v0, "dx":I
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->lastMoveY:I

    sub-int v1, p2, v2

    .line 2697
    .local v1, "dy":I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->longPressed:Z

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 2698
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2699
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->getTabFocusedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundByStackId(ILandroid/graphics/Rect;)V
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;ILandroid/graphics/Rect;)V

    .line 2711
    :goto_3c
    return-void

    .line 2703
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2704
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    .line 2705
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_3c

    .line 2708
    :cond_76
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2709
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_3c
.end method
