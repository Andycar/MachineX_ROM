.class public Lcom/android/internal/net/LegacyVpnInfo;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/LegacyVpnInfo$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_FAILED:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LegacyVpnInfo"


# instance fields
.field public intent:Landroid/app/PendingIntent;

.field public key:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo$1;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/LegacyVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    return-void
.end method

.method public static stateFromNetworkInfo(Landroid/net/NetworkInfo;)I
    .registers 5
    .param p0, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/android/internal/net/LegacyVpnInfo$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 89
    const-string v1, "LegacyVpnInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; treating as disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_32
    :pswitch_32
    return v0

    .line 81
    :pswitch_33
    const/4 v0, 0x2

    goto :goto_32

    .line 83
    :pswitch_35
    const/4 v0, 0x3

    goto :goto_32

    .line 87
    :pswitch_37
    const/4 v0, 0x5

    goto :goto_32

    .line 79
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    return-void
.end method
