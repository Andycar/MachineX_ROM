.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_listen:I = 0x1

.field static final TRANSACTION_listenForSubscriber:I = 0x2

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0x9

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xa

.field static final TRANSACTION_notifyCallState:I = 0x3

.field static final TRANSACTION_notifyCallStateForSubscriber:I = 0x4

.field static final TRANSACTION_notifyCellInfo:I = 0x14

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x18

.field static final TRANSACTION_notifyCellLocation:I = 0x11

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x12

.field static final TRANSACTION_notifyDataActivity:I = 0xb

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xc

.field static final TRANSACTION_notifyDataConnection:I = 0xd

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0xf

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x10

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0xe

.field static final TRANSACTION_notifyDataConnectionRealTimeInfo:I = 0x19

.field static final TRANSACTION_notifyDisconnectCause:I = 0x16

.field static final TRANSACTION_notifyDualSimSlotActivationState:I = 0x1c

.field static final TRANSACTION_notifyDunDataActivity:I = 0x1e

.field static final TRANSACTION_notifyDunDataConnection:I = 0x1f

.field static final TRANSACTION_notifyFdnUpdated:I = 0x1d

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x8

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyOtaspChanged:I = 0x13

.field static final TRANSACTION_notifyPreciseCallState:I = 0x15

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x17

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x5

.field static final TRANSACTION_notifySignalStrength:I = 0x6

