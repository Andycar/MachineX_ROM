.class public Landroid/media/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# static fields
.field private static final EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final TYPE_AUX_LINE:I = 0x13

.field public static final TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final TYPE_BUILTIN_MIC:I = 0xf

.field public static final TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final TYPE_DOCK:I = 0xd

.field public static final TYPE_FM:I = 0xe

.field public static final TYPE_FM_TUNER:I = 0x10

.field public static final TYPE_HDMI:I = 0x9

.field public static final TYPE_HDMI_ARC:I = 0xa

.field public static final TYPE_LINE_ANALOG:I = 0x5

.field public static final TYPE_LINE_DIGITAL:I = 0x6

.field public static final TYPE_TELEPHONY:I = 0x12

.field public static final TYPE_TV_TUNER:I = 0x11

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_ACCESSORY:I = 0xc

.field public static final TYPE_USB_DEVICE:I = 0xb

.field public static final TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field mConfig:Landroid/media/AudioDevicePortConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xd

    const/4 v4, 0x7

    const/16 v3, 0x8

    .line 166
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 167
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x2000

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x4000

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x10000

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x20000

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x40000

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x80000

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x100000

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, 0x200000

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffffc

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffff8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffff0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffffe0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffffc0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffff80

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffe00

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffffc00

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffff800

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7ffff000

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffe000

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffc000

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fff8000

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7fff0000

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ffe0000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 211
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x80

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/high16 v2, 0x40000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x800

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, -0x7ffffffc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, -0x7fffe000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, -0x7fffc000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePortConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/media/AudioDevicePortConfig;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/media/AudioDevicePortConfig;

    invoke-direct {v0, p1}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePortConfig;)V

    iput-object v0, p0, Landroid/media/AudioDevice;->mConfig:Landroid/media/AudioDevicePortConfig;

    .line 113
    return-void
.end method

.method public static convertDeviceTypeToInternalDevice(I)I
    .registers 3
    .param p0, "deviceType"    # I

    .prologue
    .line 153
    sget-object v0, Landroid/media/AudioDevice;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static convertInternalDeviceToDeviceType(I)I
    .registers 3
    .param p0, "intDevice"    # I

    .prologue
    .line 158
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/media/AudioDevice;->mConfig:Landroid/media/AudioDevicePortConfig;

    invoke-virtual {v0}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .registers 4

    .prologue
    .line 139
    sget-object v0, Landroid/media/AudioDevice;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDevice;->mConfig:Landroid/media/AudioDevicePortConfig;

    invoke-virtual {v1}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public isInputDevice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Landroid/media/AudioDevice;->mConfig:Landroid/media/AudioDevicePortConfig;

    invoke-virtual {v1}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->role()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOutputDevice()Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/AudioDevice;->mConfig:Landroid/media/AudioDevicePortConfig;

    invoke-virtual {v0}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
