.class public Landroid/hardware/scontext/SContextMovementForPositioning;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextMovementForPositioning.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextMovementForPositioning;",
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
    .line 101
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioning$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioning$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextMovementForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextMovementForPositioning;->mContext:Landroid/os/Bundle;

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextMovementForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextMovementForPositioning;->mContext:Landroid/os/Bundle;

    .line 96
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAlert()I
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/scontext/SContextMovementForPositioning;->mContext:Landroid/os/Bundle;

    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iput-object p1, p0, Landroid/hardware/scontext/SContextMovementForPositioning;->mContext:Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/scontext/SContextMovementForPositioning;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method
