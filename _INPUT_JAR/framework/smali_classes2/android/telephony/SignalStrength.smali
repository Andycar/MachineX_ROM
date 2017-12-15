.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 58
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 452
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 137
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 138
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 139
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 140
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 141
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 142
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 143
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 145
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 146
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 147
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 149
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 155
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .registers 31
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 229
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 232
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 233
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 234
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 200
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .registers 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 216
    iput p14, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 217
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    :goto_58
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 383
    return-void

    .line 379
    :cond_61
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 167
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 168
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 169
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 170
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 171
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 172
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 173
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 174
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 175
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 176
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 177
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 179
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 181
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 185
    return-void
.end method

.method private static InitializeSignalBins()I
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x5

    .line 109
    .local v0, "maxRSSI":I
    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 110
    const/4 v0, 0x6

    .line 114
    :cond_c
    :goto_c
    return v0

    .line 111
    :cond_d
    const-string v1, "2"

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 112
    const/4 v0, 0x7

    goto :goto_c
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    const-string v3, "1"

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 119
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "none"

    aput-object v3, v2, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v6

    const-string v3, "moderate"

    aput-object v3, v2, v7

    const-string v3, "good"

    aput-object v3, v2, v8

    const-string v3, "great"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v2, v3

    .line 126
    .local v0, "defaultName":[Ljava/lang/String;
    :goto_2c
    return-object v2

    .line 121
    .end local v0    # "defaultName":[Ljava/lang/String;
    :cond_2d
    const-string v3, "2"

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 122
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "none"

    aput-object v3, v1, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v1, v6

    const-string v3, "moderate"

    aput-object v3, v1, v7

    const-string v3, "good"

    aput-object v3, v1, v8

    const-string v3, "great"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "perfect"

    aput-object v4, v1, v3

    .local v1, "sprName":[Ljava/lang/String;
    move-object v2, v1

    .line 123
    goto :goto_2c

    .line 125
    .end local v1    # "sprName":[Ljava/lang/String;
    :cond_5c
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "none"

    aput-object v3, v0, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v6

    const-string v3, "moderate"

    aput-object v3, v0, v7

    const-string v3, "good"

    aput-object v3, v0, v8

    const-string v3, "great"

    aput-object v3, v0, v9

    .restart local v0    # "defaultName":[Ljava/lang/String;
    move-object v2, v0

    .line 126
    goto :goto_2c
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1442
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 395
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 396
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 399
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 400
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 401
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 402
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 403
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 404
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 405
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 406
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 407
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 409
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 412
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 101
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 102
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1389
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1390
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1391
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1392
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1393
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1394
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1395
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1396
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1397
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1398
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1399
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1400
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1402
    const-string v0, "TdScdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1404
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1406
    const-string v0, "SignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 1408
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 336
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 337
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 338
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 339
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 340
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 341
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 342
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 343
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 344
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 345
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 346
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 348
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 350
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 352
    iget v0, p1, Landroid/telephony/SignalStrength;->mSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 354
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1325
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 1330
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_a

    .line 1334
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_7
    :goto_7
    return v3

    .line 1326
    :catch_8
    move-exception v1

    .line 1327
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 1334
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1417
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1422
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1423
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1424
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1425
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1426
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    const-string v0, "TdScdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1434
    const-string v0, "SignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1436
    return-void
.end method

.method public getAlternateLteLevel()I
    .registers 4

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_9

    const/4 v0, -0x1

    .line 663
    :cond_8
    :goto_8
    return v0

    .line 657
    :cond_9
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_11

    const/4 v0, 0x4

    goto :goto_8

    .line 658
    :cond_11
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_19

    const/4 v0, 0x3

    goto :goto_8

    .line 659
    :cond_19
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_21

    const/4 v0, 0x2

    goto :goto_8

    .line 660
    :cond_21
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_29

    const/4 v0, 0x1

    goto :goto_8

    .line 661
    :cond_29
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_8

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAsuLevel()I
    .registers 6

    .prologue
    .line 767
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1e

    .line 768
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_19

    .line 769
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 771
    .local v0, "asuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-eqz v3, :cond_18

    .line 772
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    .line 805
    :cond_18
    :goto_18
    return v0

    .line 776
    .end local v0    # "asuLevel":I
    :cond_19
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_18

    .line 779
    .end local v0    # "asuLevel":I
    :cond_1e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 780
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 781
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2a

    .line 783
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_18

    .line 784
    .end local v0    # "asuLevel":I
    :cond_2a
    if-nez v1, :cond_2e

    .line 786
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_18

    .line 789
    .end local v0    # "asuLevel":I
    :cond_2e
    if-ge v1, v2, :cond_52

    move v0, v1

    .line 791
    .restart local v0    # "asuLevel":I
    :goto_31
    const-string v3, "VZW-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "SPR-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 793
    :cond_45
    move v0, v2

    .line 795
    :cond_46
    const-string v3, "USC-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 799
    move v0, v1

    goto :goto_18

    .end local v0    # "asuLevel":I
    :cond_52
    move v0, v2

    .line 789
    goto :goto_31
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 995
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 996
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1000
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 1008
    .local v0, "cdmaAsuLevel":I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 1015
    .local v3, "ecioAsuLevel":I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 1017
    .local v4, "level":I
    :goto_19
    return v4

    .line 1001
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1002
    .end local v0    # "cdmaAsuLevel":I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1003
    .end local v0    # "cdmaAsuLevel":I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1004
    .end local v0    # "cdmaAsuLevel":I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1005
    .end local v0    # "cdmaAsuLevel":I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 1009
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1010
    .end local v3    # "ecioAsuLevel":I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1011
    .end local v3    # "ecioAsuLevel":I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1012
    .end local v3    # "ecioAsuLevel":I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 1013
    .end local v3    # "ecioAsuLevel":I
    :cond_49
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 1015
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 10

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5f

    .line 949
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 950
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 954
    .local v1, "cdmaEcio":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 955
    if-lt v0, v8, :cond_41

    const/4 v3, 0x4

    .line 970
    .local v3, "levelDbm":I
    :goto_1e
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_69

    const/4 v4, 0x4

    .line 976
    .local v4, "levelEcio":I
    :goto_23
    if-ge v3, v4, :cond_7d

    move v2, v3

    .line 977
    .local v2, "level":I
    :goto_26
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 978
    if-le v3, v4, :cond_7f

    move v2, v3

    .line 982
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 986
    return v2

    .line 956
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_41
    if-lt v0, v7, :cond_45

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 957
    .end local v3    # "levelDbm":I
    :cond_45
    const/16 v5, -0x66

    if-lt v0, v5, :cond_4b

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 958
    .end local v3    # "levelDbm":I
    :cond_4b
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_51

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 959
    .end local v3    # "levelDbm":I
    :cond_51
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 962
    .end local v3    # "levelDbm":I
    :cond_53
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_59

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 963
    .end local v3    # "levelDbm":I
    :cond_59
    if-lt v0, v8, :cond_5d

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 964
    .end local v3    # "levelDbm":I
    :cond_5d
    if-lt v0, v7, :cond_61

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 965
    .end local v3    # "levelDbm":I
    :cond_61
    const/16 v5, -0x64

    if-lt v0, v5, :cond_67

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 966
    .end local v3    # "levelDbm":I
    :cond_67
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_1e

    .line 971
    :cond_69
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_6f

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_23

    .line 972
    .end local v4    # "levelEcio":I
    :cond_6f
    const/16 v5, -0x82

    if-lt v1, v5, :cond_75

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_23

    .line 973
    .end local v4    # "levelEcio":I
    :cond_75
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7b

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_23

    .line 974
    .end local v4    # "levelEcio":I
    :cond_7b
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_23

    :cond_7d
    move v2, v4

    .line 976
    goto :goto_26

    .restart local v2    # "level":I
    :cond_7f
    move v2, v4

    .line 978
    goto :goto_38
.end method

.method public getDbm()I
    .registers 7

    .prologue
    const/16 v5, -0x78

    .line 816
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 817
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 818
    .local v1, "dBm":I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1f

    .line 819
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 821
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 822
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    :cond_1f
    move v0, v1

    .line 846
    .end local v1    # "dBm":I
    :cond_20
    :goto_20
    return v0

    .line 827
    :cond_21
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 828
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 830
    .local v2, "evdoDbm":I
    const-string v3, "VZW-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "SPR-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 832
    :cond_3d
    if-eq v2, v5, :cond_20

    move v0, v2

    goto :goto_20

    .line 834
    :cond_41
    const-string v3, "USC-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 838
    if-ne v0, v5, :cond_4f

    .end local v2    # "evdoDbm":I
    :goto_4d
    move v0, v2

    goto :goto_20

    .restart local v2    # "evdoDbm":I
    :cond_4f
    move v2, v0

    goto :goto_4d

    .line 842
    :cond_51
    if-eq v2, v5, :cond_20

    if-ne v0, v5, :cond_57

    move v0, v2

    goto :goto_20

    :cond_57
    if-lt v0, v2, :cond_20

    move v0, v2

    goto :goto_20
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1072
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1076
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    .line 1083
    .local v3, "levelEvdoDbm":I
    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    .line 1090
    .local v4, "levelEvdoSnr":I
    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    .line 1092
    .local v2, "level":I
    :goto_16
    return v2

    .line 1077
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1078
    .end local v3    # "levelEvdoDbm":I
    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1079
    .end local v3    # "levelEvdoDbm":I
    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1080
    .end local v3    # "levelEvdoDbm":I
    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1081
    .end local v3    # "levelEvdoDbm":I
    :cond_30
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 1084
    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1085
    .end local v4    # "levelEvdoSnr":I
    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1086
    .end local v4    # "levelEvdoSnr":I
    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1087
    .end local v4    # "levelEvdoSnr":I
    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 1088
    .end local v4    # "levelEvdoSnr":I
    :cond_48
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    :cond_4b
    move v2, v4

    .line 1090
    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 576
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 8

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1027
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1031
    .local v1, "evdoSnr":I
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1032
    const/16 v5, -0x55

    if-lt v0, v5, :cond_3e

    const/4 v3, 0x4

    .line 1046
    .local v3, "levelEvdoDbm":I
    :goto_1c
    const/4 v5, 0x7

    if-lt v1, v5, :cond_6c

    const/4 v4, 0x4

    .line 1052
    .local v4, "levelEvdoSnr":I
    :goto_20
    if-ge v3, v4, :cond_7d

    move v2, v3

    .line 1053
    .local v2, "level":I
    :goto_23
    const-string v5, "CTC"

    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1054
    if-le v3, v4, :cond_7f

    move v2, v3

    .line 1058
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf00

    shr-int/lit8 v2, v5, 0x8

    .line 1062
    return v2

    .line 1033
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_3e
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_44

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1034
    .end local v3    # "levelEvdoDbm":I
    :cond_44
    const/16 v5, -0x66

    if-lt v0, v5, :cond_4a

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1035
    .end local v3    # "levelEvdoDbm":I
    :cond_4a
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_50

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1036
    .end local v3    # "levelEvdoDbm":I
    :cond_50
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1039
    .end local v3    # "levelEvdoDbm":I
    :cond_52
    const/16 v5, -0x41

    if-lt v0, v5, :cond_58

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1040
    .end local v3    # "levelEvdoDbm":I
    :cond_58
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_5e

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1041
    .end local v3    # "levelEvdoDbm":I
    :cond_5e
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_64

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1042
    .end local v3    # "levelEvdoDbm":I
    :cond_64
    const/16 v5, -0x69

    if-lt v0, v5, :cond_6a

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1043
    .end local v3    # "levelEvdoDbm":I
    :cond_6a
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1c

    .line 1047
    :cond_6c
    const/4 v5, 0x5

    if-lt v1, v5, :cond_71

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_20

    .line 1048
    .end local v4    # "levelEvdoSnr":I
    :cond_71
    const/4 v5, 0x3

    if-lt v1, v5, :cond_76

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_20

    .line 1049
    .end local v4    # "levelEvdoSnr":I
    :cond_76
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7b

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_20

    .line 1050
    .end local v4    # "levelEvdoSnr":I
    :cond_7b
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_20

    :cond_7d
    move v2, v4

    .line 1052
    goto :goto_23

    .restart local v2    # "level":I
    :cond_7f
    move v2, v4

    .line 1054
    goto :goto_35
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 940
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    .prologue
    .line 549
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 857
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 858
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 859
    .local v0, "asu":I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 860
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 865
    .local v1, "dBm":I
    :goto_10
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_11
    move v0, v2

    .line 858
    goto :goto_a

    .line 862
    .restart local v0    # "asu":I
    :cond_13
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 881
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    const/16 v2, 0x63

    if-ne v0, v2, :cond_13

    :cond_b
    const/4 v1, 0x0

    .line 887
    .local v1, "level":I
    :goto_c
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 894
    return v1

    .line 882
    .end local v1    # "level":I
    :cond_13
    const/16 v2, 0xc

    if-lt v0, v2, :cond_19

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_c

    .line 883
    .end local v1    # "level":I
    :cond_19
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1f

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_c

    .line 884
    .end local v1    # "level":I
    :cond_1f
    const/4 v2, 0x5

    if-lt v0, v2, :cond_24

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_c

    .line 885
    .end local v1    # "level":I
    :cond_24
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_c
.end method

.method public getGsmSignalBar()I
    .registers 2

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .registers 2

    .prologue
    .line 542
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 6

    .prologue
    .line 674
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1d

    .line 675
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 677
    .local v2, "level":I
    if-nez v2, :cond_e

    .line 678
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 681
    :cond_e
    if-nez v2, :cond_14

    .line 682
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 730
    :cond_14
    :goto_14
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v2, v3, :cond_1c

    .line 731
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v2, v3, -0x1

    .line 735
    :cond_1c
    return v2

    .line 700
    .end local v2    # "level":I
    :cond_1d
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 701
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 702
    .local v1, "evdoLevel":I
    if-nez v1, :cond_29

    .line 704
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_14

    .line 705
    .end local v2    # "level":I
    :cond_29
    if-nez v0, :cond_2d

    .line 707
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_14

    .line 710
    .end local v2    # "level":I
    :cond_2d
    if-ge v0, v1, :cond_51

    move v2, v0

    .line 712
    .restart local v2    # "level":I
    :goto_30
    const-string v3, "VZW-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "SPR-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 714
    :cond_44
    move v2, v1

    .line 716
    :cond_45
    const-string v3, "USC-CDMA"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 720
    move v2, v0

    goto :goto_14

    .end local v2    # "level":I
    :cond_51
    move v2, v1

    .line 710
    goto :goto_30
.end method

.method public getLteAsuLevel()I
    .registers 4

    .prologue
    .line 1213
    const/16 v0, 0x63

    .line 1214
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1228
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_e

    const/16 v0, 0xff

    .line 1231
    :goto_d
    return v0

    .line 1229
    :cond_e
    add-int/lit16 v0, v1, 0x8c

    goto :goto_d
.end method

.method public getLteCqi()I
    .registers 2

    .prologue
    .line 615
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .registers 2

    .prologue
    .line 1101
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 11

    .prologue
    const/16 v9, -0x1e

    const/16 v8, -0x2c

    const/16 v7, -0x69

    const/16 v6, -0x8c

    const/16 v5, -0xc8

    .line 1116
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 1118
    .local v2, "snrIconLevel":I
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1119
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v8, :cond_42

    const/4 v0, -0x1

    .line 1141
    :cond_21
    :goto_21
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1142
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_90

    const/4 v2, -0x1

    .line 1172
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v3

    const v4, 0xf000

    and-int/2addr v3, v4

    shr-int/lit8 v0, v3, 0xc

    .line 1173
    return v0

    .line 1120
    :cond_42
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_48

    const/4 v0, 0x4

    goto :goto_21

    .line 1121
    :cond_48
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x72

    if-lt v3, v4, :cond_50

    const/4 v0, 0x3

    goto :goto_21

    .line 1122
    :cond_50
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_58

    const/4 v0, 0x2

    goto :goto_21

    .line 1123
    :cond_58
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x7b

    if-lt v3, v4, :cond_60

    const/4 v0, 0x1

    goto :goto_21

    .line 1124
    :cond_60
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_21

    const/4 v0, 0x0

    goto :goto_21

    .line 1127
    :cond_66
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v8, :cond_6c

    const/4 v0, -0x1

    goto :goto_21

    .line 1128
    :cond_6c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_74

    const/4 v0, 0x4

    goto :goto_21

    .line 1129
    :cond_74
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_7c

    const/4 v0, 0x3

    goto :goto_21

    .line 1130
    :cond_7c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_82

    const/4 v0, 0x2

    goto :goto_21

    .line 1131
    :cond_82
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_8a

    const/4 v0, 0x1

    goto :goto_21

    .line 1132
    :cond_8a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_21

    const/4 v0, 0x0

    goto :goto_21

    .line 1143
    :cond_90
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x5a

    if-lt v3, v4, :cond_98

    const/4 v2, 0x4

    goto :goto_37

    .line 1144
    :cond_98
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_a0

    const/4 v2, 0x3

    goto :goto_37

    .line 1145
    :cond_a0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v3, v9, :cond_a6

    const/4 v2, 0x2

    goto :goto_37

    .line 1146
    :cond_a6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x32

    if-lt v3, v4, :cond_ae

    const/4 v2, 0x1

    goto :goto_37

    .line 1147
    :cond_ae
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v3, v5, :cond_37

    .line 1148
    const/4 v2, 0x0

    goto :goto_37

    .line 1150
    :cond_b4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_bd

    const/4 v2, -0x1

    goto/16 :goto_37

    .line 1151
    :cond_bd
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_c6

    const/4 v2, 0x4

    goto/16 :goto_37

    .line 1152
    :cond_c6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_cf

    const/4 v2, 0x3

    goto/16 :goto_37

    .line 1153
    :cond_cf
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_d8

    const/4 v2, 0x2

    goto/16 :goto_37

    .line 1154
    :cond_d8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v3, v9, :cond_df

    const/4 v2, 0x1

    goto/16 :goto_37

    .line 1155
    :cond_df
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v3, v5, :cond_37

    .line 1156
    const/4 v2, 0x0

    goto/16 :goto_37
.end method

.method public getLteRsrp()I
    .registers 2

    .prologue
    .line 600
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .registers 2

    .prologue
    .line 605
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getSglteGsmLevel()I
    .registers 4

    .prologue
    .line 902
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    and-int/lit16 v1, v1, 0xf00

    shr-int/lit8 v0, v1, 0x8

    .line 903
    .local v0, "level":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_23

    .line 904
    const/4 v0, 0x4

    .line 908
    :cond_c
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SGLTE RSSI getSglteGsmLevel level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 909
    return v0

    .line 905
    :cond_23
    if-gez v0, :cond_c

    .line 906
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getSglteRssiDisplayNum()I
    .registers 4

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 917
    .local v1, "mRet":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 918
    .local v0, "isSglteMode":I
    if-ltz v0, :cond_d

    const/4 v2, 0x2

    if-gt v0, v2, :cond_d

    .line 919
    move v1, v0

    .line 923
    :cond_d
    return v1
.end method

.method public getSignalBar()I
    .registers 4

    .prologue
    .line 745
    const-string/jumbo v1, "ril.dbg.SignalBar"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 746
    .local v0, "dbgBar":I
    if-lez v0, :cond_b

    .line 747
    .end local v0    # "dbgBar":I
    :goto_a
    return v0

    .restart local v0    # "dbgBar":I
    :cond_b
    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ltz v1, :cond_13

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    :goto_11
    move v0, v1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getTdScdmaAsuLevel()I
    .registers 4

    .prologue
    .line 1285
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1288
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_b

    const/4 v0, 0x0

    .line 1292
    .local v0, "tdScdmaAsuLevel":I
    :goto_a
    return v0

    .line 1289
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_b
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_a
.end method

.method public getTdScdmaDbm()I
    .registers 2

    .prologue
    .line 1248
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .registers 4

    .prologue
    .line 1260
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1263
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_d

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_f

    :cond_d
    const/4 v0, 0x0

    .line 1276
    .local v0, "level":I
    :goto_e
    return v0

    .line 1264
    .end local v0    # "level":I
    :cond_f
    const/16 v2, -0x58

    if-lt v1, v2, :cond_15

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_e

    .line 1265
    .end local v0    # "level":I
    :cond_15
    const/16 v2, -0x5c

    if-lt v1, v2, :cond_1b

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_e

    .line 1266
    .end local v0    # "level":I
    :cond_1b
    const/16 v2, -0x61

    if-lt v1, v2, :cond_21

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_e

    .line 1267
    .end local v0    # "level":I
    :cond_21
    const/16 v2, -0x66

    if-lt v1, v2, :cond_27

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_e

    .line 1268
    .end local v0    # "level":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_e
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1301
    const/16 v0, 0x1f

    .line 1302
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    :goto_3e
    add-int/2addr v1, v2

    return v1

    :cond_40
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .registers 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 309
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 310
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 311
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 312
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 313
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 314
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 315
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 316
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 317
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 318
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 319
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 320
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 322
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 324
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 329
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 280
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 283
    return-void
.end method

.method public isGsm()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .registers 2
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 534
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 535
    return-void
.end method

.method public setSignalBars()V
    .registers 1

    .prologue
    .line 623
    return-void
.end method

.method public setSignalBarsLTE()V
    .registers 1

    .prologue
    .line 630
    return-void
.end method

.method public setSignalBarsLTE(IIZ)V
    .registers 4
    .param p1, "rilRadioTechnology"    # I
    .param p2, "ssRilRadioTechnology"    # I
    .param p3, "isVolteSupported"    # Z

    .prologue
    .line 644
    return-void
.end method

.method public setSignalBarsVolte(Z)V
    .registers 2
    .param p1, "isVolteSupported"    # Z

    .prologue
    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_c6

    const-string v0, "gsm|lte"

    :goto_bd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c6
    const-string v0, "cdma"

    goto :goto_bd
.end method

.method public validateInput()V
    .registers 7

    .prologue
    const/16 v2, -0x78

    const/16 v1, 0x63

    const/4 v3, -0x1

    const v4, 0x7fffffff

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 480
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v0, v3, :cond_c2

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 482
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 490
    :goto_27
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_d4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_2d
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 498
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_d7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_36
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 501
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_da

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_3f
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 503
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_48

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_48
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 504
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_de

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_51
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 505
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_5f

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_5f

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_5f
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 508
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_67

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_67
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 509
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_e1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_e1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_78
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_e3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_88
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 511
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_e5

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_e5

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_98
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 515
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_a9

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_a9

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_a9
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 523
    return-void

    .line 484
    :cond_c2
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const v5, 0xffff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 485
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    goto/16 :goto_27

    :cond_d4
    move v0, v1

    .line 490
    goto/16 :goto_2d

    :cond_d7
    move v0, v2

    .line 498
    goto/16 :goto_36

    .line 501
    :cond_da
    const/16 v0, -0xa0

    goto/16 :goto_3f

    :cond_de
    move v0, v3

    .line 504
    goto/16 :goto_51

    :cond_e1
    move v0, v4

    .line 509
    goto :goto_78

    :cond_e3
    move v0, v4

    .line 510
    goto :goto_88

    :cond_e5
    move v0, v4

    .line 511
    goto :goto_98
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 419
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    return-void

    .line 434
    :cond_4f
    const/4 v0, 0x0

    goto :goto_46
.end method
