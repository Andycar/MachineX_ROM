.class public Landroid/hardware/scontext/SContextStepCountAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextStepCountAlertAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextStepCountAlertAttribute"


# instance fields
.field private mStepCount:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "stepCount"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 54
    iput p1, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    .line 56
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "step_count"

    iget v2, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const/4 v1, 0x3

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    if-gez v0, :cond_d

    .line 72
    const-string v0, "SContextStepCountAlertAttribute"

    const-string v1, "The step count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getStepCount()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    return v0
.end method
