.class public abstract Landroid/os/IPersonaManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaManager.java"

# interfaces
.implements Landroid/os/IPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPersonaManager"

.field static final TRANSACTION_addAppForPersona:I = 0x31

.field static final TRANSACTION_addLockOnImage:I = 0x1d

.field static final TRANSACTION_addPackageToInstallWhiteList:I = 0x37

.field static final TRANSACTION_adminLockPersona:I = 0x2d

.field static final TRANSACTION_adminUnLockPersona:I = 0x2e

.field static final TRANSACTION_canAccess:I = 0x63

.field static final TRANSACTION_clearAppListForPersona:I = 0x34

.field static final TRANSACTION_convertContainerType:I = 0x4f

.field static final TRANSACTION_createPersona:I = 0x8

.field static final TRANSACTION_disablePersonaKeyGuard:I = 0x41

.field static final TRANSACTION_enablePersonaKeyGuard:I = 0x42

.field static final TRANSACTION_exists:I = 0xe

.field static final TRANSACTION_fireEvent:I = 0x4

.field static final TRANSACTION_getAdminUidForPersona:I = 0x22

.field static final TRANSACTION_getAppListForPersona:I = 0x33

.field static final TRANSACTION_getDisabledHomeLaunchers:I = 0x40

.field static final TRANSACTION_getFingerCount:I = 0x5e

.field static final TRANSACTION_getForegroundUser:I = 0x66

.field static final TRANSACTION_getIsAdminLockedJustBefore:I = 0x5a

.field static final TRANSACTION_getIsFingerAsSupplement:I = 0x50

.field static final TRANSACTION_getIsFingerIdentifyFailed:I = 0x5c

.field static final TRANSACTION_getIsFingerReset:I = 0x58

.field static final TRANSACTION_getIsFingerTimeout:I = 0x56

.field static final TRANSACTION_getIsUnlockedAfterTurnOn:I = 0x54

.field static final TRANSACTION_getKeyguardShowState:I = 0x4d

.field static final TRANSACTION_getKnoxIconChanged:I = 0x6d

.field static final TRANSACTION_getKnoxNameChanged:I = 0x6c

.field static final TRANSACTION_getKnoxSecurityTimeout:I = 0x64

.field static final TRANSACTION_getLastKeyguardUnlockTime:I = 0x52

.field static final TRANSACTION_getMoveToKnoxStatus:I = 0x16

.field static final TRANSACTION_getNormalizedState:I = 0x1a

.field static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x3a

.field static final TRANSACTION_getParentId:I = 0x14

.field static final TRANSACTION_getParentUserForCurrentPersona:I = 0x11

.field static final TRANSACTION_getPasswordHint:I = 0x44

.field static final TRANSACTION_getPersonaBackgroundTime:I = 0x1e

.field static final TRANSACTION_getPersonaIcon:I = 0x13

.field static final TRANSACTION_getPersonaIdentification:I = 0x21

.field static final TRANSACTION_getPersonaIds:I = 0x2f

.field static final TRANSACTION_getPersonaInfo:I = 0xd

.field static final TRANSACTION_getPersonaSamsungAccount:I = 0x25

.field static final TRANSACTION_getPersonaType:I = 0x18

.field static final TRANSACTION_getPersonas:I = 0xc

.field static final TRANSACTION_getPersonasForCreator:I = 0x10

.field static final TRANSACTION_getPersonasForUser:I = 0xf

.field static final TRANSACTION_getPreviousState:I = 0x2

.field static final TRANSACTION_getScreenOffTime:I = 0x3c

.field static final TRANSACTION_getShortcutMode:I = 0x2b

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getUserManagedPersonas:I = 0x27

.field static final TRANSACTION_handleHomeShow:I = 0x29

.field static final TRANSACTION_hideScrim:I = 0x4e

.field static final TRANSACTION_inState:I = 0x3

.field static final TRANSACTION_installApplications:I = 0x1b

.field static final TRANSACTION_isAttribute:I = 0x6

.field static final TRANSACTION_isFingerSupplementActivated:I = 0x60

.field static final TRANSACTION_isKioskContainerExistOnDevice:I = 0x46

.field static final TRANSACTION_isKioskModeEnabled:I = 0x45

.field static final TRANSACTION_isPackageInInstallWhiteList:I = 0x39

.field static final TRANSACTION_isResetPersonaOnRebootEnabled:I = 0x4b

.field static final TRANSACTION_isSessionExpired:I = 0x2c

.field static final TRANSACTION_launchPersonaHome:I = 0xa

.field static final TRANSACTION_lockPersona:I = 0x28

.field static final TRANSACTION_markForRemoval:I = 0x23

.field static final TRANSACTION_mountOldContainer:I = 0x68

.field static final TRANSACTION_notifyKeyguardShow:I = 0x4c

