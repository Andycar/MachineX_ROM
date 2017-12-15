.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;
.super Landroid/os/Binder;
.source "ISmartCardPinService.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardPinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardPinService"

.field static final TRANSACTION_getCardLoginAttemptRemain:I = 0x5

.field static final TRANSACTION_getPin:I = 0x1

.field static final TRANSACTION_isCardRegistered:I = 0x6

.field static final TRANSACTION_isDeviceConnectedWithCard:I = 0x7

.field static final TRANSACTION_isSmartCardAuthenticationAvailable:I = 0x8

.field static final TRANSACTION_registerCard:I = 0x2

.field static final TRANSACTION_showCardNotRegisteredDialog:I = 0x9

.field static final TRANSACTION_unRegisterCard:I = 0x3

.field static final TRANSACTION_verifyCard:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_ca

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 44
    :sswitch_a
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 58
    .end local v0    # "_arg0":Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    :sswitch_24
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 62
    .local v0, "_arg0":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v1

    .line 63
    .local v1, "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 69
    .end local v0    # "_arg0":[C
    .end local v1    # "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    :sswitch_3c
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":[C
    .end local v1    # "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    :sswitch_54
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    move-result-object v1

    .line 85
    .local v1, "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    .end local v0    # "_arg0":[C
    .end local v1    # "_arg1":Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    :sswitch_6c
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;
    :sswitch_80
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isCardRegistered()Z

    move-result v2

    .line 102
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v2, :cond_8f

    move v3, v4

    :cond_8f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 108
    .end local v2    # "_result":Z
    :sswitch_94
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isDeviceConnectedWithCard()Z

    move-result v2

    .line 110
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_a3

    move v3, v4

    :cond_a3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v2    # "_result":Z
    :sswitch_a8
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isSmartCardAuthenticationAvailable()Z

    move-result v2

    .line 118
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_b7

    move v3, v4

    :cond_b7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v2    # "_result":Z
    :sswitch_bc
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->showCardNotRegisteredDialog()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 40
    nop

    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_80
        0x7 -> :sswitch_94
        0x8 -> :sswitch_a8
        0x9 -> :sswitch_bc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
