.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mTextView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 6
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12638
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    .line 12626
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12627
    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 12628
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12629
    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12630
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12631
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    .line 12633
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 12634
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 12635
    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12636
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    .line 12639
    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    .line 12640
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 12643
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 12645
    .local v2, "action":I
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEnableMultiSelection:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_23

    .line 12902
    :cond_22
    :goto_22
    return-void

    .line 12649
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 12650
    .local v11, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 12652
    .local v12, "rawY":F
    if-nez v2, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_3b

    :cond_35
    const/16 v16, 0xd3

    move/from16 v0, v16

    if-ne v2, v0, :cond_288

    .line 12655
    :cond_3b
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$3000()Z

    move-result v16

    if-nez v16, :cond_86

    .line 12656
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_53

    .line 12657
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 12658
    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12660
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->canTextMultiSelection()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_7c

    .line 12666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 12667
    .local v4, "curTime":J
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3300()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_7c

    # getter for: Landroid/widget/TextView;->mLastHoveredTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3400()J

    move-result-wide v16

    sub-long v16, v4, v16

    const-wide/16 v18, 0x64

    cmp-long v16, v16, v18

    if-gez v16, :cond_7c

    .line 12668
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3300()Landroid/widget/TextView;

    move-result-object v16

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12671
    .end local v4    # "curTime":J
    :cond_7c
    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3302(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 12672
    const/16 v16, 0x1

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3002(Z)Z

    .line 12674
    :cond_86
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$3000()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a0

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_22

    .line 12677
    :cond_a0
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_cb

    .line 12678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_22

    .line 12679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    goto/16 :goto_22

    .line 12684
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    if-eqz v16, :cond_e7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v16

    if-eqz v16, :cond_22

    .line 12687
    :cond_e7
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_265

    .line 12688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_10c

    .line 12689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    .line 12691
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;III)Z

    move-result v16

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->canSelectText()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 12707
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12708
    .local v15, "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_22

    .line 12710
    sparse-switch v2, :sswitch_data_792

    goto/16 :goto_22

    .line 12714
    :sswitch_141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->hideMultiSelectPopupWindow()V
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4000(Landroid/widget/TextView;)V

    .line 12715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v16

    if-nez v16, :cond_164

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_29d

    :cond_164
    const/16 v16, 0x1

    :goto_166
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    .line 12717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12718
    .local v13, "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v11, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    .line 12719
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v12, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    .line 12720
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12723
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_25e

    .line 12724
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 12726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_252

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_252

    .line 12727
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 12729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v7

    .line 12730
    .local v7, "flag":Z
    if-nez v7, :cond_225

    .line 12731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 12732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    aput v18, v16, v17

    .line 12734
    :cond_225
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a1

    .line 12735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12740
    :cond_24b
    :goto_24b
    const-string v16, "TextView"

    const-string v17, "Pen down with side button! : start text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12742
    .end local v7    # "flag":Z
    :cond_252
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12744
    :cond_25e
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_22

    .line 12695
    .end local v13    # "startPos":Landroid/graphics/Point;
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    # invokes: Landroid/widget/TextView;->checkPosOnText(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;III)Z

    move-result v16

    if-nez v16, :cond_12c

    goto/16 :goto_22

    .line 12701
    :cond_288
    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3002(Z)Z

    .line 12702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_22

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v16

    if-nez v16, :cond_12c

    goto/16 :goto_22

    .line 12715
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_29d
    const/16 v16, 0x0

    goto/16 :goto_166

    .line 12737
    .restart local v7    # "flag":Z
    .restart local v13    # "startPos":Landroid/graphics/Point;
    :cond_2a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_24b

    .line 12738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_24b

    .line 12750
    .end local v7    # "flag":Z
    .end local v13    # "startPos":Landroid/graphics/Point;
    :sswitch_2c8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_44f

    .line 12751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 12752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12753
    .restart local v13    # "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    .line 12754
    .local v3, "endX":F
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    .line 12756
    .local v6, "endY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;III)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 12758
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_33f

    .line 12759
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12762
    :cond_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_37f

    .line 12764
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3a0

    .line 12765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12772
    :cond_37f
    :goto_37f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c7

    .line 12773
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_22

    .line 12774
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_22

    .line 12767
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_3a0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_37f

    .line 12768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_37f

    .line 12779
    :cond_3c7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_22

    .line 12780
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    .line 12781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mHighlightPathBogus:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4402(Landroid/widget/TextView;Z)Z

    .line 12782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    .line 12783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_427

    .line 12784
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 12785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_22

    .line 12787
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isFocused()Z

    move-result v16

    if-nez v16, :cond_43c

    .line 12788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->requestFocus()Z

    .line 12790
    :cond_43c
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_22

    .line 12803
    .end local v3    # "endX":F
    .end local v6    # "endY":F
    .end local v13    # "startPos":Landroid/graphics/Point;
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_44f
    :sswitch_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12804
    .restart local v13    # "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    .line 12805
    .restart local v3    # "endX":F
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    .line 12807
    .restart local v6    # "endY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_49d

    .line 12808
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    .line 12810
    :cond_49d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12811
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_4dd

    .line 12812
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5a8

    .line 12813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12820
    :cond_4dd
    :goto_4dd
    const/4 v10, 0x0

    .line 12821
    .local v10, "isSameLine":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v16

    if-eqz v16, :cond_50d

    .line 12822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5d0

    const/4 v10, 0x1

    .line 12824
    :cond_50d
    :goto_50d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_55c

    if-eqz v10, :cond_55c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_55c

    .line 12825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    # invokes: Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z
    invoke-static/range {v16 .. v18}, Landroid/widget/TextView;->access$4600(Landroid/widget/TextView;II)Z

    move-object/from16 v16, v15

    .line 12826
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v16, v15

    .line 12827
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12829
    :cond_55c
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 12830
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5e3

    .line 12831
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12832
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_5d6

    .line 12833
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    .line 12834
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 12835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_5d3

    const/16 v16, 0x1

    :goto_59f
    move-object/from16 v0, v17

    move/from16 v1, v16

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_22

    .line 12815
    .end local v10    # "isSameLine":Z
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_5a8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4dd

    .line 12816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto/16 :goto_4dd

    .line 12822
    .restart local v10    # "isSameLine":Z
    :cond_5d0
    const/4 v10, 0x0

    goto/16 :goto_50d

    .line 12835
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_5d3
    const/16 v16, 0x0

    goto :goto_59f

    .line 12837
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_5d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_22

    .line 12842
    :cond_5e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_609

    .line 12843
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12844
    .local v14, "temp":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    .line 12845
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    .line 12847
    .end local v14    # "temp":I
    :cond_609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_698

    move-object/from16 v16, v15

    .line 12848
    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 12849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    .line 12853
    :try_start_62d
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 12854
    .local v8, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_657
    .catch Ljava/lang/IllegalStateException; {:try_start_62d .. :try_end_657} :catch_68f

    .line 12858
    .end local v8    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_657
    const-string v16, "TextView"

    const-string v17, "Pen up with side button! : end text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 12863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    .line 12864
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 12881
    .end local v15    # "text":Ljava/lang/CharSequence;
    :cond_677
    :goto_677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 12882
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_22

    .line 12855
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :catch_68f
    move-exception v9

    .line 12856
    .local v9, "ie":Ljava/lang/IllegalStateException;
    const-string v16, "TextView"

    const-string v17, "** skip HERMES Service by IllegalStateException **"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_657

    .line 12865
    .end local v9    # "ie":Ljava/lang/IllegalStateException;
    :cond_698
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_677

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_677

    .line 12866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isTextSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_6b6

    if-eqz v10, :cond_677

    .line 12867
    :cond_6b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x16

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 12868
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_6fd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6fd

    .line 12870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 12872
    :cond_6fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_677

    .line 12873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v16

    if-eqz v16, :cond_726

    .line 12874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->updateSelectionHandler()V

    .line 12876
    :cond_726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_677

    .line 12888
    .end local v3    # "endX":F
    .end local v6    # "endY":F
    .end local v10    # "isSameLine":Z
    .end local v13    # "startPos":Landroid/graphics/Point;
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :sswitch_73a
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    .line 12890
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_772

    .line 12891
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    .line 12892
    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 12893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_76f

    const/16 v16, 0x1

    :goto_766
    move-object/from16 v0, v17

    move/from16 v1, v16

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    goto/16 :goto_22

    :cond_76f
    const/16 v16, 0x0

    goto :goto_766

    .line 12895
    .restart local v15    # "text":Ljava/lang/CharSequence;
    :cond_772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    .line 12896
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_22

    .line 12897
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_22

    .line 12710
    :sswitch_data_792
    .sparse-switch
        0x0 -> :sswitch_141
        0x1 -> :sswitch_44f
        0x2 -> :sswitch_2c8
        0x3 -> :sswitch_73a
        0xd3 -> :sswitch_141
        0xd4 -> :sswitch_44f
        0xd5 -> :sswitch_2c8
        0xd6 -> :sswitch_73a
    .end sparse-switch
.end method