.field static final TRANSACTION_onKeyguardBackPressed:I = 0x67

.field static final TRANSACTION_onSentinelActivityResumed:I = 0x48

.field static final TRANSACTION_onWakeLockChange:I = 0x3f

.field static final TRANSACTION_refreshTimer:I = 0x3d

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x1f

.field static final TRANSACTION_registerUser:I = 0x7

.field static final TRANSACTION_removeAppForPersona:I = 0x32

.field static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x38

.field static final TRANSACTION_removePersona:I = 0xb

.field static final TRANSACTION_resetPassword:I = 0x36

.field static final TRANSACTION_resetPersona:I = 0x20

.field static final TRANSACTION_resetPersonaOnReboot:I = 0x49

.field static final TRANSACTION_savePasswordInTima:I = 0x35

.field static final TRANSACTION_setAccessPermission:I = 0x62

.field static final TRANSACTION_setAttribute:I = 0x5

.field static final TRANSACTION_setBackPressed:I = 0x47

.field static final TRANSACTION_setFingerCount:I = 0x5f

.field static final TRANSACTION_setFsMountState:I = 0x43

.field static final TRANSACTION_setIsAdminLockedJustBefore:I = 0x5b

.field static final TRANSACTION_setIsFingerAsSupplement:I = 0x51

.field static final TRANSACTION_setIsFingerIdentifyFailed:I = 0x5d

.field static final TRANSACTION_setIsFingerReset:I = 0x59

.field static final TRANSACTION_setIsFingerTimeout:I = 0x57

.field static final TRANSACTION_setIsUnlockedAfterTurnOn:I = 0x55

.field static final TRANSACTION_setKnoxBackupPin:I = 0x6b

.field static final TRANSACTION_setKnoxSecurityTimeout:I = 0x65

.field static final TRANSACTION_setLastKeyguardUnlockTime:I = 0x53

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x3b

.field static final TRANSACTION_setMoveToKnoxStatus:I = 0x15

.field static final TRANSACTION_setPersonaIcon:I = 0x12

.field static final TRANSACTION_setPersonaName:I = 0x17

.field static final TRANSACTION_setPersonaSamsungAccount:I = 0x26

.field static final TRANSACTION_setPersonaType:I = 0x19

.field static final TRANSACTION_setShortcutMode:I = 0x2a

.field static final TRANSACTION_setShownHelp:I = 0x61

.field static final TRANSACTION_settingSyncAllowed:I = 0x30

.field static final TRANSACTION_switchPersonaAndLaunch:I = 0x9

.field static final TRANSACTION_unInstallSystemApplications:I = 0x1c

.field static final TRANSACTION_unmarkForRemoval:I = 0x24

.field static final TRANSACTION_unmountOldContainer:I = 0x69

.field static final TRANSACTION_updatePersonaInfo:I = 0x4a

.field static final TRANSACTION_userActivity:I = 0x3e

