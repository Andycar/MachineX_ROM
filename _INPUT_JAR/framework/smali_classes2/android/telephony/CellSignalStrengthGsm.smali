.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->initialize(II)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellSignalStrengthGsm$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    .line 65
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "CellSignalStrengthGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .registers 2

    .prologue
    .line 93
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthGsm;

    .prologue
    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 85
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 86
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 168
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 173
    .local v2, "s":Landroid/telephony/CellSignalStrengthGsm;
    if-nez p1, :cond_a

    .line 177
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthGsm;
    :cond_7
    :goto_7
    return v3

    .line 169
    :catch_8
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 177
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthGsm;
    :cond_a
    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public getAsuLevel()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 154
    .local v0, "level":I
    return v0
.end method

.method public getDbm()I
    .registers 6

    .prologue
    const v3, 0x7fffffff

    .line 131
    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 132
    .local v2, "level":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 133
    .local v0, "asu":I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 134
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 139
    .local v1, "dBm":I
    :goto_10
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_11
    move v0, v2

    .line 132
    goto :goto_a

    .line 136
    .restart local v0    # "asu":I
    :cond_13
    const v1, 0x7fffffff

    .restart local v1    # "dBm":I
    goto :goto_10
.end method

.method public getLevel()I
    .registers 4

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 115
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_9

    const/16 v2, 0x63

    if-ne v0, v2, :cond_b

    :cond_9
    const/4 v1, 0x0

    .line 121
    .local v1, "level":I
    :goto_a
    return v1

    .line 116
    .end local v1    # "level":I
    :cond_b
    const/16 v2, 0xc

    if-lt v0, v2, :cond_11

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_a

    .line 117
    .end local v1    # "level":I
    :cond_11
    const/16 v2, 0x8

    if-lt v0, v2, :cond_17

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_a

    .line 118
    .end local v1    # "level":I
    :cond_17
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1c

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_a

    .line 119
    .end local v1    # "level":I
    :cond_1c
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 159
    const/16 v0, 0x1f

    .line 160
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(II)V
    .registers 3
    .param p1, "ss"    # I
    .param p2, "ber"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 77
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 78
    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    .prologue
    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 100
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthGsm: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

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
    .line 194
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
