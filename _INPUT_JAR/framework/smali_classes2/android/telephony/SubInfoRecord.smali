.class public Landroid/telephony/SubInfoRecord;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public dataRoaming:I

.field public displayName:Ljava/lang/String;

.field public displayNumberFormat:I

.field public iccId:Ljava/lang/String;

.field public mNwMode:I

.field public mStatus:I

.field public mcc:I

.field public mnc:I

.field public nameSource:I

.field public number:Ljava/lang/String;

.field public simIconRes:[I

.field public slotId:I

.field public subId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    new-instance v0, Landroid/telephony/SubInfoRecord$1;

    invoke-direct {v0}, Landroid/telephony/SubInfoRecord$1;-><init>()V

    sput-object v0, Landroid/telephony/SubInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Landroid/telephony/SubInfoRecord;->subId:J

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    .line 87
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 89
    iput v2, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    .line 90
    iput v2, p0, Landroid/telephony/SubInfoRecord;->color:I

    .line 91
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    .line 92
    iput v2, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    .line 93
    iput v2, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    .line 95
    iput v2, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    .line 96
    iput v2, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    .line 97
    iput v2, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    .line 99
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIII)V
    .registers 16
    .param p1, "subId"    # J
    .param p3, "iccId"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "nameSource"    # I
    .param p7, "color"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "displayFormat"    # I
    .param p10, "roaming"    # I
    .param p11, "iconRes"    # [I
    .param p12, "mcc"    # I
    .param p13, "mnc"    # I
    .param p14, "status"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Landroid/telephony/SubInfoRecord;->subId:J

    .line 105
    iput-object p3, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    .line 106
    iput p4, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    .line 107
    iput-object p5, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 108
    iput p6, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    .line 109
    iput p7, p0, Landroid/telephony/SubInfoRecord;->color:I

    .line 110
    iput-object p8, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    .line 111
    iput p9, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    .line 112
    iput p10, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    .line 113
    iput-object p11, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    .line 114
    iput p12, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    .line 115
    iput p13, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    .line 116
    iput p14, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNameSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayNumberFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSimIconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMcc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMnc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-wide v0, p0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/telephony/SubInfoRecord;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    iget v0, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
