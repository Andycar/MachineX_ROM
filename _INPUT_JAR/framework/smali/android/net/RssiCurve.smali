.class public Landroid/net/RssiCurve;
.super Ljava/lang/Object;
.source "RssiCurve.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RssiCurve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bucketWidth:I

.field public final rssiBuckets:[B

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 167
    new-instance v0, Landroid/net/RssiCurve$1;

    invoke-direct {v0}, Landroid/net/RssiCurve$1;-><init>()V

    sput-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroid/net/RssiCurve;->start:I

    .line 74
    iput p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 75
    if-eqz p3, :cond_c

    array-length v0, p3

    if-nez v0, :cond_15

    .line 76
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rssiBuckets must be at least one element large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_15
    iput-object p3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->start:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "bucketCount":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 86
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/RssiCurve$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/RssiCurve$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/RssiCurve;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p0, p1, :cond_5

    .line 137
    :cond_4
    :goto_4
    return v1

    .line 133
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 135
    check-cast v0, Landroid/net/RssiCurve;

    .line 137
    .local v0, "rssiCurve":Landroid/net/RssiCurve;
    iget v3, p0, Landroid/net/RssiCurve;->start:I

    iget v4, v0, Landroid/net/RssiCurve;->start:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    iget v4, v0, Landroid/net/RssiCurve;->bucketWidth:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    iget-object v4, v0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2c
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/RssiCurve;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lookupScore(I)B
    .registers 5
    .param p1, "rssi"    # I

    .prologue
    .line 111
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    div-int v0, v1, v2

    .line 114
    .local v0, "index":I
    if-gez v0, :cond_10

    .line 115
    const/4 v0, 0x0

    .line 120
    :cond_b
    :goto_b
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte v1, v1, v0

    return v1

    .line 116
    :cond_10
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_b

    .line 117
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "RssiCurve[start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/RssiCurve;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",bucketWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, ",buckets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    .line 157
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3a

    .line 159
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 162
    :cond_3d
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget v0, p0, Landroid/net/RssiCurve;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    return-void
.end method
