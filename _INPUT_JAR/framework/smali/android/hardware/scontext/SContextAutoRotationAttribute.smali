.class public Landroid/hardware/scontext/SContextAutoRotationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoRotationAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextAutoRotationAttribute"


# instance fields
.field private mDeviceType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "deviceType"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 54
    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 56
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 73
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_12

    .line 63
    :cond_9
    const-string v0, "SContextAutoRotationAttribute"

    const-string v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
