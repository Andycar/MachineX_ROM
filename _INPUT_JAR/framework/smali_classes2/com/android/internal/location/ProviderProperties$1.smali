.class final Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_41

    move v1, v0

    .line 117
    .local v1, "requiresNetwork":Z
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_43

    move v2, v0

    .line 118
    .local v2, "requiresSatellite":Z
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_45

    move v3, v0

    .line 119
    .local v3, "requiresCell":Z
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_47

    move v4, v0

    .line 120
    .local v4, "hasMonetaryCost":Z
    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_49

    move v5, v0

    .line 121
    .local v5, "supportsAltitude":Z
    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_4b

    move v6, v0

    .line 122
    .local v6, "supportsSpeed":Z
    :goto_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v0, :cond_4d

    move v7, v0

    .line 123
    .local v7, "supportsBearing":Z
    :goto_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 124
    .local v8, "powerRequirement":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 125
    .local v9, "accuracy":I
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object v0

    .end local v1    # "requiresNetwork":Z
    .end local v2    # "requiresSatellite":Z
    .end local v3    # "requiresCell":Z
    .end local v4    # "hasMonetaryCost":Z
    .end local v5    # "supportsAltitude":Z
    .end local v6    # "supportsSpeed":Z
    .end local v7    # "supportsBearing":Z
    .end local v8    # "powerRequirement":I
    .end local v9    # "accuracy":I
    :cond_41
    move v1, v10

    .line 116
    goto :goto_9

    .restart local v1    # "requiresNetwork":Z
    :cond_43
    move v2, v10

    .line 117
    goto :goto_10

    .restart local v2    # "requiresSatellite":Z
    :cond_45
    move v3, v10

    .line 118
    goto :goto_17

    .restart local v3    # "requiresCell":Z
    :cond_47
    move v4, v10

    .line 119
    goto :goto_1e

    .restart local v4    # "hasMonetaryCost":Z
    :cond_49
    move v5, v10

    .line 120
    goto :goto_25

    .restart local v5    # "supportsAltitude":Z
    :cond_4b
    move v6, v10

    .line 121
    goto :goto_2c

    .restart local v6    # "supportsSpeed":Z
    :cond_4d
    move v7, v10

    .line 122
    goto :goto_33
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method
