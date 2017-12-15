.class public Landroid/hardware/scontext/SContextMovementForPositioningAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextMovementForPositioningAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextMovementForPositioningAttribute"


# instance fields
.field private mMoveDistanceThrs:D

.field private mMoveDurationThrs:I

.field private mMoveMinDurationThrs:I

.field private mNomoveDurationThrs:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v0, 0x3c

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 44
    return-void
.end method

.method public constructor <init>(IIDI)V
    .registers 9
    .param p1, "nomoveDurationThrs"    # I
    .param p2, "moveDurationThrs"    # I
    .param p3, "moveDistanceThrs"    # D
    .param p5, "moveMinDurationThrs"    # I

    .prologue
    const/16 v0, 0x3c

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 66
    iput p1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 67
    iput p2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 68
    iput-wide p3, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 69
    iput p5, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method private setAttribute()V
    .registers 5

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "nomove_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v1, "move_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v1, "move_distance_thrs"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 100
    const-string/jumbo v1, "move_min_duration_trhs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const/16 v1, 0x9

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 102
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 76
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    if-gez v1, :cond_d

    .line 77
    const-string v1, "SContextMovementForPositioningAttribute"

    const-string v2, "The nomove duration threshold is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_c
    return v0

    .line 80
    :cond_d
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    if-gez v1, :cond_19

    .line 81
    const-string v1, "SContextMovementForPositioningAttribute"

    const-string v2, "The move duration threshold is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 84
    :cond_19
    iget-wide v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_29

    .line 85
    const-string v1, "SContextMovementForPositioningAttribute"

    const-string v2, "The move distance threshold is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 88
    :cond_29
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    if-gez v1, :cond_35

    .line 89
    const-string v1, "SContextMovementForPositioningAttribute"

    const-string v2, "The move minimum duration threshold is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 92
    :cond_35
    const/4 v0, 0x1

    goto :goto_c
.end method
