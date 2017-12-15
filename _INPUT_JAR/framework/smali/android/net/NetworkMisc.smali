.class public Landroid/net/NetworkMisc;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkMisc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowBypass:Z

.field public explicitlySelected:Z

.field public knoxProfile:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Landroid/net/NetworkMisc$1;

    invoke-direct {v0}, Landroid/net/NetworkMisc$1;-><init>()V

    sput-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .registers 3
    .param p1, "nm"    # Landroid/net/NetworkMisc;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_11

    .line 50
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 51
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 52
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->knoxProfile:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 54
    :cond_11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->knoxProfile:Z

    if-eqz v0, :cond_1f

    :goto_16
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    return-void

    :cond_1b
    move v0, v2

    .line 63
    goto :goto_7

    :cond_1d
    move v0, v2

    .line 64
    goto :goto_f

    :cond_1f
    move v1, v2

    .line 65
    goto :goto_16
.end method
