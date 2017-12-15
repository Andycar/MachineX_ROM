.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1476
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1477
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1478
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/inputmethodservice/KeyboardView$1;

    .prologue
    .line 1471
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .registers 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 1498
    const/4 v1, -0x1

    .line 1500
    .local v1, "drop":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1501
    .local v3, "pastTime":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_f

    .line 1502
    aget-wide v8, v3, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_44

    .line 1508
    :cond_f
    const/4 v7, 0x4

    if-ne v2, v7, :cond_15

    if-gez v1, :cond_15

    .line 1509
    const/4 v1, 0x0

    .line 1511
    :cond_15
    if-ne v1, v2, :cond_19

    add-int/lit8 v1, v1, -0x1

    .line 1512
    :cond_19
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1513
    .local v4, "pastX":[F
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1514
    .local v5, "pastY":[F
    if-ltz v1, :cond_34

    .line 1515
    add-int/lit8 v6, v1, 0x1

    .line 1516
    .local v6, "start":I
    rsub-int/lit8 v7, v1, 0x4

    add-int/lit8 v0, v7, -0x1

    .line 1517
    .local v0, "count":I
    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1518
    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1519
    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1520
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    .line 1522
    .end local v0    # "count":I
    .end local v6    # "start":I
    :cond_34
    aput p1, v4, v2

    .line 1523
    aput p2, v5, v2

    .line 1524
    aput-wide p3, v3, v2

    .line 1525
    add-int/lit8 v2, v2, 0x1

    .line 1526
    const/4 v7, 0x4

    if-ge v2, v7, :cond_43

    .line 1527
    const-wide/16 v8, 0x0

    aput-wide v8, v3, v2

    .line 1529
    :cond_43
    return-void

    .line 1504
    .end local v4    # "pastX":[F
    .end local v5    # "pastY":[F
    :cond_44
    aget-wide v8, v3, v2

    const-wide/16 v10, 0xc8

    sub-long v10, p3, v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_4f

    .line 1505
    move v1, v2

    .line 1501
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1489
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1490
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 1491
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1494
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1495
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1485
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .param p1, "units"    # I

    .prologue
    .line 1532
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1533
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 23
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 1536
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1537
    .local v13, "pastX":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1538
    .local v14, "pastY":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1540
    .local v12, "pastTime":[J
    const/16 v16, 0x0

    aget v10, v13, v16

    .line 1541
    .local v10, "oldestX":F
    const/16 v16, 0x0

    aget v11, v14, v16

    .line 1542
    .local v11, "oldestY":F
    const/16 v16, 0x0

    aget-wide v8, v12, v16

    .line 1543
    .local v8, "oldestTime":J
    const/4 v3, 0x0

    .line 1544
    .local v3, "accumX":F
    const/4 v4, 0x0

    .line 1545
    .local v4, "accumY":F
    const/4 v2, 0x0

    .line 1546
    .local v2, "N":I
    :goto_1b
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v2, v0, :cond_29

    .line 1547
    aget-wide v16, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_38

    .line 1553
    :cond_29
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2a
    if-ge v7, v2, :cond_78

    .line 1554
    aget-wide v16, v12, v7

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1555
    .local v6, "dur":I
    if-nez v6, :cond_3b

    .line 1553
    :goto_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 1550
    .end local v6    # "dur":I
    .end local v7    # "i":I
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1556
    .restart local v6    # "dur":I
    .restart local v7    # "i":I
    :cond_3b
    aget v16, v13, v7

    sub-float v5, v16, v10

    .line 1557
    .local v5, "dist":F
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1558
    .local v15, "vel":F
    const/16 v16, 0x0

    cmpl-float v16, v3, v16

    if-nez v16, :cond_6a

    move v3, v15

    .line 1561
    :goto_52
    aget v16, v14, v7

    sub-float v5, v16, v11

    .line 1562
    int-to-float v0, v6

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1563
    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-nez v16, :cond_71

    move v4, v15

    goto :goto_35

    .line 1559
    :cond_6a
    add-float v16, v3, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v3, v16, v17

    goto :goto_52

    .line 1564
    :cond_71
    add-float v16, v4, v15

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v4, v16, v17

    goto :goto_35

    .line 1566
    .end local v5    # "dist":F
    .end local v6    # "dur":I
    .end local v15    # "vel":F
    :cond_78
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_a7

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_89
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1568
    const/16 v16, 0x0

    cmpg-float v16, v4, v16

    if-gez v16, :cond_ae

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_a0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1570
    return-void

    .line 1566
    :cond_a7
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_89

    .line 1568
    :cond_ae
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_a0
.end method

.method public getXVelocity()F
    .registers 2

    .prologue
    .line 1573
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .prologue
    .line 1577
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
