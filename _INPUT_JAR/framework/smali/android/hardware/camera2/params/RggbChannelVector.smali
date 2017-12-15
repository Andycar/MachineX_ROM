.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final COUNT:I = 0x4

.field public static final GREEN_EVEN:I = 0x1

.field public static final GREEN_ODD:I = 0x2

.field public static final RED:I


# instance fields
.field private final mBlue:F

.field private final mGreenEven:F

.field private final mGreenOdd:F

.field private final mRed:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 6
    .param p1, "red"    # F
    .param p2, "greenEven"    # F
    .param p3, "greenOdd"    # F
    .param p4, "blue"    # F

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "red"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 61
    const-string v0, "greenEven"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 62
    const-string v0, "greenOdd"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 63
    const-string v0, "blue"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 64
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 215
    const-string/jumbo v0, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo([FI)V
    .registers 5
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 148
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    .line 150
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_12
    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    aput v1, p1, v0

    .line 154
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    aput v1, p1, v0

    .line 155
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    aput v1, p1, v0

    .line 156
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    aput v1, p1, v0

    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-nez p1, :cond_5

    .line 179
    :cond_4
    :goto_4
    return v2

    .line 170
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    instance-of v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 173
    check-cast v0, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 174
    .local v0, "other":Landroid/hardware/camera2/params/RggbChannelVector;
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_32

    :goto_30
    move v2, v1

    goto :goto_4

    :cond_32
    move v1, v2

    goto :goto_30
.end method

.method public getBlue()F
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0
.end method

.method public getComponent(I)F
    .registers 5
    .param p1, "colorChannel"    # I

    .prologue
    .line 114
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-lt p1, v0, :cond_d

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color channel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_d
    packed-switch p1, :pswitch_data_36

    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 120
    :pswitch_29
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 126
    :goto_2b
    return v0

    .line 122
    :pswitch_2c
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    goto :goto_2b

    .line 124
    :pswitch_2f
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    goto :goto_2b

    .line 126
    :pswitch_32
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    goto :goto_2b

    .line 118
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public getGreenEven()F
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0
.end method

.method public getGreenOdd()F
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0
.end method

.method public final getRed()F
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 203
    const-string v0, "RggbChannelVector%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
