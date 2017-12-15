.class public Landroid/hardware/scontext/SContextAirMotion;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAirMotion.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAirMotion;",
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
    .line 188
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 119
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 181
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAngle()I
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpeed()I
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 157
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 170
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method
