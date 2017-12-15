.class public abstract Landroid/content/pm/IPersonaPolicyManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaPolicyManager.java"

# interfaces
.implements Landroid/content/pm/IPersonaPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaPolicyManager"

.field static final TRANSACTION_addLockOnImage:I = 0x2b

.field static final TRANSACTION_getAirCommandEnabled:I = 0x22

.field static final TRANSACTION_getAllowAllShare:I = 0x1c

.field static final TRANSACTION_getAllowContainerReset:I = 0x12

.field static final TRANSACTION_getAllowCustomBadgeIcon:I = 0xa

.field static final TRANSACTION_getAllowCustomColorIdentification:I = 0x10

.field static final TRANSACTION_getAllowCustomPersonaIcon:I = 0xe

.field static final TRANSACTION_getAllowDLNADataTransfer:I = 0x16

.field static final TRANSACTION_getAllowExportAndDeleteFiles:I = 0x2a

.field static final TRANSACTION_getAllowExportFiles:I = 0x28

.field static final TRANSACTION_getAllowImportFiles:I = 0x26

.field static final TRANSACTION_getAllowPrint:I = 0x18

.field static final TRANSACTION_getAllowShortCutCreation:I = 0x14

.field static final TRANSACTION_getAllowUniversalCallerId:I = 0x24

.field static final TRANSACTION_getCameraModeChangeEnabled:I = 0x8

.field static final TRANSACTION_getDisableSwitchWidgetOnLockScreen:I = 0xc

.field static final TRANSACTION_getEncryptionStatus:I = 0x4

.field static final TRANSACTION_getGearSupportEnabled:I = 0x1e

.field static final TRANSACTION_getModifyLockScreenTimeout:I = 0x1a

.field static final TRANSACTION_getPasswordLockPolicy:I = 0x2

.field static final TRANSACTION_getPenWindowEnabled:I = 0x20

.field static final TRANSACTION_getRCPDataPolicy:I = 0x30

.field static final TRANSACTION_getRCPDataPolicyForUser:I = 0x31

.field static final TRANSACTION_getRCPNotificationPolicy:I = 0x33

.field static final TRANSACTION_getSecureKeystoreEnabled:I = 0x6

.field static final TRANSACTION_getSwitchNotifEnabled:I = 0x35

.field static final TRANSACTION_isBadgeRequired:I = 0x2c

.field static final TRANSACTION_isBadgeRequiredFromOwner:I = 0x2d

.field static final TRANSACTION_registerReceivers:I = 0x2e

.field static final TRANSACTION_setAirCommandEnabled:I = 0x21

.field static final TRANSACTION_setAllowAllShare:I = 0x1b

.field static final TRANSACTION_setAllowContainerReset:I = 0x11

.field static final TRANSACTION_setAllowCustomBadgeIcon:I = 0x9

.field static final TRANSACTION_setAllowCustomColorIdentification:I = 0xf

.field static final TRANSACTION_setAllowCustomPersonaIcon:I = 0xd

.field static final TRANSACTION_setAllowDLNADataTransfer:I = 0x15

.field static final TRANSACTION_setAllowExportAndDeleteFiles:I = 0x29

.field static final TRANSACTION_setAllowExportFiles:I = 0x27

.field static final TRANSACTION_setAllowImportFiles:I = 0x25

.field static final TRANSACTION_setAllowPrint:I = 0x17

.field static final TRANSACTION_setAllowShortCutCreation:I = 0x13

.field static final TRANSACTION_setAllowUniversalCallerId:I = 0x23

.field static final TRANSACTION_setCameraModeChangeEnabled:I = 0x7

.field static final TRANSACTION_setDisableSwitchWidgetOnLockScreen:I = 0xb

.field static final TRANSACTION_setEncryptionStatus:I = 0x3

.field static final TRANSACTION_setGearSupportEnabled:I = 0x1d

.field static final TRANSACTION_setModifyLockScreenTimeout:I = 0x19

.field static final TRANSACTION_setPasswordLockPolicy:I = 0x1

.field static final TRANSACTION_setPenWindowEnabled:I = 0x1f

.field static final TRANSACTION_setRCPDataPolicy:I = 0x2f

.field static final TRANSACTION_setRCPNotificationPolicy:I = 0x32

.field static final TRANSACTION_setSecureKeystoreEnabled:I = 0x5

