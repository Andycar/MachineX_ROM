.class public Landroid/hardware/scontext/SContextPedometerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextPedometerAttribute.java"


# static fields
.field private static MODE_EXERCISE:I = 0x0

.field private static MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextPedometerAttribute"


# instance fields
.field private mExerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mMode:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 36
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 38
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 40
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 42
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 48
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 49
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "exerciseMode"    # I

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 36
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 38
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 40
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 42
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 97
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 98
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 100
    return-void
.end method

.method public constructor <init>(IDD)V
    .registers 10
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    const/4 v2, -0x1

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 36
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 38
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 40
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 42
    iput v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 71
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 72
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 73
    iput-wide p2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 74
    iput-wide p4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 75
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 76
    return-void
.end method

.method private setAttribute()V
    .registers 5

    .prologue
    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_2e

    .line 130
    const-string v1, "gender"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "height"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 132
    const-string/jumbo v1, "weight"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 136
    :goto_29
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 137
    return-void

    .line 134
    :cond_2e
    const-string v1, "exercise_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_29
.end method


# virtual methods
.method checkAttribute()Z
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 105
    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-lt v2, v1, :cond_d

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    if-le v2, v6, :cond_15

    .line 107
    :cond_d
    const-string v1, "SContextPedometerAttribute"

    const-string v2, "The gender is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_14
    return v0

    .line 110
    :cond_15
    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_23

    .line 111
    const-string v1, "SContextPedometerAttribute"

    const-string v2, "The height is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 114
    :cond_23
    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_31

    .line 115
    const-string v1, "SContextPedometerAttribute"

    const-string v2, "The weight is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 118
    :cond_31
    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_3a

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    if-le v2, v6, :cond_42

    .line 120
    :cond_3a
    const-string v1, "SContextPedometerAttribute"

    const-string v2, "The exercise mode is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_42
    move v0, v1

    .line 123
    goto :goto_14
.end method
