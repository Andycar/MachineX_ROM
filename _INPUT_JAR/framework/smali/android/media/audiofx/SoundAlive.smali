.class public Landroid/media/audiofx/SoundAlive;
.super Landroid/media/audiofx/AudioEffect;
.source "SoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SoundAlive$1;,
        Landroid/media/audiofx/SoundAlive$Settings;,
        Landroid/media/audiofx/SoundAlive$BaseParameterListener;,
        Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_HMT:I = 0xc

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_SQUAREUI_POSITION:I = 0xb

.field public static final PARAM_STRENGTH:I = 0xa

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SoundAlive"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "c4da1d1f-7cdf-42e2-ba60-efc7eb3508a3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 12
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 155
    sget-object v5, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 112
    iput-short v7, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 126
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 131
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 136
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    .line 157
    if-nez p2, :cond_1f

    .line 158
    const-string v5, "SoundAlive"

    const-string v6, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1f
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfBands()S

    .line 163
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    .line 165
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-eqz v5, :cond_6d

    .line 166
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    .line 167
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 168
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 169
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v7

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge v1, v5, :cond_6d

    .line 171
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 172
    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/SoundAlive;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "length":I
    :goto_4d
    aget-byte v5, v4, v2

    if-eqz v5, :cond_54

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 176
    :cond_54
    :try_start_54
    iget-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_60} :catch_63

    .line 170
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 177
    :catch_63
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "SoundAlive"

    const-string/jumbo v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 182
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_6d
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .registers 7
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 317
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 319
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 320
    aput p1, v0, v4

    .line 321
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 323
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .registers 6
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 297
    new-array v0, v2, [I

    .line 298
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 299
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 300
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 301
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 303
    return-object v1
.end method

.method public getBandLevel(S)S
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    new-array v0, v4, [I

    .line 254
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 256
    .local v1, "result":[S
    aput v4, v0, v3

    .line 257
    aput p1, v0, v2

    .line 258
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 260
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 216
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 217
    return-object v0
.end method

.method public getCenterFreq(S)I
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 276
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 278
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 279
    aput p1, v0, v4

    .line 280
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 282
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 336
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 337
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eqz v2, :cond_9

    .line 194
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 201
    :goto_8
    return v2

    .line 196
    :cond_9
    new-array v0, v4, [I

    .line 197
    .local v0, "param":[I
    aput v3, v0, v3

    .line 198
    new-array v1, v4, [S

    .line 199
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 200
    aget-short v2, v1, v3

    iput-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 201
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    goto :goto_8
.end method

.method public getNumberOfPresets()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 365
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 366
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getParameter(I[B)I
    .registers 5
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {p1}, Landroid/media/audiofx/SoundAlive;->intToByteArray(I)[B

    move-result-object v0

    .line 654
    .local v0, "p":[B
    invoke-super {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .registers 3
    .param p1, "preset"    # S

    .prologue
    .line 379
    if-ltz p1, :cond_b

    iget v0, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge p1, v0, :cond_b

    .line 380
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 382
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getProperties()Landroid/media/audiofx/SoundAlive$Settings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 667
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 668
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/SoundAlive;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 669
    new-instance v2, Landroid/media/audiofx/SoundAlive$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/SoundAlive$Settings;-><init>()V

    .line 670
    .local v2, "settings":Landroid/media/audiofx/SoundAlive$Settings;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    .line 671
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    .line 672
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    .line 673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v3, :cond_3e

    .line 674
    iget-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v1, v4}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 676
    :cond_3e
    return-object v2
.end method

.method public getRoundedStrength(S)S
    .registers 7
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 423
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 425
    .local v1, "result":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 426
    aput p1, v0, v4

    .line 428
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 429
    aget-short v2, v1, v3

    return v2
.end method

.method public setBandLevel(SS)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-array v0, v4, [I

    .line 234
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 236
    .local v1, "value":[S
    aput v4, v0, v2

    .line 237
    aput p1, v0, v3

    .line 238
    aput-short p2, v1, v2

    .line 239
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 240
    return-void
.end method

.method public setHMT(II)V
    .registers 8
    .param p1, "band"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 459
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 460
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 462
    .local v1, "value":[I
    const/16 v2, 0xc

    aput v2, v0, v3

    .line 463
    aput p1, v0, v4

    .line 464
    aput p2, v1, v3

    .line 465
    const-string v2, "SoundAlive"

    const-string v3, "PARAM_HMT start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 468
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .prologue
    .line 533
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_3
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 535
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 536
    new-instance v0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V

    iput-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 537
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 539
    :cond_16
    monitor-exit v1

    .line 540
    return-void

    .line 539
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/SoundAlive$Settings;)V
    .registers 9
    .param p1, "settings"    # Landroid/media/audiofx/SoundAlive$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 689
    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_10

    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eq v2, v3, :cond_2c

    .line 691
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_2c
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 696
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v2, :cond_5c

    .line 697
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 700
    :cond_5c
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SoundAlive;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 701
    return-void
.end method

.method public setSquarePostion(II)V
    .registers 8
    .param p1, "Sqrow"    # I
    .param p2, "Sqcol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    new-array v0, v4, [I

    .line 444
    .local v0, "param":[I
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 446
    .local v1, "value":[I
    const/16 v2, 0xb

    aput v2, v0, v3

    .line 448
    aput p1, v1, v3

    .line 449
    aput p2, v1, v4

    .line 451
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 452
    return-void
.end method

.method public setStrength(SS)V
    .registers 8
    .param p1, "type"    # S
    .param p2, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 402
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 404
    .local v1, "value":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 405
    aput p1, v0, v4

    .line 406
    aput-short p2, v1, v3

    .line 408
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 409
    return-void
.end method

.method public usePreset(S)V
    .registers 3
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SoundAlive;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 352
    return-void
.end method
