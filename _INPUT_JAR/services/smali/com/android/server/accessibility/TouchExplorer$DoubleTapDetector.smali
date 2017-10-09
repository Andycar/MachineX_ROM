.class Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/TouchExplorer$1;

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1183
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 1184
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1185
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    .line 1187
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 1188
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1189
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1191
    :cond_17
    return-void
.end method

.method public firstTapDetected()Z
    .registers 5

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .registers 25
    .param p1, "secondTapUp"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_8

    .line 1180
    :cond_7
    :goto_7
    return-void

    .line 1147
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1154
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1158
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1159
    .local v20, "pointerId":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1161
    .local v21, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    move-result-object v18

    .line 1162
    .local v18, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)Z
    invoke-static {v2, v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1167
    const/4 v2, 0x1

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1168
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 1169
    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1170
    const/4 v2, 0x1

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1171
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 1172
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1173
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 1178
    .local v19, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v19

    move/from16 v1, p2

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    .line 1179
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_7
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v5, 0x0

    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1089
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1090
    .local v0, "action":I
    packed-switch v0, :pswitch_data_aa

    .line 1138
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 1093
    :pswitch_d
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    .line 1097
    :cond_1c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1101
    :pswitch_23
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_c

    .line 1104
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    goto :goto_c

    .line 1108
    :cond_33
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1110
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1112
    :cond_59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1113
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1114
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1117
    :cond_67
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onDoubleTap(Landroid/view/MotionEvent;I)V

    .line 1120
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1121
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1122
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1123
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1126
    :cond_8d
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1127
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1134
    :cond_94
    :goto_94
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1135
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_c

    .line 1129
    :cond_9d
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_94

    .line 1130
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1131
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_94

    .line 1090
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_d
        :pswitch_23
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method
