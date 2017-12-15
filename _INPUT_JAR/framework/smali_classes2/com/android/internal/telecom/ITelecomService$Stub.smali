.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final TRANSACTION_acceptRingingCall:I = 0x18

.field static final TRANSACTION_addNewIncomingCall:I = 0x1d

.field static final TRANSACTION_addNewUnknownCall:I = 0x1e

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x19

.field static final TRANSACTION_clearAccounts:I = 0x11

.field static final TRANSACTION_endCall:I = 0x17

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xb

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xa

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0x9

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final TRANSACTION_getCallState:I = 0x16

.field static final TRANSACTION_getCurrentTtyMode:I = 0x1c

.field static final TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final TRANSACTION_getDefaultPhoneApp:I = 0x12

.field static final TRANSACTION_getPhoneAccount:I = 0x8

.field static final TRANSACTION_getPhoneAccountsForPackage:I = 0x7

.field static final TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x6

.field static final TRANSACTION_getSimCallManager:I = 0xc

.field static final TRANSACTION_getSimCallManagers:I = 0xe

.field static final TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final TRANSACTION_handlePinMmi:I = 0x1a

.field static final TRANSACTION_isInCall:I = 0x14

.field static final TRANSACTION_isRinging:I = 0x15

.field static final TRANSACTION_isTtySupported:I = 0x1b

.field static final TRANSACTION_registerPhoneAccount:I = 0xf

.field static final TRANSACTION_setSimCallManager:I = 0xd

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x13

.field static final TRANSACTION_unregisterPhoneAccount:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
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
    const-string v1, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_2ca

    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 47
    :sswitch_a
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    move v0, v5

    .line 55
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_23
    move v0, v6

    .line 54
    goto :goto_1c

    .line 61
    :sswitch_25
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 65
    .local v2, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_3e

    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v2, p3, v5}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 71
    :cond_3e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_42
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 79
    .restart local v2    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_57

    .line 81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v2, p3, v5}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 85
    :cond_57
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 91
    .end local v2    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_5b
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    .line 94
    sget-object v6, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 99
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_6e
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 97
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_75
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_6e

    .line 105
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_77
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 113
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_87
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 117
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_9c
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 127
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_b1
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d5

    .line 136
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 141
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_c4
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 142
    .local v2, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v2, :cond_d7

    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v2, p3, v5}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_result":Landroid/telecom/PhoneAccount;
    :cond_d5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_c4

    .line 148
    .restart local v2    # "_result":Landroid/telecom/PhoneAccount;
    :cond_d7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_dc
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v2

    .line 156
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v2    # "_result":I
    :sswitch_ed
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 170
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_fe
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v4

    .line 172
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 178
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_10f
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 180
    .local v2, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v2, :cond_125

    .line 182
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v2, p3, v5}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 186
    :cond_125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v2    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_12a
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_145

    .line 195
    sget-object v6, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 200
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_13d
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 198
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_145
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_13d

    .line 206
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_147
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagers()Ljava/util/List;

    move-result-object v4

    .line 208
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 214
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_158
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_173

    .line 217
    sget-object v6, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 222
    .local v0, "_arg0":Landroid/telecom/PhoneAccount;
    :goto_16b
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 220
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    :cond_173
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_16b

    .line 228
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_175
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_190

    .line 231
    sget-object v6, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 236
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_188
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 234
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_190
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_188

    .line 242
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_192
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1a3
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 253
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v2, :cond_1b9

    .line 255
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v2, p3, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 259
    :cond_1b9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 265
    .end local v2    # "_result":Landroid/content/ComponentName;
    :sswitch_1be
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger()V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 272
    :sswitch_1cb
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall()Z

    move-result v2

    .line 274
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v2, :cond_1da

    move v6, v5

    :cond_1da
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 280
    .end local v2    # "_result":Z
    :sswitch_1df
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging()Z

    move-result v2

    .line 282
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v2, :cond_1ee

    move v6, v5

    :cond_1ee
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 288
    .end local v2    # "_result":Z
    :sswitch_1f3
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v2

    .line 290
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 296
    .end local v2    # "_result":I
    :sswitch_204
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    move-result v2

    .line 298
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v2, :cond_213

    move v6, v5

    :cond_213
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 304
    .end local v2    # "_result":Z
    :sswitch_218
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 311
    :sswitch_225
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 318
    :sswitch_232
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    .line 322
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v2, :cond_245

    move v6, v5

    :cond_245
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 328
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_24a
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported()Z

    move-result v2

    .line 330
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v2, :cond_259

    move v6, v5

    :cond_259
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 336
    .end local v2    # "_result":Z
    :sswitch_25e
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode()I

    move-result v2

    .line 338
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 344
    .end local v2    # "_result":I
    :sswitch_26f
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_298

    .line 347
    sget-object v6, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 353
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29a

    .line 354
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 359
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_290
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 350
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_298
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_282

    .line 357
    :cond_29a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_290

    .line 365
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_29c
    const-string v6, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c5

    .line 368
    sget-object v6, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 374
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_2af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c7

    .line 375
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 380
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2bd
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 371
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2c5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_2af

    .line 378
    :cond_2c7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2bd

    .line 43
    nop

    :sswitch_data_2ca
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_42
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_77
        0x6 -> :sswitch_87
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_dc
        0xa -> :sswitch_ed
        0xb -> :sswitch_fe
        0xc -> :sswitch_10f
        0xd -> :sswitch_12a
        0xe -> :sswitch_147
        0xf -> :sswitch_158
        0x10 -> :sswitch_175
        0x11 -> :sswitch_192
        0x12 -> :sswitch_1a3
        0x13 -> :sswitch_1be
        0x14 -> :sswitch_1cb
        0x15 -> :sswitch_1df
        0x16 -> :sswitch_1f3
        0x17 -> :sswitch_204
        0x18 -> :sswitch_218
        0x19 -> :sswitch_225
        0x1a -> :sswitch_232
        0x1b -> :sswitch_24a
        0x1c -> :sswitch_25e
        0x1d -> :sswitch_26f
        0x1e -> :sswitch_29c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
