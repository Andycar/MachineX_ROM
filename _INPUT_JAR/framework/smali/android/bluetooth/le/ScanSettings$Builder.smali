.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mCustomScanInterval:I

.field private mCustomScanWindow:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 198
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 200
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 201
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    return-void
.end method

.method private isValidCallbackType(I)Z
    .registers 4
    .param p1, "callbackType"    # I

    .prologue
    const/4 v0, 0x1

    .line 238
    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    .line 243
    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x6

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanSettings;
    .registers 10

    .prologue
    .line 295
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIILandroid/bluetooth/le/ScanSettings$1;)V

    return-object v0
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "callbackType"    # I

    .prologue
    .line 229
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1f
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 233
    return-object p0
.end method

.method public setCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 3
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I

    .prologue
    .line 286
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 287
    iput p2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    .line 288
    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 6
    .param p1, "reportDelayMillis"    # J

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_f
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 279
    return-object p0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "scanMode"    # I

    .prologue
    .line 212
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1e

    .line 213
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1e
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 216
    return-object p0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "scanResultType"    # I

    .prologue
    .line 257
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_1e

    .line 259
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1e
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 263
    return-object p0
.end method
