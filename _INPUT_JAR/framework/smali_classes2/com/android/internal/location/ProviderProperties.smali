.class public final Lcom/android/internal/location/ProviderProperties;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/location/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccuracy:I

.field public final mHasMonetaryCost:Z

.field public final mPowerRequirement:I

.field public final mRequiresCell:Z

.field public final mRequiresNetwork:Z

.field public final mRequiresSatellite:Z

.field public final mSupportsAltitude:Z

.field public final mSupportsBearing:Z

.field public final mSupportsSpeed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/internal/location/ProviderProperties$1;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderProperties$1;-><init>()V

    sput-object v0, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZZII)V
    .registers 10
    .param p1, "mRequiresNetwork"    # Z
    .param p2, "mRequiresSatellite"    # Z
    .param p3, "mRequiresCell"    # Z
    .param p4, "mHasMonetaryCost"    # Z
    .param p5, "mSupportsAltitude"    # Z
    .param p6, "mSupportsSpeed"    # Z
    .param p7, "mSupportsBearing"    # Z
    .param p8, "mPowerRequirement"    # I
    .param p9, "mAccuracy"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean p1, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    .line 102
    iput-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    .line 103
    iput-boolean p3, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    .line 104
    iput-boolean p4, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    .line 105
    iput-boolean p5, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    .line 106
    iput-boolean p6, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    .line 107
    iput-boolean p7, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    .line 108
    iput p8, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    .line 109
    iput p9, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-eqz v0, :cond_44

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v0, :cond_46

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v0, :cond_48

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    if-eqz v0, :cond_50

    :goto_36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void

    :cond_44
    move v0, v2

    .line 142
    goto :goto_7

    :cond_46
    move v0, v2

    .line 143
    goto :goto_f

    :cond_48
    move v0, v2

    .line 144
    goto :goto_17

    :cond_4a
    move v0, v2

    .line 145
    goto :goto_1f

    :cond_4c
    move v0, v2

    .line 146
    goto :goto_27

    :cond_4e
    move v0, v2

    .line 147
    goto :goto_2f

    :cond_50
    move v1, v2

    .line 148
    goto :goto_36
.end method
