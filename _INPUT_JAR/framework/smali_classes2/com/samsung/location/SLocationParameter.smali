.class public Lcom/samsung/location/SLocationParameter;
.super Ljava/lang/Object;
.source "SLocationParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/location/SLocationParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mRadius:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/samsung/location/SLocationParameter$1;

    invoke-direct {v0}, Lcom/samsung/location/SLocationParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDI)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 41
    iput-wide p2, p0, Lcom/samsung/location/SLocationParameter;->mLatitude:D

    .line 42
    iput-wide p4, p0, Lcom/samsung/location/SLocationParameter;->mLongitude:D

    .line 43
    iput p6, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 55
    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLatitude:D

    .line 56
    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLongitude:D

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 58
    iput-object p2, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLatitude:D

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLongitude:D

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/location/SLocationParameter$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/location/SLocationParameter$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
