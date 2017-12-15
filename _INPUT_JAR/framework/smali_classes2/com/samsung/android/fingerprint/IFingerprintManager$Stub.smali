.class public abstract Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;
.super Landroid/os/Binder;
.source "IFingerprintManager.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/IFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/IFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.fingerprint.IFingerprintManager"

.field static final TRANSACTION_addPermission:I = 0x9

.field static final TRANSACTION_attachClient:I = 0x21

.field static final TRANSACTION_cancel:I = 0x18

.field static final TRANSACTION_closeTransaction:I = 0x24

.field static final TRANSACTION_detachClient:I = 0x22

.field static final TRANSACTION_enroll:I = 0x19

.field static final TRANSACTION_enrollForMultiUser:I = 0x1e

.field static final TRANSACTION_finishIdentify:I = 0x25

.field static final TRANSACTION_getEnrollRepeatCount:I = 0x32

.field static final TRANSACTION_getEnrolledFingers:I = 0x2

.field static final TRANSACTION_getEnrolledPermissions:I = 0x3

.field static final TRANSACTION_getEnrolledUserCount:I = 0x14

.field static final TRANSACTION_getEnrolledUsers:I = 0x13

.field static final TRANSACTION_getFingerprintIdByFinger:I = 0x31

.field static final TRANSACTION_getFingerprintIds:I = 0x30

.field static final TRANSACTION_getIndexName:I = 0x2a

.field static final TRANSACTION_getLastImageQuality:I = 0x2d

.field static final TRANSACTION_getLastImageQualityMessage:I = 0x2c

.field static final TRANSACTION_getSensorServiceVersion:I = 0x12

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_hasPendingCommand:I = 0xa

.field static final TRANSACTION_identify:I = 0x1c

.field static final TRANSACTION_identifyForMultiUser:I = 0x1f

.field static final TRANSACTION_identifyWithDialog:I = 0x15

.field static final TRANSACTION_isEnrollSession:I = 0x2f

.field static final TRANSACTION_isEnrolledPermission:I = 0x4

.field static final TRANSACTION_isSensorReady:I = 0x26

.field static final TRANSACTION_isSupportFingerprintIds:I = 0x33

.field static final TRANSACTION_isVZWPermissionGranted:I = 0x2e

.field static final TRANSACTION_notifyAlternativePasswordBegin:I = 0xf

.field static final TRANSACTION_notifyApplicationState:I = 0x16

.field static final TRANSACTION_notifyAuthSessionBegin:I = 0xd

.field static final TRANSACTION_notifyAuthSessionEnd:I = 0xe

.field static final TRANSACTION_notifyEnrollBegin:I = 0xb

.field static final TRANSACTION_notifyEnrollEnd:I = 0xc

.field static final TRANSACTION_openTransaction:I = 0x23

.field static final TRANSACTION_processFIDO:I = 0x29

.field static final TRANSACTION_protect:I = 0x27

.field static final TRANSACTION_reEnroll:I = 0x1a

.field static final TRANSACTION_registerClient:I = 0x17

.field static final TRANSACTION_removeAllEnrolledFingers:I = 0x8

.field static final TRANSACTION_removeEnrolledFinger:I = 0x7

.field static final TRANSACTION_removeEnrolledPermission:I = 0x6

.field static final TRANSACTION_removeEnrolledPermissions:I = 0x5

.field static final TRANSACTION_secondaryEnroll:I = 0x1b

.field static final TRANSACTION_setIndexName:I = 0x2b

.field static final TRANSACTION_setPassword:I = 0x11

.field static final TRANSACTION_showIdentifyDialog:I = 0x20

.field static final TRANSACTION_unprotect:I = 0x28

.field static final TRANSACTION_unregisterClient:I = 0x1d

