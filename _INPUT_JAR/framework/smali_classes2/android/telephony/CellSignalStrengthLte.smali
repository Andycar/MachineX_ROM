.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 283
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 45
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7
    .param p1, "signalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 54
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/CellSignalStrengthLte;->initialize(IIIIII)V

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthLte$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 66
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .registers 2

    .prologue
    .line 122
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .prologue
    .line 109
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 110
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 111
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 112
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 113
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 114
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 115
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 214
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 219
    .local v2, "s":Landroid/telephony/CellSignalStrengthLte;
    if-nez p1, :cond_a

    .line 223
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :cond_7
    :goto_7
    return v3

    .line 215
    :catch_8
    move-exception v1

    .line 216
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 223
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :cond_a
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public getAsuLevel()I
    .registers 4

    .prologue
    .line 184
    const/16 v0, 0x63

    .line 185
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    .line 186
    .local v1, "lteDbm":I
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_c

    const/4 v0, 0x0

    .line 190
    :goto_b
    return v0

    .line 187
    :cond_c
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_13

    const/16 v0, 0x61

    goto :goto_b

    .line 188
    :cond_13
    add-int/lit16 v0, v1, 0x8c

    goto :goto_b
.end method

.method public getDbm()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getLevel()I
    .registers 7

    .prologue
    const v5, 0x7fffffff

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "levelRsrp":I
    const/4 v2, 0x0

    .line 144
    .local v2, "levelRssnr":I
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v3, v5, :cond_15

    const/4 v1, 0x0

    .line 151
    :goto_a
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v3, v5, :cond_2f

    const/4 v2, 0x0

    .line 158
    :goto_f
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v3, v5, :cond_49

    .line 159
    move v0, v2

    .line 167
    .local v0, "level":I
    :goto_14
    return v0

    .line 145
    .end local v0    # "level":I
    :cond_15
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1d

    const/4 v1, 0x4

    goto :goto_a

    .line 146
    :cond_1d
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_25

    const/4 v1, 0x3

    goto :goto_a

    .line 147
    :cond_25
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_2d

    const/4 v1, 0x2

    goto :goto_a

    .line 148
    :cond_2d
    const/4 v1, 0x1

    goto :goto_a

    .line 152
    :cond_2f
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_37

    const/4 v2, 0x4

    goto :goto_f

    .line 153
    :cond_37
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3f

    const/4 v2, 0x3

    goto :goto_f

    .line 154
    :cond_3f
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_47

    const/4 v2, 0x2

    goto :goto_f

    .line 155
    :cond_47
    const/4 v2, 0x1

    goto :goto_f

    .line 160
    :cond_49
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v3, v5, :cond_4f

    .line 161
    move v0, v1

    .restart local v0    # "level":I
    goto :goto_14

    .line 163
    .end local v0    # "level":I
    :cond_4f
    if-ge v2, v1, :cond_53

    move v0, v2

    .restart local v0    # "level":I
    :goto_52
    goto :goto_14

    .end local v0    # "level":I
    :cond_53
    move v0, v1

    goto :goto_52
.end method

.method public getTimingAdvance()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 203
    const/16 v0, 0x1f

    .line 204
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(IIIIII)V
    .registers 7
    .param p1, "lteSignalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 82
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 83
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 84
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 85
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 86
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 87
    return-void
.end method

.method public initialize(Landroid/telephony/SignalStrength;I)V
    .registers 4
    .param p1, "ss"    # Landroid/telephony/SignalStrength;
    .param p2, "timingAdvance"    # I

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 100
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 101
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 102
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 103
    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    .prologue
    const v0, 0x7fffffff

    .line 128
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 129
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 130
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 131
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 132
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 133
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 249
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    return-void
.end method
