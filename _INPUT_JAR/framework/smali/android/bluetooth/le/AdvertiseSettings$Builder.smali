.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mCustomAdvInterval:I

.field private mIsDualWave:Z

.field private mMode:I

.field private mTimeoutMillis:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 189
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 191
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    .line 192
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsDualWave:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertiseSettings;
    .registers 9

    .prologue
    .line 277
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    iget v5, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsDualWave:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZIIZLandroid/bluetooth/le/AdvertiseSettings$1;)V

    return-object v0
.end method

.method public setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .param p1, "advertiseMode"    # I

    .prologue
    .line 204
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    .line 206
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1f
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 209
    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2
    .param p1, "connectable"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 239
    return-object p0
.end method

.method public setCustomAdvInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2
    .param p1, "customAdvInterval"    # I

    .prologue
    .line 261
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    .line 262
    return-object p0
.end method

.method public setDualWaveAdvertising(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2
    .param p1, "isDualWave"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsDualWave:Z

    .line 270
    return-object p0
.end method

.method public setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 249
    if-ltz p1, :cond_7

    const v0, 0x2bf20

    if-le p1, v0, :cond_10

    .line 250
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_10
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 254
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .param p1, "txPowerLevel"    # I

    .prologue
    .line 223
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1f

    .line 225
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1f
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 228
    return-object p0
.end method
