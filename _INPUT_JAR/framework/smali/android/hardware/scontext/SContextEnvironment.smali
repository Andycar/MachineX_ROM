.class public Landroid/hardware/scontext/SContextEnvironment;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextEnvironment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method private getTemperatureHumidityData(I)[D
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 83
    if-nez p1, :cond_b

    .line 84
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 88
    :goto_a
    return-object v0

    .line 85
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 86
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_a

    .line 88
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 124
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getData(I)[D
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 68
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->getTemperatureHumidityData(I)[D

    move-result-object v0

    .line 70
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getSensorType()I
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