.field static final TRANSACTION_verifyKnoxBackupPin:I = 0x6a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPersonaManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;
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
    const-string v1, "android.os.IPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IPersonaManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/IPersonaManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/IPersonaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 34
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
    .line 41
    sparse-switch p1, :sswitch_data_e84

    .line 1312
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 45
    :sswitch_8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    goto :goto_7

    .line 50
    :sswitch_11
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 53
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 54
    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v26, :cond_37

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_35
    const/4 v5, 0x1

    goto :goto_7

    .line 60
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 66
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_3e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 69
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPreviousState(I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 70
    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v26, :cond_64

    .line 72
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_62
    const/4 v5, 0x1

    goto :goto_7

    .line 76
    :cond_64
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 82
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_6b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9a

    .line 85
    sget-object v5, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaState;

    .line 91
    .local v6, "_arg0":Landroid/content/pm/PersonaState;
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 92
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v26

    .line 93
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v26, :cond_9c

    const/4 v5, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 88
    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_9a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaState;
    goto :goto_82

    .line 94
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_9c
    const/4 v5, 0x0

    goto :goto_92

    .line 99
    .end local v6    # "_arg0":Landroid/content/pm/PersonaState;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_9e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d5

    .line 102
    sget-object v5, Landroid/content/pm/PersonaNewEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaNewEvent;

    .line 108
    .local v6, "_arg0":Landroid/content/pm/PersonaNewEvent;
    :goto_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 109
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    move-result-object v26

    .line 110
    .local v26, "_result":Landroid/content/pm/PersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v26, :cond_d7

    .line 112
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_d2
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 105
    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_d5
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    goto :goto_b5

    .line 116
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Landroid/content/pm/PersonaState;
    :cond_d7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d2

    .line 122
    .end local v6    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Landroid/content/pm/PersonaState;
    :sswitch_de
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_114

    .line 125
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .line 131
    .local v6, "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_116

    const/4 v7, 0x1

    .line 133
    .local v7, "_arg1":Z
    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 134
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v26

    .line 135
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v26, :cond_118

    const/4 v5, 0x1

    :goto_10c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 128
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :cond_114
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_f5

    .line 131
    :cond_116
    const/4 v7, 0x0

    goto :goto_fc

    .line 136
    .restart local v7    # "_arg1":Z
    .restart local v8    # "_arg2":I
    .restart local v26    # "_result":Z
    :cond_118
    const/4 v5, 0x0

    goto :goto_10c

    .line 141
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v26    # "_result":Z
    :sswitch_11a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_149

    .line 144
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaAttribute;

    .line 150
    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    :goto_131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 151
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v26

    .line 152
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v26, :cond_14b

    const/4 v5, 0x1

    :goto_141
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 147
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :cond_149
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_131

    .line 153
    .restart local v7    # "_arg1":I
    .restart local v26    # "_result":Z
    :cond_14b
    const/4 v5, 0x0

    goto :goto_141

    .line 158
    .end local v6    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_14d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v6

    .line 161
    .local v6, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v26

    .line 162
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v26, :cond_170

    const/4 v5, 0x1

    :goto_168
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 163
    :cond_170
    const/4 v5, 0x0

    goto :goto_168

    .line 168
    .end local v6    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v26    # "_result":Z
    :sswitch_172
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b8

    .line 181
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 187
    .local v12, "_arg5":Landroid/net/Uri;
    :goto_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v5, p0

    .line 190
    invoke-virtual/range {v5 .. v14}, Landroid/os/IPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v26

    .line 191
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 184
    .end local v12    # "_arg5":Landroid/net/Uri;
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v26    # "_result":I
    :cond_1b8
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/net/Uri;
    goto :goto_19d

    .line 197
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/net/Uri;
    :sswitch_1ba
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 201
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e9

    .line 202
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 207
    .local v7, "_arg1":Landroid/content/Intent;
    :goto_1d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v26

    .line 208
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v26, :cond_1eb

    const/4 v5, 0x1

    :goto_1e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 205
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :cond_1e9
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/Intent;
    goto :goto_1d5

    .line 209
    .restart local v26    # "_result":Z
    :cond_1eb
    const/4 v5, 0x0

    goto :goto_1e1

    .line 214
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v26    # "_result":Z
    :sswitch_1ed
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->launchPersonaHome(I)Z

    move-result v26

    .line 218
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v26, :cond_20c

    const/4 v5, 0x1

    :goto_204
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 219
    :cond_20c
    const/4 v5, 0x0

    goto :goto_204

    .line 224
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_20e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->removePersona(I)I

    move-result v26

    .line 228
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 234
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_22c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24d

    const/4 v6, 0x1

    .line 237
    .local v6, "_arg0":Z
    :goto_23a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v21

    .line 238
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 240
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 236
    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_24d
    const/4 v6, 0x0

    goto :goto_23a

    .line 244
    :sswitch_24f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v26

    .line 248
    .local v26, "_result":Landroid/content/pm/PersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v26, :cond_276

    .line 250
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 256
    :goto_273
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 254
    :cond_276
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_273

    .line 260
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/content/pm/PersonaInfo;
    :sswitch_27d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 263
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->exists(I)Z

    move-result v26

    .line 264
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v26, :cond_29c

    const/4 v5, 0x1

    :goto_294
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 265
    :cond_29c
    const/4 v5, 0x0

    goto :goto_294

    .line 270
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_29e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c3

    const/4 v7, 0x1

    .line 275
    .local v7, "_arg1":Z
    :goto_2b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v21

    .line 276
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 278
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 274
    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2c3
    const/4 v7, 0x0

    goto :goto_2b0

    .line 282
    .end local v6    # "_arg0":I
    :sswitch_2c5
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 286
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2ea

    const/4 v7, 0x1

    .line 287
    .restart local v7    # "_arg1":Z
    :goto_2d7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v21

    .line 288
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 290
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 286
    .end local v7    # "_arg1":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2ea
    const/4 v7, 0x0

    goto :goto_2d7

    .line 294
    .end local v6    # "_arg0":I
    :sswitch_2ec
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v26

    .line 296
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 302
    .end local v26    # "_result":I
    :sswitch_304
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 306
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32a

    .line 307
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 312
    .local v7, "_arg1":Landroid/graphics/Bitmap;
    :goto_31f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 310
    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :cond_32a
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_31f

    .line 318
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_32c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 321
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 322
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v26, :cond_353

    .line 324
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    :goto_350
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 328
    :cond_353
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_350

    .line 334
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_35a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 337
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getParentId(I)I

    move-result v26

    .line 338
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 344
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_378
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_391

    const/4 v6, 0x1

    .line 347
    .local v6, "_arg0":Z
    :goto_386
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->setMoveToKnoxStatus(Z)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 346
    .end local v6    # "_arg0":Z
    :cond_391
    const/4 v6, 0x0

    goto :goto_386

    .line 353
    :sswitch_393
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getMoveToKnoxStatus()Z

    move-result v26

    .line 355
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v26, :cond_3ac

    const/4 v5, 0x1

    :goto_3a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 356
    :cond_3ac
    const/4 v5, 0x0

    goto :goto_3a4

    .line 361
    .end local v26    # "_result":Z
    :sswitch_3ae
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 365
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 366
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 372
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_3c8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 375
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v26

    .line 376
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 382
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_3e6
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 386
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 387
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 393
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_400
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 396
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getNormalizedState(I)I

    move-result v26

    .line 397
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 403
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_41e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 407
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 408
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v26

    .line 409
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v26, :cond_441

    const/4 v5, 0x1

    :goto_439
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 410
    :cond_441
    const/4 v5, 0x0

    goto :goto_439

    .line 415
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_443
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 419
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 420
    .restart local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Landroid/os/IPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v26

    .line 421
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 427
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_465
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_498

    .line 430
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 435
    .local v6, "_arg0":Landroid/graphics/Bitmap;
    :goto_47c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 436
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v26, :cond_49a

    .line 438
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 444
    :goto_495
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 433
    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_498
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_47c

    .line 442
    .restart local v26    # "_result":Landroid/graphics/Bitmap;
    :cond_49a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_495

    .line 448
    .end local v6    # "_arg0":Landroid/graphics/Bitmap;
    .end local v26    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4a1
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 451
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v26

    .line 452
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 458
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_4bf
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v6

    .line 461
    .local v6, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v26

    .line 462
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v26, :cond_4e2

    const/4 v5, 0x1

    :goto_4da
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 463
    :cond_4e2
    const/4 v5, 0x0

    goto :goto_4da

    .line 468
    .end local v6    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v26    # "_result":Z
    :sswitch_4e4
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 471
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPersona(I)I

    move-result v26

    .line 472
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 478
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_502
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 481
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v26

    .line 482
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 488
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_520
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 491
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v26

    .line 492
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 498
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_53e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 502
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_564

    .line 503
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 508
    .local v7, "_arg1":Landroid/content/ComponentName;
    :goto_559
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 506
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :cond_564
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/ComponentName;
    goto :goto_559

    .line 514
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    :sswitch_566
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 517
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmarkForRemoval(I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 523
    .end local v6    # "_arg0":I
    :sswitch_57c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 526
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v26

    .line 527
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 533
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_59a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 537
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 544
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_5b4
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d5

    const/4 v6, 0x1

    .line 547
    .local v6, "_arg0":Z
    :goto_5c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v21

    .line 548
    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 546
    .end local v6    # "_arg0":Z
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_5d5
    const/4 v6, 0x0

    goto :goto_5c2

    .line 554
    :sswitch_5d7
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 557
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->lockPersona(I)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 563
    .end local v6    # "_arg0":I
    :sswitch_5ed
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->handleHomeShow()Z

    move-result v26

    .line 565
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v26, :cond_606

    const/4 v5, 0x1

    :goto_5fe
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 566
    :cond_606
    const/4 v5, 0x0

    goto :goto_5fe

    .line 571
    .end local v26    # "_result":Z
    :sswitch_608
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 575
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_625

    const/4 v7, 0x1

    .line 576
    .local v7, "_arg1":Z
    :goto_61a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setShortcutMode(IZ)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 575
    .end local v7    # "_arg1":Z
    :cond_625
    const/4 v7, 0x0

    goto :goto_61a

    .line 582
    .end local v6    # "_arg0":I
    :sswitch_627
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 585
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getShortcutMode(I)Z

    move-result v26

    .line 586
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v26, :cond_646

    const/4 v5, 0x1

    :goto_63e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 587
    :cond_646
    const/4 v5, 0x0

    goto :goto_63e

    .line 592
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_648
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 595
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v26

    .line 596
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v26, :cond_667

    const/4 v5, 0x1

    :goto_65f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 597
    :cond_667
    const/4 v5, 0x0

    goto :goto_65f

    .line 602
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_669
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 606
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 607
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v26

    .line 608
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v26, :cond_68c

    const/4 v5, 0x1

    :goto_684
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 609
    :cond_68c
    const/4 v5, 0x0

    goto :goto_684

    .line 614
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_68e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 617
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v26

    .line 618
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v26, :cond_6ad

    const/4 v5, 0x1

    :goto_6a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 619
    :cond_6ad
    const/4 v5, 0x0

    goto :goto_6a5

    .line 624
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_6af
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v26

    .line 626
    .local v26, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 628
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 632
    .end local v26    # "_result":[I
    :sswitch_6c7
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 635
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v26

    .line 636
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v26, :cond_6e6

    const/4 v5, 0x1

    :goto_6de
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 637
    :cond_6e6
    const/4 v5, 0x0

    goto :goto_6de

    .line 642
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_6e8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 648
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 649
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 655
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_706
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 659
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 661
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 662
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 668
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :sswitch_724
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 672
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 673
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v28

    .line 674
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 676
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 680
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_746
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 684
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 685
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 691
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_760
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 695
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v26

    .line 697
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    if-eqz v26, :cond_783

    const/4 v5, 0x1

    :goto_77b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 698
    :cond_783
    const/4 v5, 0x0

    goto :goto_77b

    .line 703
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_785
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v26

    .line 707
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    if-eqz v26, :cond_7a4

    const/4 v5, 0x1

    :goto_79c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 708
    :cond_7a4
    const/4 v5, 0x0

    goto :goto_79c

    .line 713
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_7a6
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 717
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 718
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 724
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_7c0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 728
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 729
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 735
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_7da
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 739
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 740
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v26

    .line 741
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v26, :cond_7fd

    const/4 v5, 0x1

    :goto_7f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 742
    :cond_7fd
    const/4 v5, 0x0

    goto :goto_7f5

    .line 747
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_7ff
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 750
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v28

    .line 751
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 753
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 757
    .end local v6    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_81d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 761
    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 762
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/IPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 768
    .end local v7    # "_arg1":I
    .end local v22    # "_arg0":J
    :sswitch_839
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 771
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v26

    .line 772
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 774
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 778
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_857
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 781
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->refreshTimer(I)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 787
    .end local v6    # "_arg0":I
    :sswitch_86d
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 790
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->userActivity(I)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 796
    .end local v6    # "_arg0":I
    :sswitch_883
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8b6

    const/4 v6, 0x1

    .line 800
    .local v6, "_arg0":Z
    :goto_891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 802
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 804
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 806
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg4":Ljava/lang/String;
    move-object/from16 v15, p0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v20, v11

    .line 807
    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 798
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :cond_8b6
    const/4 v6, 0x0

    goto :goto_891

    .line 813
    :sswitch_8b8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 817
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8dd

    const/4 v7, 0x1

    .line 818
    .local v7, "_arg1":Z
    :goto_8ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v28

    .line 819
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 821
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 817
    .end local v7    # "_arg1":Z
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8dd
    const/4 v7, 0x0

    goto :goto_8ca

    .line 825
    .end local v6    # "_arg0":I
    :sswitch_8df
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 828
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v26

    .line 829
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    if-eqz v26, :cond_8fe

    const/4 v5, 0x1

    :goto_8f6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 830
    :cond_8fe
    const/4 v5, 0x0

    goto :goto_8f6

    .line 835
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_900
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 838
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v26

    .line 839
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    if-eqz v26, :cond_91f

    const/4 v5, 0x1

    :goto_917
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 840
    :cond_91f
    const/4 v5, 0x0

    goto :goto_917

    .line 845
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_921
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 849
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_93e

    const/4 v7, 0x1

    .line 850
    .restart local v7    # "_arg1":Z
    :goto_933
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFsMountState(IZ)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 849
    .end local v7    # "_arg1":Z
    :cond_93e
    const/4 v7, 0x0

    goto :goto_933

    .line 856
    .end local v6    # "_arg0":I
    :sswitch_940
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPasswordHint()Ljava/lang/String;

    move-result-object v26

    .line 858
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 864
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_958
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 867
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isKioskModeEnabled(I)Z

    move-result v26

    .line 868
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v26, :cond_977

    const/4 v5, 0x1

    :goto_96f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 869
    :cond_977
    const/4 v5, 0x0

    goto :goto_96f

    .line 874
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_979
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->isKioskContainerExistOnDevice()Z

    move-result v26

    .line 876
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v26, :cond_992

    const/4 v5, 0x1

    :goto_98a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 877
    :cond_992
    const/4 v5, 0x0

    goto :goto_98a

    .line 882
    .end local v26    # "_result":Z
    :sswitch_994
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 886
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9b1

    const/4 v7, 0x1

    .line 887
    .restart local v7    # "_arg1":Z
    :goto_9a6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setBackPressed(IZ)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 886
    .end local v7    # "_arg1":Z
    :cond_9b1
    const/4 v7, 0x0

    goto :goto_9a6

    .line 893
    .end local v6    # "_arg0":I
    :sswitch_9b3
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->onSentinelActivityResumed()Z

    move-result v26

    .line 895
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v26, :cond_9cc

    const/4 v5, 0x1

    :goto_9c4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 896
    :cond_9cc
    const/4 v5, 0x0

    goto :goto_9c4

    .line 901
    .end local v26    # "_result":Z
    :sswitch_9ce
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 905
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9f4

    const/4 v7, 0x1

    .line 906
    .restart local v7    # "_arg1":Z
    :goto_9e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->resetPersonaOnReboot(IZ)Z

    move-result v26

    .line 907
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v26, :cond_9f6

    const/4 v5, 0x1

    :goto_9ec
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 905
    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :cond_9f4
    const/4 v7, 0x0

    goto :goto_9e0

    .line 908
    .restart local v7    # "_arg1":Z
    .restart local v26    # "_result":Z
    :cond_9f6
    const/4 v5, 0x0

    goto :goto_9ec

    .line 913
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v26    # "_result":Z
    :sswitch_9f8
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 917
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 919
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 921
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 922
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/os/IPersonaManager$Stub;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v26

    .line 923
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    if-eqz v26, :cond_a23

    const/4 v5, 0x1

    :goto_a1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 924
    :cond_a23
    const/4 v5, 0x0

    goto :goto_a1b

    .line 929
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v26    # "_result":Z
    :sswitch_a25
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 932
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isResetPersonaOnRebootEnabled(I)Z

    move-result v26

    .line 933
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    if-eqz v26, :cond_a44

    const/4 v5, 0x1

    :goto_a3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 934
    :cond_a44
    const/4 v5, 0x0

    goto :goto_a3c

    .line 939
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_a46
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 943
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a63

    const/4 v7, 0x1

    .line 944
    .local v7, "_arg1":Z
    :goto_a58
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->notifyKeyguardShow(IZ)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 943
    .end local v7    # "_arg1":Z
    :cond_a63
    const/4 v7, 0x0

    goto :goto_a58

    .line 950
    .end local v6    # "_arg0":I
    :sswitch_a65
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 953
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKeyguardShowState(I)Z

    move-result v26

    .line 954
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    if-eqz v26, :cond_a84

    const/4 v5, 0x1

    :goto_a7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 955
    :cond_a84
    const/4 v5, 0x0

    goto :goto_a7c

    .line 960
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_a86
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->hideScrim()V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 967
    :sswitch_a96
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 971
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 972
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->convertContainerType(II)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 978
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_ab0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 981
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerAsSupplement(I)Z

    move-result v26

    .line 982
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    if-eqz v26, :cond_acf

    const/4 v5, 0x1

    :goto_ac7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 983
    :cond_acf
    const/4 v5, 0x0

    goto :goto_ac7

    .line 988
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_ad1
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 992
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_aee

    const/4 v7, 0x1

    .line 993
    .local v7, "_arg1":Z
    :goto_ae3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerAsSupplement(IZ)V

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 992
    .end local v7    # "_arg1":Z
    :cond_aee
    const/4 v7, 0x0

    goto :goto_ae3

    .line 999
    .end local v6    # "_arg0":I
    :sswitch_af0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1002
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getLastKeyguardUnlockTime(I)J

    move-result-wide v26

    .line 1003
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1005
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1009
    .end local v6    # "_arg0":I
    .end local v26    # "_result":J
    :sswitch_b0e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1013
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 1014
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/IPersonaManager$Stub;->setLastKeyguardUnlockTime(IJ)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1020
    .end local v6    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_b2a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1023
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsUnlockedAfterTurnOn(I)Z

    move-result v26

    .line 1024
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v26, :cond_b49

    const/4 v5, 0x1

    :goto_b41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1025
    :cond_b49
    const/4 v5, 0x0

    goto :goto_b41

    .line 1030
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_b4b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1034
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b68

    const/4 v7, 0x1

    .line 1035
    .restart local v7    # "_arg1":Z
    :goto_b5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsUnlockedAfterTurnOn(IZ)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1034
    .end local v7    # "_arg1":Z
    :cond_b68
    const/4 v7, 0x0

    goto :goto_b5d

    .line 1041
    .end local v6    # "_arg0":I
    :sswitch_b6a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1044
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerTimeout(I)Z

    move-result v26

    .line 1045
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    if-eqz v26, :cond_b89

    const/4 v5, 0x1

    :goto_b81
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1046
    :cond_b89
    const/4 v5, 0x0

    goto :goto_b81

    .line 1051
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_b8b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1055
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ba8

    const/4 v7, 0x1

    .line 1056
    .restart local v7    # "_arg1":Z
    :goto_b9d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerTimeout(IZ)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1055
    .end local v7    # "_arg1":Z
    :cond_ba8
    const/4 v7, 0x0

    goto :goto_b9d

    .line 1062
    .end local v6    # "_arg0":I
    :sswitch_baa
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1065
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerReset(I)Z

    move-result v26

    .line 1066
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    if-eqz v26, :cond_bc9

    const/4 v5, 0x1

    :goto_bc1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1067
    :cond_bc9
    const/4 v5, 0x0

    goto :goto_bc1

    .line 1072
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_bcb
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1076
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_be8

    const/4 v7, 0x1

    .line 1077
    .restart local v7    # "_arg1":Z
    :goto_bdd
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerReset(IZ)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1076
    .end local v7    # "_arg1":Z
    :cond_be8
    const/4 v7, 0x0

    goto :goto_bdd

    .line 1083
    .end local v6    # "_arg0":I
    :sswitch_bea
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1086
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsAdminLockedJustBefore(I)Z

    move-result v26

    .line 1087
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    if-eqz v26, :cond_c09

    const/4 v5, 0x1

    :goto_c01
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1088
    :cond_c09
    const/4 v5, 0x0

    goto :goto_c01

    .line 1093
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_c0b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1097
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c28

    const/4 v7, 0x1

    .line 1098
    .restart local v7    # "_arg1":Z
    :goto_c1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsAdminLockedJustBefore(IZ)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1097
    .end local v7    # "_arg1":Z
    :cond_c28
    const/4 v7, 0x0

    goto :goto_c1d

    .line 1104
    .end local v6    # "_arg0":I
    :sswitch_c2a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1107
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getIsFingerIdentifyFailed(I)Z

    move-result v26

    .line 1108
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    if-eqz v26, :cond_c49

    const/4 v5, 0x1

    :goto_c41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1109
    :cond_c49
    const/4 v5, 0x0

    goto :goto_c41

    .line 1114
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_c4b
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1118
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c68

    const/4 v7, 0x1

    .line 1119
    .restart local v7    # "_arg1":Z
    :goto_c5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setIsFingerIdentifyFailed(IZ)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1118
    .end local v7    # "_arg1":Z
    :cond_c68
    const/4 v7, 0x0

    goto :goto_c5d

    .line 1125
    .end local v6    # "_arg0":I
    :sswitch_c6a
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1128
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getFingerCount(I)I

    move-result v26

    .line 1129
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1135
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_c88
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1139
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1140
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setFingerCount(II)V

    .line 1141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1146
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_ca2
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1149
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->isFingerSupplementActivated(I)Z

    move-result v26

    .line 1150
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v26, :cond_cc1

    const/4 v5, 0x1

    :goto_cb9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1151
    :cond_cc1
    const/4 v5, 0x0

    goto :goto_cb9

    .line 1156
    .end local v6    # "_arg0":I
    .end local v26    # "_result":Z
    :sswitch_cc3
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1160
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1162
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ce4

    const/4 v8, 0x1

    .line 1163
    .local v8, "_arg2":Z
    :goto_cd9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setShownHelp(IIZ)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1162
    .end local v8    # "_arg2":Z
    :cond_ce4
    const/4 v8, 0x0

    goto :goto_cd9

    .line 1169
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_ce6
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1173
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1175
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d07

    const/4 v8, 0x1

    .line 1176
    .restart local v8    # "_arg2":Z
    :goto_cfc
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/IPersonaManager$Stub;->setAccessPermission(Ljava/lang/String;IZ)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1175
    .end local v8    # "_arg2":Z
    :cond_d07
    const/4 v8, 0x0

    goto :goto_cfc

    .line 1182
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_d09
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1186
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1187
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->canAccess(Ljava/lang/String;I)Z

    move-result v26

    .line 1188
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    if-eqz v26, :cond_d2c

    const/4 v5, 0x1

    :goto_d24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1189
    :cond_d2c
    const/4 v5, 0x0

    goto :goto_d24

    .line 1194
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_d2e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1197
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->getKnoxSecurityTimeout(I)I

    move-result v26

    .line 1198
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1204
    .end local v6    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_d4c
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1208
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1209
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxSecurityTimeout(II)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1215
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_d66
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getForegroundUser()I

    move-result v26

    .line 1217
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1223
    .end local v26    # "_result":I
    :sswitch_d7e
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1226
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->onKeyguardBackPressed(I)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1232
    .end local v6    # "_arg0":I
    :sswitch_d94
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1236
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1238
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1240
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1242
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v15, p0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v10

    move/from16 v20, v11

    .line 1243
    invoke-virtual/range {v15 .. v20}, Landroid/os/IPersonaManager$Stub;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v26

    .line 1244
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    if-eqz v26, :cond_dcd

    const/4 v5, 0x1

    :goto_dc5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1245
    :cond_dcd
    const/4 v5, 0x0

    goto :goto_dc5

    .line 1250
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v26    # "_result":Z
    :sswitch_dcf
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1253
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IPersonaManager$Stub;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v26

    .line 1254
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    if-eqz v26, :cond_dee

    const/4 v5, 0x1

    :goto_de6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1255
    :cond_dee
    const/4 v5, 0x0

    goto :goto_de6

    .line 1260
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_df0
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1264
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1265
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->verifyKnoxBackupPin(ILjava/lang/String;)Z

    move-result v26

    .line 1266
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    if-eqz v26, :cond_e13

    const/4 v5, 0x1

    :goto_e0b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1267
    :cond_e13
    const/4 v5, 0x0

    goto :goto_e0b

    .line 1272
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_e15
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1276
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1277
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->setKnoxBackupPin(ILjava/lang/String;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1283
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_e2f
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1288
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1289
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1295
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_e51
    const-string v5, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1299
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1300
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/os/IPersonaManager$Stub;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1301
    .local v26, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    if-eqz v26, :cond_e7c

    .line 1303
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1309
    :goto_e79
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1307
    :cond_e7c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e79

    .line 41
    nop

    :sswitch_data_e84
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_6b
        0x4 -> :sswitch_9e
        0x5 -> :sswitch_de
        0x6 -> :sswitch_11a
        0x7 -> :sswitch_14d
        0x8 -> :sswitch_172
        0x9 -> :sswitch_1ba
        0xa -> :sswitch_1ed
        0xb -> :sswitch_20e
        0xc -> :sswitch_22c
        0xd -> :sswitch_24f
        0xe -> :sswitch_27d
        0xf -> :sswitch_29e
        0x10 -> :sswitch_2c5
        0x11 -> :sswitch_2ec
        0x12 -> :sswitch_304
        0x13 -> :sswitch_32c
        0x14 -> :sswitch_35a
        0x15 -> :sswitch_378
        0x16 -> :sswitch_393
        0x17 -> :sswitch_3ae
        0x18 -> :sswitch_3c8
        0x19 -> :sswitch_3e6
        0x1a -> :sswitch_400
        0x1b -> :sswitch_41e
        0x1c -> :sswitch_443
        0x1d -> :sswitch_465
        0x1e -> :sswitch_4a1
        0x1f -> :sswitch_4bf
        0x20 -> :sswitch_4e4
        0x21 -> :sswitch_502
        0x22 -> :sswitch_520
        0x23 -> :sswitch_53e
        0x24 -> :sswitch_566
        0x25 -> :sswitch_57c
        0x26 -> :sswitch_59a
        0x27 -> :sswitch_5b4
        0x28 -> :sswitch_5d7
        0x29 -> :sswitch_5ed
        0x2a -> :sswitch_608
        0x2b -> :sswitch_627
        0x2c -> :sswitch_648
        0x2d -> :sswitch_669
        0x2e -> :sswitch_68e
        0x2f -> :sswitch_6af
        0x30 -> :sswitch_6c7
        0x31 -> :sswitch_6e8
        0x32 -> :sswitch_706
        0x33 -> :sswitch_724
        0x34 -> :sswitch_746
        0x35 -> :sswitch_760
        0x36 -> :sswitch_785
        0x37 -> :sswitch_7a6
        0x38 -> :sswitch_7c0
        0x39 -> :sswitch_7da
        0x3a -> :sswitch_7ff
        0x3b -> :sswitch_81d
        0x3c -> :sswitch_839
        0x3d -> :sswitch_857
        0x3e -> :sswitch_86d
        0x3f -> :sswitch_883
        0x40 -> :sswitch_8b8
        0x41 -> :sswitch_8df
        0x42 -> :sswitch_900
        0x43 -> :sswitch_921
        0x44 -> :sswitch_940
        0x45 -> :sswitch_958
        0x46 -> :sswitch_979
        0x47 -> :sswitch_994
        0x48 -> :sswitch_9b3
        0x49 -> :sswitch_9ce
        0x4a -> :sswitch_9f8
        0x4b -> :sswitch_a25
        0x4c -> :sswitch_a46
        0x4d -> :sswitch_a65
        0x4e -> :sswitch_a86
        0x4f -> :sswitch_a96
        0x50 -> :sswitch_ab0
        0x51 -> :sswitch_ad1
        0x52 -> :sswitch_af0
        0x53 -> :sswitch_b0e
        0x54 -> :sswitch_b2a
        0x55 -> :sswitch_b4b
        0x56 -> :sswitch_b6a
        0x57 -> :sswitch_b8b
        0x58 -> :sswitch_baa
        0x59 -> :sswitch_bcb
        0x5a -> :sswitch_bea
        0x5b -> :sswitch_c0b
        0x5c -> :sswitch_c2a
        0x5d -> :sswitch_c4b
        0x5e -> :sswitch_c6a
        0x5f -> :sswitch_c88
        0x60 -> :sswitch_ca2
        0x61 -> :sswitch_cc3
        0x62 -> :sswitch_ce6
        0x63 -> :sswitch_d09
        0x64 -> :sswitch_d2e
        0x65 -> :sswitch_d4c
        0x66 -> :sswitch_d66
        0x67 -> :sswitch_d7e
        0x68 -> :sswitch_d94
        0x69 -> :sswitch_dcf
        0x6a -> :sswitch_df0
        0x6b -> :sswitch_e15
        0x6c -> :sswitch_e2f
        0x6d -> :sswitch_e51
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