.field static final TRANSACTION_notifySignalStrengthForSubscriber:I = 0x7

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
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
    .line 38
    sparse-switch p1, :sswitch_data_468

    .line 472
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 42
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v5, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    .line 53
    .local v8, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 55
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    const/4 v10, 0x1

    .line 56
    .local v10, "_arg3":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v5, 0x1

    goto :goto_7

    .line 55
    .end local v10    # "_arg3":Z
    :cond_39
    const/4 v10, 0x0

    goto :goto_2f

    .line 62
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v9    # "_arg2":I
    :sswitch_3b
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 66
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v9

    .line 70
    .local v9, "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 72
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v11, 0x1

    .local v11, "_arg4":Z
    :goto_5d
    move-object/from16 v5, p0

    .line 73
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(JLjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v5, 0x1

    goto :goto_7

    .line 72
    .end local v11    # "_arg4":Z
    :cond_67
    const/4 v11, 0x0

    goto :goto_5d

    .line 79
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v10    # "_arg3":I
    :sswitch_69
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 83
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v5, 0x1

    goto :goto_7

    .line 90
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_82
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 94
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 96
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForSubscriber(JILjava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 103
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_a0
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 109
    .local v22, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cc

    .line 110
    sget-object v5, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/ServiceState;

    .line 115
    .local v9, "_arg2":Landroid/telephony/ServiceState;
    :goto_bf
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v6, v1, v2, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IJLandroid/telephony/ServiceState;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 113
    .end local v9    # "_arg2":Landroid/telephony/ServiceState;
    :cond_cc
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/telephony/ServiceState;
    goto :goto_bf

    .line 121
    .end local v6    # "_arg0":I
    .end local v9    # "_arg2":Landroid/telephony/ServiceState;
    .end local v22    # "_arg1":J
    :sswitch_ce
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f0

    .line 124
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SignalStrength;

    .line 129
    .local v6, "_arg0":Landroid/telephony/SignalStrength;
    :goto_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 127
    .end local v6    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_f0
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_e5

    .line 135
    .end local v6    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_f2
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 139
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_118

    .line 140
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SignalStrength;

    .line 145
    .local v8, "_arg1":Landroid/telephony/SignalStrength;
    :goto_10d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForSubscriber(JLandroid/telephony/SignalStrength;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 143
    .end local v8    # "_arg1":Landroid/telephony/SignalStrength;
    :cond_118
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/telephony/SignalStrength;
    goto :goto_10d

    .line 151
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Landroid/telephony/SignalStrength;
    :sswitch_11a
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 155
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 157
    .restart local v22    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13d

    const/4 v9, 0x1

    .line 158
    .local v9, "_arg2":Z
    :goto_130
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v6, v1, v2, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IJZ)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 157
    .end local v9    # "_arg2":Z
    :cond_13d
    const/4 v9, 0x0

    goto :goto_130

    .line 164
    .end local v6    # "_arg0":I
    .end local v22    # "_arg1":J
    :sswitch_13f
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_158

    const/4 v6, 0x1

    .line 167
    .local v6, "_arg0":Z
    :goto_14d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 166
    .end local v6    # "_arg0":Z
    :cond_158
    const/4 v6, 0x0

    goto :goto_14d

    .line 173
    :sswitch_15a
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 177
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_177

    const/4 v8, 0x1

    .line 178
    .local v8, "_arg1":Z
    :goto_16c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(JZ)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 177
    .end local v8    # "_arg1":Z
    :cond_177
    const/4 v8, 0x0

    goto :goto_16c

    .line 184
    .end local v6    # "_arg0":J
    :sswitch_179
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 187
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 193
    .end local v6    # "_arg0":I
    :sswitch_18f
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 197
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 198
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(JI)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 204
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    :sswitch_1a9
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_205

    const/4 v8, 0x1

    .line 210
    .local v8, "_arg1":Z
    :goto_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_207

    .line 217
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/LinkProperties;

    .line 223
    .local v18, "_arg5":Landroid/net/LinkProperties;
    :goto_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20a

    .line 224
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/NetworkCapabilities;

    .line 230
    .local v19, "_arg6":Landroid/net/NetworkCapabilities;
    :goto_1e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 232
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20d

    const/16 v21, 0x1

    .local v21, "_arg8":Z
    :goto_1f3
    move-object/from16 v12, p0

    move v13, v6

    move v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 233
    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 208
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/net/LinkProperties;
    .end local v19    # "_arg6":Landroid/net/NetworkCapabilities;
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":Z
    :cond_205
    const/4 v8, 0x0

    goto :goto_1bb

    .line 220
    .restart local v8    # "_arg1":Z
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Ljava/lang/String;
    :cond_207
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/net/LinkProperties;
    goto :goto_1d7

    .line 227
    :cond_20a
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_1e7

    .line 232
    .restart local v20    # "_arg7":I
    :cond_20d
    const/16 v21, 0x0

    goto :goto_1f3

    .line 239
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/net/LinkProperties;
    .end local v19    # "_arg6":Landroid/net/NetworkCapabilities;
    .end local v20    # "_arg7":I
    :sswitch_210
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 243
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 245
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_271

    const/4 v9, 0x1

    .line 247
    .local v9, "_arg2":Z
    :goto_226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 249
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 251
    .restart local v11    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_273

    .line 254
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/LinkProperties;

    .line 260
    .local v19, "_arg6":Landroid/net/LinkProperties;
    :goto_242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_276

    .line 261
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/NetworkCapabilities;

    .line 267
    .local v20, "_arg7":Landroid/net/NetworkCapabilities;
    :goto_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 269
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_279

    const/16 v16, 0x1

    .local v16, "_arg9":Z
    :goto_25e
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move/from16 v15, v21

    .line 270
    invoke-virtual/range {v5 .. v16}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 245
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg9":Z
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Landroid/net/LinkProperties;
    .end local v20    # "_arg7":Landroid/net/NetworkCapabilities;
    .end local v21    # "_arg8":I
    :cond_271
    const/4 v9, 0x0

    goto :goto_226

    .line 257
    .restart local v9    # "_arg2":Z
    .restart local v10    # "_arg3":Ljava/lang/String;
    .restart local v11    # "_arg4":Ljava/lang/String;
    .restart local v18    # "_arg5":Ljava/lang/String;
    :cond_273
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/net/LinkProperties;
    goto :goto_242

    .line 264
    :cond_276
    const/16 v20, 0x0

    .restart local v20    # "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_252

    .line 269
    .restart local v21    # "_arg8":I
    :cond_279
    const/16 v16, 0x0

    goto :goto_25e

    .line 276
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":Landroid/net/LinkProperties;
    .end local v20    # "_arg7":Landroid/net/NetworkCapabilities;
    .end local v21    # "_arg8":I
    :sswitch_27c
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 287
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_296
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 291
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 293
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 300
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_2b4
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d6

    .line 303
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 308
    .local v6, "_arg0":Landroid/os/Bundle;
    :goto_2cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 306
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :cond_2d6
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/Bundle;
    goto :goto_2cb

    .line 314
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_2d8
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 318
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2fe

    .line 319
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 324
    .local v8, "_arg1":Landroid/os/Bundle;
    :goto_2f3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(JLandroid/os/Bundle;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 322
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :cond_2fe
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_2f3

    .line 330
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_300
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 333
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 339
    .end local v6    # "_arg0":I
    :sswitch_316
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 342
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 348
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_330
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 352
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 354
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 355
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 361
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_34e
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 365
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 366
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 372
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_368
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 381
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 387
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    :sswitch_38a
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 391
    .local v6, "_arg0":J
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 392
    .local v24, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(JLjava/util/List;)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 398
    .end local v6    # "_arg0":J
    .end local v24    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_3aa
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3cc

    .line 401
    sget-object v5, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 406
    .local v6, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :goto_3c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 404
    .end local v6    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :cond_3cc
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_3c1

    .line 412
    .end local v6    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_3ce
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f0

    .line 415
    sget-object v5, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/VoLteServiceState;

    .line 420
    .local v6, "_arg0":Landroid/telephony/VoLteServiceState;
    :goto_3e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 418
    .end local v6    # "_arg0":Landroid/telephony/VoLteServiceState;
    :cond_3f0
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_3e5

    .line 426
    .end local v6    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_3f2
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 430
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 431
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(J[B)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 437
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":[B
    :sswitch_40c
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_425

    const/4 v6, 0x1

    .line 440
    .local v6, "_arg0":Z
    :goto_41a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDualSimSlotActivationState(Z)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 439
    .end local v6    # "_arg0":Z
    :cond_425
    const/4 v6, 0x0

    goto :goto_41a

    .line 446
    :sswitch_427
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyFdnUpdated()V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 453
    :sswitch_437
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 456
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDunDataActivity(I)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 462
    .end local v6    # "_arg0":I
    :sswitch_44d
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 466
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 467
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDunDataConnection(II)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 38
    nop

    :sswitch_data_468
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_69
        0x4 -> :sswitch_82
        0x5 -> :sswitch_a0
        0x6 -> :sswitch_ce
        0x7 -> :sswitch_f2
        0x8 -> :sswitch_11a
        0x9 -> :sswitch_13f
        0xa -> :sswitch_15a
        0xb -> :sswitch_179
        0xc -> :sswitch_18f
        0xd -> :sswitch_1a9
        0xe -> :sswitch_210
        0xf -> :sswitch_27c
        0x10 -> :sswitch_296
        0x11 -> :sswitch_2b4
        0x12 -> :sswitch_2d8
        0x13 -> :sswitch_300
        0x14 -> :sswitch_316
        0x15 -> :sswitch_330
        0x16 -> :sswitch_34e
        0x17 -> :sswitch_368
        0x18 -> :sswitch_38a
        0x19 -> :sswitch_3aa
        0x1a -> :sswitch_3ce
        0x1b -> :sswitch_3f2
        0x1c -> :sswitch_40c
        0x1d -> :sswitch_427
        0x1e -> :sswitch_437
        0x1f -> :sswitch_44d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
