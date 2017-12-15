.class public Landroid/hardware/scontext/SContextActivityLocationLogging;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityLocationLogging.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 328
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    .line 154
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 321
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAltitude()[D
    .registers 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "altitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 249
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 253
    :cond_e
    :goto_e
    return-object v0

    .line 250
    :cond_f
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 251
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_e
.end method

.method public getLatitude()[D
    .registers 4

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "latitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 219
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 223
    :cond_e
    :goto_e
    return-object v0

    .line 220
    :cond_f
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 221
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_e
.end method

.method public getLoggingSize()I
    .registers 4

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "size":I
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 177
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    :cond_e
    :goto_e
    return v0

    .line 178
    :cond_f
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 179
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    .line 180
    :cond_1d
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 181
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getLongitude()[D
    .registers 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "longitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 234
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 238
    :cond_e
    :goto_e
    return-object v0

    .line 235
    :cond_f
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 236
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_e
.end method

.method public getStayingAreaRadius()[I
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingAreaStatus()[I
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingTimeDuration()[I
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()[J
    .registers 9

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "timestamp":[J
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 194
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "StayingAreaTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 208
    :cond_e
    :goto_e
    return-object v2

    .line 195
    :cond_f
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f

    .line 196
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeDuration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 197
    .local v0, "duration":[I
    array-length v3, v0

    new-array v2, v3, [J

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    array-length v3, v0

    if-ge v1, v3, :cond_e

    .line 199
    if-nez v1, :cond_32

    .line 200
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 198
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 202
    :cond_32
    add-int/lit8 v3, v1, -0x1

    aget-wide v4, v2, v3

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_2f

    .line 205
    .end local v0    # "duration":[I
    .end local v1    # "i":I
    :cond_3f
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 206
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "TrajectoryTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_e
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 290
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 291
    const-string v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 293
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 305
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 307
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void
.end method