.field static final TRANSACTION_setSwitchNotifEnabled:I = 0x34


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.content.pm.IPersonaPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaPolicyManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_5e6

    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 45
    :sswitch_a
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    move v1, v4

    .line 55
    .local v1, "_arg1":Z
    :goto_20
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPasswordLockPolicy(IZ)Z

    move-result v3

    .line 56
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_2a

    move v5, v4

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2e
    move v1, v5

    .line 54
    goto :goto_20

    .line 62
    .end local v0    # "_arg0":I
    :sswitch_30
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPasswordLockPolicy(I)Z

    move-result v3

    .line 66
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_43

    move v5, v4

    :cond_43
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_47
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    move v1, v4

    .line 77
    .restart local v1    # "_arg1":Z
    :goto_57
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setEncryptionStatus(IZ)Z

    move-result v3

    .line 78
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_61

    move v5, v4

    :cond_61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_65
    move v1, v5

    .line 76
    goto :goto_57

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_67
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getEncryptionStatus(I)Z

    move-result v3

    .line 88
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_7a

    move v5, v4

    :cond_7a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    move v1, v4

    .line 99
    .restart local v1    # "_arg1":Z
    :goto_8e
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSecureKeystoreEnabled(IZ)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_98

    move v5, v4

    :cond_98
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_9d
    move v1, v5

    .line 98
    goto :goto_8e

    .line 106
    .end local v0    # "_arg0":I
    :sswitch_9f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureKeystoreEnabled(I)Z

    move-result v3

    .line 110
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_b2

    move v5, v4

    :cond_b2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b7
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d6

    move v1, v4

    .line 121
    .restart local v1    # "_arg1":Z
    :goto_c7
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setCameraModeChangeEnabled(IZ)Z

    move-result v3

    .line 122
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_d1

    move v5, v4

    :cond_d1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_d6
    move v1, v5

    .line 120
    goto :goto_c7

    .line 128
    .end local v0    # "_arg0":I
    :sswitch_d8
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getCameraModeChangeEnabled(I)Z

    move-result v3

    .line 132
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_eb

    move v5, v4

    :cond_eb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 138
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_f0
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10f

    move v1, v4

    .line 143
    .restart local v1    # "_arg1":Z
    :goto_100
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomBadgeIcon(IZ)Z

    move-result v3

    .line 144
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v3, :cond_10a

    move v5, v4

    :cond_10a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_10f
    move v1, v5

    .line 142
    goto :goto_100

    .line 150
    .end local v0    # "_arg0":I
    :sswitch_111
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomBadgeIcon(I)Z

    move-result v3

    .line 154
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_124

    move v5, v4

    :cond_124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_129
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_148

    move v1, v4

    .line 165
    .restart local v1    # "_arg1":Z
    :goto_139
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setDisableSwitchWidgetOnLockScreen(IZ)Z

    move-result v3

    .line 166
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_143

    move v5, v4

    :cond_143
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_148
    move v1, v5

    .line 164
    goto :goto_139

    .line 172
    .end local v0    # "_arg0":I
    :sswitch_14a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getDisableSwitchWidgetOnLockScreen(I)Z

    move-result v3

    .line 176
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_15d

    move v5, v4

    :cond_15d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_162
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_181

    move v1, v4

    .line 187
    .restart local v1    # "_arg1":Z
    :goto_172
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomPersonaIcon(IZ)Z

    move-result v3

    .line 188
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v3, :cond_17c

    move v5, v4

    :cond_17c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_181
    move v1, v5

    .line 186
    goto :goto_172

    .line 194
    .end local v0    # "_arg0":I
    :sswitch_183
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomPersonaIcon(I)Z

    move-result v3

    .line 198
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_196

    move v5, v4

    :cond_196
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_19b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1ba

    move v1, v4

    .line 209
    .restart local v1    # "_arg1":Z
    :goto_1ab
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomColorIdentification(IZ)Z

    move-result v3

    .line 210
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v3, :cond_1b5

    move v5, v4

    :cond_1b5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1ba
    move v1, v5

    .line 208
    goto :goto_1ab

    .line 216
    .end local v0    # "_arg0":I
    :sswitch_1bc
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomColorIdentification(I)Z

    move-result v3

    .line 220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v3, :cond_1cf

    move v5, v4

    :cond_1cf
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 226
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1d4
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f3

    move v1, v4

    .line 231
    .restart local v1    # "_arg1":Z
    :goto_1e4
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowContainerReset(IZ)Z

    move-result v3

    .line 232
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v3, :cond_1ee

    move v5, v4

    :cond_1ee
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1f3
    move v1, v5

    .line 230
    goto :goto_1e4

    .line 238
    .end local v0    # "_arg0":I
    :sswitch_1f5
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowContainerReset(I)Z

    move-result v3

    .line 242
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v3, :cond_208

    move v5, v4

    :cond_208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 248
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_20d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22c

    move v1, v4

    .line 253
    .restart local v1    # "_arg1":Z
    :goto_21d
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowShortCutCreation(IZ)Z

    move-result v3

    .line 254
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v3, :cond_227

    move v5, v4

    :cond_227
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_22c
    move v1, v5

    .line 252
    goto :goto_21d

    .line 260
    .end local v0    # "_arg0":I
    :sswitch_22e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowShortCutCreation(I)Z

    move-result v3

    .line 264
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v3, :cond_241

    move v5, v4

    :cond_241
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 270
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_246
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_265

    move v1, v4

    .line 275
    .restart local v1    # "_arg1":Z
    :goto_256
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowDLNADataTransfer(IZ)Z

    move-result v3

    .line 276
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v3, :cond_260

    move v5, v4

    :cond_260
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_265
    move v1, v5

    .line 274
    goto :goto_256

    .line 282
    .end local v0    # "_arg0":I
    :sswitch_267
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowDLNADataTransfer(I)Z

    move-result v3

    .line 286
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v3, :cond_27a

    move v5, v4

    :cond_27a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 292
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_27f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29e

    move v1, v4

    .line 297
    .restart local v1    # "_arg1":Z
    :goto_28f
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowPrint(IZ)Z

    move-result v3

    .line 298
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v3, :cond_299

    move v5, v4

    :cond_299
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_29e
    move v1, v5

    .line 296
    goto :goto_28f

    .line 304
    .end local v0    # "_arg0":I
    :sswitch_2a0
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowPrint(I)Z

    move-result v3

    .line 308
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v3, :cond_2b3

    move v5, v4

    :cond_2b3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 314
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2b8
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d7

    move v1, v4

    .line 319
    .restart local v1    # "_arg1":Z
    :goto_2c8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setModifyLockScreenTimeout(IZ)Z

    move-result v3

    .line 320
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v3, :cond_2d2

    move v5, v4

    :cond_2d2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2d7
    move v1, v5

    .line 318
    goto :goto_2c8

    .line 326
    .end local v0    # "_arg0":I
    :sswitch_2d9
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getModifyLockScreenTimeout(I)Z

    move-result v3

    .line 330
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v3, :cond_2ec

    move v5, v4

    :cond_2ec
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 336
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2f1
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_310

    move v1, v4

    .line 341
    .restart local v1    # "_arg1":Z
    :goto_301
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowAllShare(IZ)Z

    move-result v3

    .line 342
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v3, :cond_30b

    move v5, v4

    :cond_30b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_310
    move v1, v5

    .line 340
    goto :goto_301

    .line 348
    .end local v0    # "_arg0":I
    :sswitch_312
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowAllShare(I)Z

    move-result v3

    .line 352
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v3, :cond_325

    move v5, v4

    :cond_325
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_32a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_349

    move v1, v4

    .line 363
    .restart local v1    # "_arg1":Z
    :goto_33a
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setGearSupportEnabled(IZ)Z

    move-result v3

    .line 364
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v3, :cond_344

    move v5, v4

    :cond_344
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_349
    move v1, v5

    .line 362
    goto :goto_33a

    .line 370
    .end local v0    # "_arg0":I
    :sswitch_34b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getGearSupportEnabled(I)Z

    move-result v3

    .line 374
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v3, :cond_35e

    move v5, v4

    :cond_35e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 380
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_363
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_382

    move v1, v4

    .line 385
    .restart local v1    # "_arg1":Z
    :goto_373
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPenWindowEnabled(IZ)Z

    move-result v3

    .line 386
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v3, :cond_37d

    move v5, v4

    :cond_37d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_382
    move v1, v5

    .line 384
    goto :goto_373

    .line 392
    .end local v0    # "_arg0":I
    :sswitch_384
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPenWindowEnabled(I)Z

    move-result v3

    .line 396
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v3, :cond_397

    move v5, v4

    :cond_397
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 402
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_39c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3bb

    move v1, v4

    .line 407
    .restart local v1    # "_arg1":Z
    :goto_3ac
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAirCommandEnabled(IZ)Z

    move-result v3

    .line 408
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v3, :cond_3b6

    move v5, v4

    :cond_3b6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3bb
    move v1, v5

    .line 406
    goto :goto_3ac

    .line 414
    .end local v0    # "_arg0":I
    :sswitch_3bd
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAirCommandEnabled(I)Z

    move-result v3

    .line 418
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v3, :cond_3d0

    move v5, v4

    :cond_3d0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 424
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_3d5
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f4

    move v1, v4

    .line 429
    .restart local v1    # "_arg1":Z
    :goto_3e5
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowUniversalCallerId(IZ)Z

    move-result v3

    .line 430
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v3, :cond_3ef

    move v5, v4

    :cond_3ef
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3f4
    move v1, v5

    .line 428
    goto :goto_3e5

    .line 436
    .end local v0    # "_arg0":I
    :sswitch_3f6
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowUniversalCallerId(I)Z

    move-result v3

    .line 440
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v3, :cond_409

    move v5, v4

    :cond_409
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 446
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_40e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42d

    move v1, v4

    .line 451
    .restart local v1    # "_arg1":Z
    :goto_41e
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowImportFiles(IZ)Z

    move-result v3

    .line 452
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v3, :cond_428

    move v5, v4

    :cond_428
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_42d
    move v1, v5

    .line 450
    goto :goto_41e

    .line 458
    .end local v0    # "_arg0":I
    :sswitch_42f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowImportFiles(I)Z

    move-result v3

    .line 462
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v3, :cond_442

    move v5, v4

    :cond_442
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 468
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_447
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_466

    move v1, v4

    .line 473
    .restart local v1    # "_arg1":Z
    :goto_457
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportFiles(IZ)Z

    move-result v3

    .line 474
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v3, :cond_461

    move v5, v4

    :cond_461
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_466
    move v1, v5

    .line 472
    goto :goto_457

    .line 480
    .end local v0    # "_arg0":I
    :sswitch_468
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportFiles(I)Z

    move-result v3

    .line 484
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v3, :cond_47b

    move v5, v4

    :cond_47b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 490
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_480
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49f

    move v1, v4

    .line 495
    .restart local v1    # "_arg1":Z
    :goto_490
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportAndDeleteFiles(IZ)Z

    move-result v3

    .line 496
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v3, :cond_49a

    move v5, v4

    :cond_49a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_49f
    move v1, v5

    .line 494
    goto :goto_490

    .line 502
    .end local v0    # "_arg0":I
    :sswitch_4a1
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportAndDeleteFiles(I)Z

    move-result v3

    .line 506
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v3, :cond_4b4

    move v5, v4

    :cond_4b4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 512
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_4b9
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4dd

    .line 515
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 520
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    :goto_4cc
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 521
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v3, :cond_4df

    .line 523
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 518
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_4dd
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_4cc

    .line 527
    .restart local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_4df
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 533
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4e4
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequired()Z

    move-result v3

    .line 535
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v3, :cond_4f3

    move v5, v4

    :cond_4f3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 541
    .end local v3    # "_result":Z
    :sswitch_4f8
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v3

    .line 545
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v3, :cond_50b

    move v5, v4

    :cond_50b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 551
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_510
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->registerReceivers()V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 558
    :sswitch_51d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 566
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v3, :cond_538

    move v5, v4

    :cond_538
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 572
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_53d
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_556
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 598
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_573
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 606
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v3, :cond_58e

    move v5, v4

    :cond_58e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 612
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_593
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 624
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5ac
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5cb

    move v1, v4

    .line 629
    .local v1, "_arg1":Z
    :goto_5bc
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSwitchNotifEnabled(IZ)Z

    move-result v3

    .line 630
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v3, :cond_5c6

    move v5, v4

    :cond_5c6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_5cb
    move v1, v5

    .line 628
    goto :goto_5bc

    .line 636
    .end local v0    # "_arg0":I
    :sswitch_5cd
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSwitchNotifEnabled(I)Z

    move-result v3

    .line 640
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v3, :cond_5e0

    move v5, v4

    :cond_5e0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_5e6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_47
        0x4 -> :sswitch_67
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_b7
        0x8 -> :sswitch_d8
        0x9 -> :sswitch_f0
        0xa -> :sswitch_111
        0xb -> :sswitch_129
        0xc -> :sswitch_14a
        0xd -> :sswitch_162
        0xe -> :sswitch_183
        0xf -> :sswitch_19b
        0x10 -> :sswitch_1bc
        0x11 -> :sswitch_1d4
        0x12 -> :sswitch_1f5
        0x13 -> :sswitch_20d
        0x14 -> :sswitch_22e
        0x15 -> :sswitch_246
        0x16 -> :sswitch_267
        0x17 -> :sswitch_27f
        0x18 -> :sswitch_2a0
        0x19 -> :sswitch_2b8
        0x1a -> :sswitch_2d9
        0x1b -> :sswitch_2f1
        0x1c -> :sswitch_312
        0x1d -> :sswitch_32a
        0x1e -> :sswitch_34b
        0x1f -> :sswitch_363
        0x20 -> :sswitch_384
        0x21 -> :sswitch_39c
        0x22 -> :sswitch_3bd
        0x23 -> :sswitch_3d5
        0x24 -> :sswitch_3f6
        0x25 -> :sswitch_40e
        0x26 -> :sswitch_42f
        0x27 -> :sswitch_447
        0x28 -> :sswitch_468
        0x29 -> :sswitch_480
        0x2a -> :sswitch_4a1
        0x2b -> :sswitch_4b9
        0x2c -> :sswitch_4e4
        0x2d -> :sswitch_4f8
        0x2e -> :sswitch_510
        0x2f -> :sswitch_51d
        0x30 -> :sswitch_53d
        0x31 -> :sswitch_556
        0x32 -> :sswitch_573
        0x33 -> :sswitch_593
        0x34 -> :sswitch_5ac
        0x35 -> :sswitch_5cd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
