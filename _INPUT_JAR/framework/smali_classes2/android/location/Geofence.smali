.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HORIZONTAL_CIRCLE:I = 0x1


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DDF)V
    .registers 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p5}, Landroid/location/Geofence;->checkRadius(F)V

    .line 53
    invoke-static {p1, p2, p3, p4}, Landroid/location/Geofence;->checkLatLong(DD)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/location/Geofence;->mType:I

    .line 55
    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    .line 56
    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    .line 57
    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    .line 58
    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    return-void
.end method

.method private static checkLatLong(DD)V
    .registers 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 87
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_12

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2b

    .line 88
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2b
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_3d

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_56

    .line 91
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_56
    return-void
.end method

.method private static checkRadius(F)V
    .registers 4
    .param p0, "radius"    # F

    .prologue
    .line 81
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1e

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1e
    return-void
.end method

.method private static checkType(I)V
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1c
    return-void
.end method

.method public static createCircle(DDF)Landroid/location/Geofence;
    .registers 13
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # F

    .prologue
    .line 48
    new-instance v1, Landroid/location/Geofence;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/location/Geofence;-><init>(DDF)V

    return-object v1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 131
    packed-switch p0, :pswitch_data_c

    .line 135
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    .line 136
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 133
    :pswitch_8
    const-string v0, "CIRCLE"

    goto :goto_7

    .line 131
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-ne p0, p1, :cond_5

    .line 180
    :cond_4
    :goto_4
    return v1

    .line 167
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 168
    goto :goto_4

    .line 169
    :cond_9
    instance-of v3, p1, Landroid/location/Geofence;

    if-nez v3, :cond_f

    move v1, v2

    .line 170
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 171
    check-cast v0, Landroid/location/Geofence;

    .line 172
    .local v0, "other":Landroid/location/Geofence;
    iget v3, p0, Landroid/location/Geofence;->mRadius:F

    iget v4, v0, Landroid/location/Geofence;->mRadius:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1c

    move v1, v2

    .line 173
    goto :goto_4

    .line 174
    :cond_1c
    iget-wide v4, p0, Landroid/location/Geofence;->mLatitude:D

    iget-wide v6, v0, Landroid/location/Geofence;->mLatitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_26

    move v1, v2

    .line 175
    goto :goto_4

    .line 176
    :cond_26
    iget-wide v4, p0, Landroid/location/Geofence;->mLongitude:D

    iget-wide v6, v0, Landroid/location/Geofence;->mLongitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_30

    move v1, v2

    .line 177
    goto :goto_4

    .line 178
    :cond_30
    iget v3, p0, Landroid/location/Geofence;->mType:I

    iget v4, v0, Landroid/location/Geofence;->mType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 179
    goto :goto_4
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 72
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Landroid/location/Geofence;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v6, 0x20

    .line 148
    const/16 v0, 0x1f

    .line 149
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 151
    .local v1, "result":I
    iget-wide v4, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 152
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    .line 153
    iget-wide v4, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 154
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    .line 155
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 156
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Landroid/location/Geofence;->mType:I

    add-int v1, v4, v5

    .line 157
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 142
    const-string v0, "Geofence[%s %.6f, %.6f %.0fm]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/location/Geofence;->mType:I

    invoke-static {v3}, Landroid/location/Geofence;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget v0, p0, Landroid/location/Geofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 126
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    return-void
.end method
