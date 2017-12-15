.class public Landroid/hardware/scontext/SContextStepLevelMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextStepLevelMonitor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextStepLevelMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 229
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepLevelMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 106
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 222
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getCalorie()[D
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "CalorieArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistance()[D
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DistanceArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getDuration()[I
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "DurationArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStepCount()[I
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepCountArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStepLevel()[I
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v1, "StepTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()[J
    .registers 9

    .prologue
    .line 124
    iget-object v4, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v5, "DataCount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, "size":I
    iget-object v4, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string v5, "DurationArray"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 126
    .local v0, "duration":[I
    new-array v3, v2, [J

    .line 127
    .local v3, "timestamp":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_31

    .line 128
    if-nez v1, :cond_24

    .line 129
    iget-object v4, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 127
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 131
    :cond_24
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    goto :goto_21

    .line 134
    :cond_31
    return-object v3
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    .line 195
    const-string v0, "DataBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    .line 196
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 209
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method
