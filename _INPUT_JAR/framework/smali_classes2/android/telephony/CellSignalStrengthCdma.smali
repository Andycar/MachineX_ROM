.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 366
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    invoke-virtual/range {p0 .. p5}, Landroid/telephony/CellSignalStrengthCdma;->initialize(IIIII)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 346
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 356
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthCdma$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 65
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    .prologue
    .line 102
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .prologue
    .line 90
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 91
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 92
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 93
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 94
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 95
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 300
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 305
    .local v2, "s":Landroid/telephony/CellSignalStrengthCdma;
    if-nez p1, :cond_a

    .line 309
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :cond_7
    :goto_7
    return v3

    .line 301
    :catch_8
    move-exception v1

    .line 302
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 309
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthCdma;
    :cond_a
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public getAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 143
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v1

    .line 144
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v2

    .line 148
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 156
    .local v0, "cdmaAsuLevel":I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 163
    .local v3, "ecioAsuLevel":I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 165
    .local v4, "level":I
    :goto_19
    return v4

    .line 149
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 150
    .end local v0    # "cdmaAsuLevel":I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 151
    .end local v0    # "cdmaAsuLevel":I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 152
    .end local v0    # "cdmaAsuLevel":I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 153
    .end local v0    # "cdmaAsuLevel":I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 157
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 158
    .end local v3    # "ecioAsuLevel":I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 159
    .end local v3    # "ecioAsuLevel":I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 160
    .end local v3    # "ecioAsuLevel":I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 161
    .end local v3    # "ecioAsuLevel":I
    :cond_49
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 163
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 7

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 173
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 177
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_16

    const/4 v3, 0x4

    .line 184
    .local v3, "levelDbm":I
    :goto_d
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_2a

    const/4 v4, 0x4

    .line 190
    .local v4, "levelEcio":I
    :goto_12
    if-ge v3, v4, :cond_3e

    move v2, v3

    .line 192
    .local v2, "level":I
    :goto_15
    return v2

    .line 178
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_16
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1c

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 179
    .end local v3    # "levelDbm":I
    :cond_1c
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_22

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 180
    .end local v3    # "levelDbm":I
    :cond_22
    const/16 v5, -0x64

    if-lt v0, v5, :cond_28

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 181
    .end local v3    # "levelDbm":I
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 185
    :cond_2a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_30

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 186
    .end local v4    # "levelEcio":I
    :cond_30
    const/16 v5, -0x82

    if-lt v1, v5, :cond_36

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 187
    .end local v4    # "levelEcio":I
    :cond_36
    const/16 v5, -0x96

    if-lt v1, v5, :cond_3c

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 188
    .end local v4    # "levelEcio":I
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_12

    :cond_3e
    move v2, v4

    .line 190
    goto :goto_15
.end method

.method public getDbm()I
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 227
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    .line 230
    .local v1, "evdoDbm":I
    if-ge v0, v1, :cond_b

    .end local v0    # "cdmaDbm":I
    :goto_a
    return v0

    .restart local v0    # "cdmaDbm":I
    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 7

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 200
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 204
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_15

    const/4 v3, 0x4

    .line 210
    .local v3, "levelEvdoDbm":I
    :goto_d
    const/4 v5, 0x7

    if-lt v1, v5, :cond_29

    const/4 v4, 0x4

    .line 216
    .local v4, "levelEvdoSnr":I
    :goto_11
    if-ge v3, v4, :cond_3a

    move v2, v3

    .line 218
    .local v2, "level":I
    :goto_14
    return v2

    .line 205
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_15
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 206
    .end local v3    # "levelEvdoDbm":I
    :cond_1b
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 207
    .end local v3    # "levelEvdoDbm":I
    :cond_21
    const/16 v5, -0x69

    if-lt v0, v5, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 208
    .end local v3    # "levelEvdoDbm":I
    :cond_27
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 211
    :cond_29
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2e

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 212
    .end local v4    # "levelEvdoSnr":I
    :cond_2e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 213
    .end local v4    # "levelEvdoSnr":I
    :cond_33
    const/4 v5, 0x1

    if-lt v1, v5, :cond_38

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 214
    .end local v4    # "levelEvdoSnr":I
    :cond_38
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    :cond_3a
    move v2, v4

    .line 216
    goto :goto_14
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 123
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    .line 124
    .local v1, "evdoLevel":I
    if-nez v1, :cond_f

    .line 126
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    .line 135
    .local v2, "level":I
    :goto_e
    return v2

    .line 127
    .end local v2    # "level":I
    :cond_f
    if-nez v0, :cond_16

    .line 129
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    .restart local v2    # "level":I
    goto :goto_e

    .line 132
    .end local v2    # "level":I
    :cond_16
    if-ge v0, v1, :cond_1a

    move v2, v0

    .restart local v2    # "level":I
    :goto_19
    goto :goto_e

    .end local v2    # "level":I
    :cond_1a
    move v2, v1

    goto :goto_19
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 290
    const/16 v0, 0x1f

    .line 291
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(IIIII)V
    .registers 6
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 80
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 81
    iput p3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 82
    iput p4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 83
    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 84
    return-void
.end method

.method public setCdmaDbm(I)V
    .registers 2
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 241
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 242
    return-void
.end method

.method public setCdmaEcio(I)V
    .registers 2
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 252
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 253
    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    .prologue
    const v0, 0x7fffffff

    .line 108
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 109
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 110
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 111
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 112
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 113
    return-void
.end method

.method public setEvdoDbm(I)V
    .registers 2
    .param p1, "evdoDbm"    # I

    .prologue
    .line 263
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 264
    return-void
.end method

.method public setEvdoEcio(I)V
    .registers 2
    .param p1, "evdoEcio"    # I

    .prologue
    .line 274
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 275
    return-void
.end method

.method public setEvdoSnr(I)V
    .registers 2
    .param p1, "evdoSnr"    # I

    .prologue
    .line 285
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

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
    .line 335
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return-void
.end method
