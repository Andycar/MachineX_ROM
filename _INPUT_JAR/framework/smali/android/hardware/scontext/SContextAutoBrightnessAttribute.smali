.class public Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoBrightnessAttribute.java"


# static fields
.field private static MODE_CONFIGURATION:I = 0x0

.field private static MODE_DEVICE_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextAutoBrightnessAttribute"


# instance fields
.field private mDeviceMode:I

.field private mLuminanceTable:[B

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "deviceMode"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 60
    iput p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 61
    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 62
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "luminanceTable"    # [B

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 77
    iput-object p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 78
    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 79
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 80
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v1, v2, :cond_20

    .line 104
    const-string v1, "luminance_config_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 108
    :cond_1a
    :goto_1a
    const/16 v1, 0x25

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 109
    return-void

    .line 105
    :cond_20
    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    if-ne v1, v2, :cond_1a

    .line 106
    const-string v1, "device_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a
.end method


# virtual methods
.method checkAttribute()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v3, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    if-ne v2, v3, :cond_18

    .line 86
    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v2, :cond_10

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    if-le v2, v1, :cond_2a

    .line 88
    :cond_10
    const-string v1, "SContextAutoBrightnessAttribute"

    const-string v2, "The device mode is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_17
    return v0

    .line 91
    :cond_18
    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v3, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v2, v3, :cond_2a

    .line 92
    iget-object v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v2, :cond_2a

    .line 93
    const-string v1, "SContextAutoBrightnessAttribute"

    const-string v2, "The luminance configration data is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_2a
    move v0, v1

    .line 97
    goto :goto_17
.end method
