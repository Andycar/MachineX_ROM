.class public Landroid/net/wifi/WpsInfo;
.super Ljava/lang/Object;
.source "WpsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY:I = 0x1

.field public static final INVALID:I = 0x4

.field public static final KEYPAD:I = 0x2

.field public static final LABEL:I = 0x3

.field public static final NFC_INTERFACE:I = 0x6

.field public static final PBC:I = 0x0

.field public static final USERREJECT:I = 0x5


# instance fields
.field public BSSID:Ljava/lang/String;

.field public dev_nfc_hashkey:Ljava/lang/String;

.field public dev_pw:Ljava/lang/String;

.field public dev_pw_id:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public setup:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Landroid/net/wifi/WpsInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 66
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_nfc_hashkey:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw_id:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-eqz p1, :cond_1d

    .line 102
    iget v0, p1, Landroid/net/wifi/WpsInfo;->setup:I

    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 103
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->dev_nfc_hashkey:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_nfc_hashkey:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->dev_pw_id:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw_id:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Landroid/net/wifi/WpsInfo;->dev_pw:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw:Ljava/lang/String;

    .line 111
    :cond_1d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, " pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, " hashkey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->dev_nfc_hashkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, " dev_pw_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->dev_pw_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, " dev_pw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->dev_pw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_nfc_hashkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/net/wifi/WpsInfo;->dev_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return-void
.end method
