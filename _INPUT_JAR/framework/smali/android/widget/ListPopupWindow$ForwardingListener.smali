.class public abstract Landroid/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;,
        Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1240
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1243
    iget v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1245
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1246
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1205
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private clearCallbacks()V
    .registers 3

    .prologue
    .line 1392
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 1393
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1396
    :cond_b
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 1397
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1399
    :cond_16
    return-void
.end method

.method private onLongPress()V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1402
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1404
    iget-object v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1405
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1424
    :cond_d
    :goto_d
    return-void

    .line 1409
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1414
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1418
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1419
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1420
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1422
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1423
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    goto :goto_d
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1434
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1435
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v5

    .line 1436
    .local v5, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1459
    :cond_10
    :goto_10
    return v8

    .line 1440
    :cond_11
    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-static {v5}, Landroid/widget/ListPopupWindow;->access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    .line 1441
    .local v1, "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1446
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1447
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v2}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1448
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow$DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1451
    iget v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v9}, Landroid/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1452
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1456
    .local v0, "action":I
    if-eq v0, v7, :cond_40

    const/4 v9, 0x3

    if-eq v0, v9, :cond_40

    move v4, v7

    .line 1459
    .local v4, "keepForwarding":Z
    :goto_3a
    if-eqz v3, :cond_42

    if-eqz v4, :cond_42

    :goto_3e
    move v8, v7

    goto :goto_10

    .end local v4    # "keepForwarding":Z
    :cond_40
    move v4, v8

    .line 1456
    goto :goto_3a

    .restart local v4    # "keepForwarding":Z
    :cond_42
    move v7, v8

    .line 1459
    goto :goto_3e
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1345
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1346
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1388
    :cond_b
    :goto_b
    return v5

    .line 1350
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1351
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_6c

    goto :goto_b

    .line 1353
    :pswitch_14
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1354
    iput-boolean v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1356
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_27

    .line 1357
    new-instance v6, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {v6, p0, v10}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1359
    :cond_27
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1361
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3a

    .line 1362
    new-instance v6, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {v6, p0, v10}, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1364
    :cond_3a
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1367
    :pswitch_43
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1368
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_b

    .line 1369
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1370
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1373
    .local v4, "y":F
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/View;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1374
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1377
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 1378
    goto :goto_b

    .line 1384
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_67
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_b

    .line 1351
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_67
        :pswitch_43
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Landroid/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .registers 3

    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1315
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1316
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1318
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .registers 3

    .prologue
    .line 1331
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1332
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1333
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1335
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 1262
    iget-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1264
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_27

    .line 1265
    iget-boolean v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v2, :cond_17

    .line 1269
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1286
    .local v9, "forwarding":Z
    :cond_f
    :goto_f
    iput-boolean v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1287
    if-nez v9, :cond_15

    if-eqz v10, :cond_16

    :cond_15
    move v7, v11

    :cond_16
    return v7

    .line 1271
    .end local v9    # "forwarding":Z
    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v9, v11

    .restart local v9    # "forwarding":Z
    :goto_24
    goto :goto_f

    .end local v9    # "forwarding":Z
    :cond_25
    move v9, v7

    goto :goto_24

    .line 1274
    :cond_27
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_4a

    move v9, v11

    .line 1276
    .restart local v9    # "forwarding":Z
    :goto_34
    if-eqz v9, :cond_f

    .line 1278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1279
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1281
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1282
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_f

    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_4a
    move v9, v7

    .line 1274
    goto :goto_34
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1292
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1297
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1299
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 1300
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1302
    :cond_11
    return-void
.end method
