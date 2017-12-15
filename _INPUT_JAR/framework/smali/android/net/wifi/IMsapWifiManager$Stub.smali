.class public abstract Landroid/net/wifi/IMsapWifiManager$Stub;
.super Landroid/os/Binder;
.source "IMsapWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IMsapWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IMsapWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IMsapWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IMsapWifiManager"

.field static final TRANSACTION_gasReq:I = 0x5

.field static final TRANSACTION_getBss:I = 0x7

.field static final TRANSACTION_getGasResponse:I = 0x8

.field static final TRANSACTION_notifyGasResponse:I = 0x4

.field static final TRANSACTION_notifyVenueServerAdded:I = 0x2

.field static final TRANSACTION_notifyVenueServerDeleted:I = 0x3

.field static final TRANSACTION_resetMsap:I = 0x6

.field static final TRANSACTION_sendVenueAddedCacheInfo:I = 0x9

.field static final TRANSACTION_startWifiManager:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IMsapWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IMsapWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.net.wifi.IMsapWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/IMsapWifiManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/net/wifi/IMsapWifiManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/net/wifi/IMsapWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IMsapWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_b8

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 47
    :sswitch_a
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;->startWifiManager()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    :sswitch_1c
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IMsapWifiManager$Stub;->notifyVenueServerAdded(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IMsapWifiManager$Stub;->notifyVenueServerDeleted(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3c
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IMsapWifiManager$Stub;->notifyGasResponse(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4c
    const-string v6, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IMsapWifiManager$Stub;->gasReq(IILjava/lang/String;)Z

    move-result v3

    .line 94
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_67

    move v4, v5

    :cond_67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_6b
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;->resetMsap()I

    move-result v3

    .line 102
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 108
    .end local v3    # "_result":I
    :sswitch_7b
    const-string v6, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IMsapWifiManager$Stub;->getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;

    move-result-object v3

    .line 112
    .local v3, "_result":Landroid/net/wifi/MsapBssInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_95

    .line 114
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v3, p3, v5}, Landroid/net/wifi/MsapBssInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 118
    :cond_95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/MsapBssInfo;
    :sswitch_9a
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;->getGasResponse()[B

    move-result-object v3

    .line 126
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 132
    .end local v3    # "_result":[B
    :sswitch_ab
    const-string v4, "android.net.wifi.IMsapWifiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;->sendVenueAddedCacheInfo()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 43
    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7b
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_ab
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