.field static final TRANSACTION_verifyPassword:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/fingerprint/IFingerprintManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_528

    .line 630
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getVersion()I

    move-result v4

    .line 50
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v4    # "_result":I
    :sswitch_20
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledFingers(Ljava/lang/String;)I

    move-result v4

    .line 60
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_34
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_48
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 82
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_5f

    move v6, v7

    :cond_5f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_63
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_7a

    move v6, v7

    :cond_7a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_7e
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 108
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v4, :cond_99

    move v6, v7

    :cond_99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_9e
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeEnrolledFinger(ILjava/lang/String;)Z

    move-result v4

    .line 120
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_b5

    move v6, v7

    :cond_b5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_ba
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->removeAllEnrolledFingers(Ljava/lang/String;)Z

    move-result v4

    .line 130
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_cd

    move v6, v7

    :cond_cd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_d2
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 144
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_ed

    move v6, v7

    :cond_ed
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_f2
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->hasPendingCommand()Z

    move-result v4

    .line 152
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_101

    move v6, v7

    :cond_101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v4    # "_result":Z
    :sswitch_106
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollBegin()Z

    move-result v4

    .line 160
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_115

    move v6, v7

    :cond_115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 166
    .end local v4    # "_result":Z
    :sswitch_11a
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyEnrollEnd()Z

    move-result v4

    .line 168
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_129

    move v6, v7

    :cond_129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v4    # "_result":Z
    :sswitch_12e
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAuthSessionBegin()Z

    move-result v4

    .line 176
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_13d

    move v6, v7

    :cond_13d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v4    # "_result":Z
    :sswitch_142
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAuthSessionEnd()Z

    move-result v4

    .line 184
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_151

    move v6, v7

    :cond_151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 190
    .end local v4    # "_result":Z
    :sswitch_156
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyAlternativePasswordBegin()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 197
    :sswitch_163
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 205
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v4, :cond_17e

    move v6, v7

    :cond_17e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_183
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 217
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_19a

    move v6, v7

    :cond_19a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_19f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getSensorServiceVersion()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 231
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1b0
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledUsers()Ljava/util/List;

    move-result-object v5

    .line 233
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 239
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c1
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrolledUserCount()I

    move-result v4

    .line 241
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 247
    .end local v4    # "_result":I
    :sswitch_1d2
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20b

    .line 252
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 258
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    .line 260
    .local v2, "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20d

    .line 261
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 266
    .local v3, "_arg3":Landroid/os/Bundle;
    :goto_1ff
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v4

    .line 267
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 255
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_20b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1e9

    .line 264
    .restart local v2    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    :cond_20d
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/Bundle;
    goto :goto_1ff

    .line 273
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :sswitch_20f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22e

    .line 278
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 283
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_226
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->notifyApplicationState(ILandroid/os/Bundle;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 281
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_22e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_226

    .line 289
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_230
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v0

    .line 293
    .local v0, "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_257

    .line 294
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 299
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_24b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v4

    .line 300
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 297
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/IBinder;
    :cond_257
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_24b

    .line 306
    .end local v0    # "_arg0":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_259
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 309
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->cancel(Landroid/os/IBinder;)I

    move-result v4

    .line 310
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 316
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_26e
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 320
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v4

    .line 324
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 330
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_28b
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 334
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->reEnroll(Landroid/os/IBinder;I)I

    move-result v4

    .line 336
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2a4
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 346
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->secondaryEnroll(Landroid/os/IBinder;I)I

    move-result v4

    .line 348
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 354
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_2bd
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 358
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v4

    .line 360
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 366
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2d6
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 369
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v4

    .line 370
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v4, :cond_2e9

    move v6, v7

    :cond_2e9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 376
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_2ee
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 380
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 385
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I

    move-result v4

    .line 386
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 392
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :sswitch_30f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 396
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v4

    .line 400
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 406
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_32c
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 410
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_35a

    .line 411
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 417
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_35c

    move v3, v7

    .line 420
    .local v3, "_arg3":Z
    :goto_34e
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v4

    .line 421
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 414
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":I
    :cond_35a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_343

    .restart local v2    # "_arg2":Ljava/lang/String;
    :cond_35c
    move v3, v6

    .line 419
    goto :goto_34e

    .line 427
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_35e
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 431
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    .line 432
    .local v1, "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;

    move-result-object v4

    .line 433
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 439
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/fingerprint/IFingerprintClient;
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_37b
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 442
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->detachClient(Landroid/os/IBinder;)Z

    move-result v4

    .line 443
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v4, :cond_38e

    move v6, v7

    :cond_38e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 449
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_393
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 452
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->openTransaction(Landroid/os/IBinder;)Z

    move-result v4

    .line 453
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v4, :cond_3a6

    move v6, v7

    :cond_3a6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 459
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_3ab
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 462
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->closeTransaction(Landroid/os/IBinder;)Z

    move-result v4

    .line 463
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v4, :cond_3be

    move v6, v7

    :cond_3be
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 469
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_3c3
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 473
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    .line 475
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v4, :cond_3da

    move v6, v7

    :cond_3da
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 481
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3df
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isSensorReady()Z

    move-result v4

    .line 483
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v4, :cond_3ee

    move v6, v7

    :cond_3ee
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 489
    .end local v4    # "_result":Z
    :sswitch_3f3
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 493
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 496
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 497
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 503
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":[B
    :sswitch_410
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 509
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 510
    .restart local v2    # "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 511
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 517
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":[B
    :sswitch_42d
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 521
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 526
    .local v3, "_arg3":[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    .line 527
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 533
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :sswitch_44e
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getIndexName(I)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 543
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_463
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->setIndexName(ILjava/lang/String;)Z

    move-result v4

    .line 549
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v4, :cond_47a

    move v6, v7

    :cond_47a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 555
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_47f
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 565
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_494
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getLastImageQuality(Ljava/lang/String;)I

    move-result v4

    .line 569
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_4a9
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isVZWPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    .line 579
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    if-eqz v4, :cond_4bc

    move v6, v7

    :cond_4bc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4c1
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isEnrollSession()Z

    move-result v4

    .line 587
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v4, :cond_4d0

    move v6, v7

    :cond_4d0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 593
    .end local v4    # "_result":Z
    :sswitch_4d5
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getFingerprintIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 603
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_4ea
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getFingerprintIdByFinger(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 615
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_503
    const-string v6, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->getEnrollRepeatCount()I

    move-result v4

    .line 617
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 623
    .end local v4    # "_result":I
    :sswitch_514
    const-string v8, "com.samsung.android.fingerprint.IFingerprintManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->isSupportFingerprintIds()Z

    move-result v4

    .line 625
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v4, :cond_523

    move v6, v7

    :cond_523
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_528
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_34
        0x4 -> :sswitch_48
        0x5 -> :sswitch_63
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_ba
        0x9 -> :sswitch_d2
        0xa -> :sswitch_f2
        0xb -> :sswitch_106
        0xc -> :sswitch_11a
        0xd -> :sswitch_12e
        0xe -> :sswitch_142
        0xf -> :sswitch_156
        0x10 -> :sswitch_163
        0x11 -> :sswitch_183
        0x12 -> :sswitch_19f
        0x13 -> :sswitch_1b0
        0x14 -> :sswitch_1c1
        0x15 -> :sswitch_1d2
        0x16 -> :sswitch_20f
        0x17 -> :sswitch_230
        0x18 -> :sswitch_259
        0x19 -> :sswitch_26e
        0x1a -> :sswitch_28b
        0x1b -> :sswitch_2a4
        0x1c -> :sswitch_2bd
        0x1d -> :sswitch_2d6
        0x1e -> :sswitch_2ee
        0x1f -> :sswitch_30f
        0x20 -> :sswitch_32c
        0x21 -> :sswitch_35e
        0x22 -> :sswitch_37b
        0x23 -> :sswitch_393
        0x24 -> :sswitch_3ab
        0x25 -> :sswitch_3c3
        0x26 -> :sswitch_3df
        0x27 -> :sswitch_3f3
        0x28 -> :sswitch_410
        0x29 -> :sswitch_42d
        0x2a -> :sswitch_44e
        0x2b -> :sswitch_463
        0x2c -> :sswitch_47f
        0x2d -> :sswitch_494
        0x2e -> :sswitch_4a9
        0x2f -> :sswitch_4c1
        0x30 -> :sswitch_4d5
        0x31 -> :sswitch_4ea
        0x32 -> :sswitch_503
        0x33 -> :sswitch_514
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
