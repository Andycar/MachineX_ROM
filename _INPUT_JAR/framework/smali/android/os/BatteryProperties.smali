.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryChargeType:I

.field public batteryCurrentAvg:I

.field public batteryCurrentNow:I

.field public batteryHealth:I

.field public batteryHighVoltageCharger:Z

.field public batteryLevel:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerPogoOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_86

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_88

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8a

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8c

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8e

    move v0, v1

    :goto_72
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_90

    move v0, v1

    :goto_7b
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_92

    :goto_83
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    .line 90
    return-void

    :cond_86
    move v0, v2

    .line 72
    goto :goto_c

    :cond_88
    move v0, v2

    .line 73
    goto :goto_15

    :cond_8a
    move v0, v2

    .line 74
    goto :goto_1e

    :cond_8c
    move v0, v2

    .line 77
    goto :goto_33

    :cond_8e
    move v0, v2

    .line 87
    goto :goto_72

    :cond_90
    move v0, v2

    .line 88
    goto :goto_7b

    :cond_92
    move v1, v2

    .line 89
    goto :goto_83
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/BatteryProperties$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .registers 3
    .param p1, "other"    # Landroid/os/BatteryProperties;

    .prologue
    .line 49
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 50
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 51
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 52
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 53
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 54
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 55
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 56
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 57
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 58
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 59
    iget v0, p1, Landroid/os/BatteryProperties;->batteryOnline:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 60
    iget v0, p1, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 61
    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeType:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 62
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 63
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_71

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_73

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_75

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_77

    move v0, v1

    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    if-eqz v0, :cond_79

    move v0, v1

    :goto_5e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_7b

    move v0, v1

    :goto_66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    if-eqz v0, :cond_7d

    :goto_6d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void

    :cond_71
    move v0, v2

    .line 93
    goto :goto_7

    :cond_73
    move v0, v2

    .line 94
    goto :goto_f

    :cond_75
    move v0, v2

    .line 95
    goto :goto_17

    :cond_77
    move v0, v2

    .line 98
    goto :goto_29

    :cond_79
    move v0, v2

    .line 108
    goto :goto_5e

    :cond_7b
    move v0, v2

    .line 109
    goto :goto_66

    :cond_7d
    move v1, v2

    .line 110
    goto :goto_6d
.end method
