.class public Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:I

.field public final implementor:Ljava/lang/String;

.field public final maxBufferMs:I

.field public final maxKeyphrases:I

.field public final maxSoundModels:I

.field public final maxUsers:I

.field public final powerConsumptionMw:I

.field public final recognitionModes:I

.field public final returnsTriggerInEvent:Z

.field public final supportsCaptureTransition:Z

.field public final supportsConcurrentCapture:Z

.field public final uuid:Ljava/util/UUID;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "implementor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "maxSoundModels"    # I
    .param p7, "maxKeyphrases"    # I
    .param p8, "maxUsers"    # I
    .param p9, "recognitionModes"    # I
    .param p10, "supportsCaptureTransition"    # Z
    .param p11, "maxBufferMs"    # I
    .param p12, "supportsConcurrentCapture"    # Z
    .param p13, "powerConsumptionMw"    # I
    .param p14, "returnsTriggerInEvent"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    .line 100
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    .line 102
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    .line 103
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    .line 104
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    .line 105
    iput p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    .line 106
    iput p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    .line 107
    iput p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    .line 108
    iput-boolean p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    .line 109
    iput p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    .line 110
    iput-boolean p12, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    .line 111
    iput p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    .line 112
    iput-boolean p14, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 17
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "implementor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "uuid":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .local v5, "version":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 133
    .local v6, "maxSoundModels":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .local v7, "maxKeyphrases":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .local v8, "maxUsers":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 136
    .local v9, "recognitionModes":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_4a

    const/4 v10, 0x1

    .line 137
    .local v10, "supportsCaptureTransition":Z
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 138
    .local v11, "maxBufferMs":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_4c

    const/4 v12, 0x1

    .line 139
    .local v12, "supportsConcurrentCapture":Z
    :goto_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 140
    .local v13, "powerConsumptionMw":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_4e

    const/4 v14, 0x1

    .line 141
    .local v14, "returnsTriggerInEvent":Z
    :goto_44
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct/range {v0 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V

    return-object v0

    .line 136
    .end local v10    # "supportsCaptureTransition":Z
    .end local v11    # "maxBufferMs":I
    .end local v12    # "supportsConcurrentCapture":Z
    .end local v13    # "powerConsumptionMw":I
    .end local v14    # "returnsTriggerInEvent":Z
    :cond_4a
    const/4 v10, 0x0

    goto :goto_2c

    .line 138
    .restart local v10    # "supportsCaptureTransition":Z
    .restart local v11    # "maxBufferMs":I
    :cond_4c
    const/4 v12, 0x0

    goto :goto_38

    .line 140
    .restart local v12    # "supportsConcurrentCapture":Z
    .restart local v13    # "powerConsumptionMw":I
    :cond_4e
    const/4 v14, 0x0

    goto :goto_44
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", implementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSoundModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxKeyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsCaptureTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBufferMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsConcurrentCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerConsumptionMw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnsTriggerInEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    if-eqz v0, :cond_58

    move v0, v1

    :goto_38
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_46
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    if-eqz v0, :cond_5c

    :goto_53
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    return-void

    :cond_58
    move v0, v2

    .line 158
    goto :goto_38

    :cond_5a
    move v0, v2

    .line 160
    goto :goto_46

    :cond_5c
    move v1, v2

    .line 162
    goto :goto_53
.end method
