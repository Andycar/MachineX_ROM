.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public grip:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3447
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3456
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3457
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 3461
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3462
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 3463
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3462
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3465
    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3586
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3587
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3588
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3589
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3590
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3591
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3592
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3593
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3594
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3596
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3599
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    .line 3601
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 11
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    const/4 v8, 0x0

    .line 3609
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3610
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3611
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_20

    .line 3612
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3613
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3614
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3615
    .local v4, "values":[F
    if-eqz v4, :cond_18

    array-length v5, v4

    if-le v2, v5, :cond_1d

    .line 3616
    :cond_18
    array-length v5, v3

    new-array v4, v5, [F

    .line 3617
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3619
    :cond_1d
    invoke-static {v3, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3622
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_20
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3623
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3624
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3625
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3626
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3627
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3628
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3629
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3630
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3634
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3644
    return-void
.end method

.method public getAxisValue(I)F
    .registers 14
    .param p1, "axis"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 3656
    sparse-switch p1, :sswitch_data_52

    .line 3685
    if-ltz p1, :cond_b

    const/16 v5, 0x3f

    if-le p1, v5, :cond_34

    .line 3686
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3658
    :sswitch_13
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3694
    :goto_15
    return v5

    .line 3660
    :sswitch_16
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_15

    .line 3662
    :sswitch_19
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_15

    .line 3664
    :sswitch_1c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_15

    .line 3666
    :sswitch_1f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_15

    .line 3668
    :sswitch_22
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_15

    .line 3670
    :sswitch_25
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_15

    .line 3672
    :sswitch_28
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_15

    .line 3674
    :sswitch_2b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_15

    .line 3677
    :sswitch_2e
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_15

    .line 3681
    :sswitch_31
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_15

    .line 3688
    :cond_34
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3689
    .local v2, "bits":J
    const-wide/high16 v6, -0x8000000000000000L

    ushr-long v0, v6, p1

    .line 3690
    .local v0, "axisBit":J
    and-long v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_44

    .line 3691
    const/4 v5, 0x0

    goto :goto_15

    .line 3693
    :cond_44
    ushr-long v6, v10, p1

    xor-long/2addr v6, v10

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3694
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_15

    .line 3656
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_13
        0x1 -> :sswitch_16
        0x2 -> :sswitch_19
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_1f
        0x5 -> :sswitch_22
        0x6 -> :sswitch_25
        0x7 -> :sswitch_28
        0x8 -> :sswitch_2b
        0x30 -> :sswitch_2e
        0x31 -> :sswitch_31
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .registers 16
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    .line 3709
    sparse-switch p1, :sswitch_data_80

    .line 3747
    :goto_6
    if-ltz p1, :cond_c

    const/16 v8, 0x3f

    if-le p1, v8, :cond_35

    .line 3748
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3711
    :sswitch_14
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3779
    :goto_16
    return-void

    .line 3714
    :sswitch_17
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_16

    .line 3717
    :sswitch_1a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_16

    .line 3720
    :sswitch_1d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_16

    .line 3723
    :sswitch_20
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_16

    .line 3726
    :sswitch_23
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_16

    .line 3729
    :sswitch_26
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_16

    .line 3732
    :sswitch_29
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_16

    .line 3735
    :sswitch_2c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_16

    .line 3739
    :sswitch_2f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_16

    .line 3744
    :sswitch_32
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_6

    .line 3750
    :cond_35
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3751
    .local v2, "bits":J
    const-wide/high16 v8, -0x8000000000000000L

    ushr-long v0, v8, p1

    .line 3752
    .local v0, "axisBit":J
    ushr-long v8, v10, p1

    xor-long/2addr v8, v10

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3753
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3754
    .local v7, "values":[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_59

    .line 3755
    if-nez v7, :cond_5c

    .line 3756
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3757
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3774
    :cond_55
    :goto_55
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3776
    :cond_59
    aput p2, v7, v5

    goto :goto_16

    .line 3759
    :cond_5c
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3760
    .local v4, "count":I
    array-length v8, v7

    if-ge v4, v8, :cond_6d

    .line 3761
    if-eq v5, v4, :cond_55

    .line 3762
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_55

    .line 3766
    :cond_6d
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3767
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3768
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3770
    move-object v7, v6

    .line 3771
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_55

    .line 3709
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_17
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_20
        0x5 -> :sswitch_23
        0x6 -> :sswitch_26
        0x7 -> :sswitch_29
        0x8 -> :sswitch_2c
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_32
    .end sparse-switch
.end method
