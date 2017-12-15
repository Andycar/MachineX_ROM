.class public Landroid/hardware/scontext/SContextShakeMotionAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextShakeMotionAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextShakeMotionAttribute"


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 39
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "strength"    # I
    .param p2, "duration"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 57
    iput p1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 58
    iput p2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 59
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 60
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "strength"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 81
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
    iget v1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    if-gez v1, :cond_d

    .line 66
    const-string v1, "SContextShakeMotionAttribute"

    const-string v2, "The strength is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_c
    return v0

    .line 69
    :cond_d
    iget v1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    if-gez v1, :cond_19

    .line 70
    const-string v1, "SContextShakeMotionAttribute"

    const-string v2, "The duration is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 73
    :cond_19
    const/4 v0, 0x1

    goto :goto_c
.end method
