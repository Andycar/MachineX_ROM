.class public Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextFlatMotionForTableModeAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextFlatMotionForTableModeAttribute"


# instance fields
.field private mDuration:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 51
    iput p1, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    .line 52
    invoke-direct {p0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->setAttribute()V

    .line 53
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const/16 v1, 0x24

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 3

    .prologue
    .line 58
    iget v0, p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;->mDuration:I

    if-gez v0, :cond_d

    .line 59
    const-string v0, "SContextFlatMotionForTableModeAttribute"

    const-string v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method
