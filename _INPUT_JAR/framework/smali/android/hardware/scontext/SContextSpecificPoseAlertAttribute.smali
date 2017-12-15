.class public Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSpecificPoseAlertAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSpecificPoseAlertAttribute"


# instance fields
.field private mMaximumAngle:I

.field private mMinimumAngle:I

.field private mMovingThrs:I

.field private mRetentionTime:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v0, -0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v0, 0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "retentionTime"    # I
    .param p2, "minimumAngle"    # I
    .param p3, "maximumAngle"    # I
    .param p4, "movingThrs"    # I

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v0, -0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v0, 0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 64
    iput p1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 65
    iput p2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 66
    iput p3, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 67
    iput p4, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 68
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 69
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "retention_time"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v1, "minimum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v1, "maximum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "moving_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 104
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 5

    .prologue
    const/16 v3, 0x5a

    const/16 v2, -0x5a

    const/4 v0, 0x0

    .line 74
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    if-gez v1, :cond_11

    .line 75
    const-string v1, "SContextSpecificPoseAlertAttribute"

    const-string v2, "The retention time is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_10
    return v0

    .line 78
    :cond_11
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-lt v1, v2, :cond_19

    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-le v1, v3, :cond_21

    .line 79
    :cond_19
    const-string v1, "SContextSpecificPoseAlertAttribute"

    const-string v2, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 82
    :cond_21
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v1, v2, :cond_29

    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v1, v3, :cond_31

    .line 83
    :cond_29
    const-string v1, "SContextSpecificPoseAlertAttribute"

    const-string v2, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 86
    :cond_31
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v1, v2, :cond_3f

    .line 87
    const-string v1, "SContextSpecificPoseAlertAttribute"

    const-string v2, "The minimum angle must be less than the maximum angle."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 90
    :cond_3f
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v1, :cond_4b

    .line 91
    const-string v1, "SContextSpecificPoseAlertAttribute"

    const-string v2, "The moving threshold is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 94
    :cond_4b
    const/4 v0, 0x1

    goto :goto_10
.end method
