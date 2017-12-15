.class public Landroid/hardware/scontext/SContextGyroTemperature;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextGyroTemperature.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextGyroTemperature;",
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
    .line 142
    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextGyroTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 93
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextGyroTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 94
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 137
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getGyroTemperature()D
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mContext:Landroid/os/Bundle;

    const-string v1, "GyroTemperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/scontext/SContextGyroTemperature;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
