.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "NetworkKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field public final type:I

.field public final wifiKey:Landroid/net/WifiKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Landroid/net/NetworkKey$1;

    invoke-direct {v0}, Landroid/net/NetworkKey$1;-><init>()V

    sput-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/WifiKey;)V
    .registers 3
    .param p1, "wifiKey"    # Landroid/net/WifiKey;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 60
    iput-object p1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 65
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_34

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel has unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_29
    sget-object v0, Landroid/net/WifiKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/WifiKey;

    iput-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 72
    return-void

    .line 65
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkKey$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/NetworkKey$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/net/NetworkKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p0, p1, :cond_5

    .line 98
    :cond_4
    :goto_4
    return v1

    .line 94
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

    .line 96
    check-cast v0, Landroid/net/NetworkKey;

    .line 98
    .local v0, "that":Landroid/net/NetworkKey;
    iget v3, p0, Landroid/net/NetworkKey;->type:I

    iget v4, v0, Landroid/net/NetworkKey;->type:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v4, v0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_10

    .line 114
    const-string v0, "InvalidKey"

    :goto_7
    return-object v0

    .line 110
    :pswitch_8
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0}, Landroid/net/WifiKey;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 108
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_2c

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkKey has unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_25
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0, p1, p2}, Landroid/net/WifiKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    return-void

    .line 82
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method
