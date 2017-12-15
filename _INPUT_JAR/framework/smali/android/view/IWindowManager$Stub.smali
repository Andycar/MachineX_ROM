.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x14

.field static final TRANSACTION_addWindowToken:I = 0x12

.field static final TRANSACTION_changeDisplayScale:I = 0x59

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4a

.field static final TRANSACTION_closeSystemDialogs:I = 0x32

.field static final TRANSACTION_cocktailBarVisibilityChanged:I = 0x5d

.field static final TRANSACTION_disableKeyguard:I = 0x2a

.field static final TRANSACTION_dismissKeyguard:I = 0x30

.field static final TRANSACTION_dispatchAirButtonHitTest:I = 0x58

.field static final TRANSACTION_dispatchSmartClipDataExtractionEvent:I = 0x57

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x49

.field static final TRANSACTION_executeAppTransition:I = 0x1f

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2c

.field static final TRANSACTION_freezeRotation:I = 0x41

.field static final TRANSACTION_getAnimationScale:I = 0x33

.field static final TRANSACTION_getAnimationScales:I = 0x34

.field static final TRANSACTION_getAppOrientation:I = 0x17

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCocktailBarFrame:I = 0x5f

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x37

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1a

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x40

.field static final TRANSACTION_getRotation:I = 0x3d

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4b

.field static final TRANSACTION_handleKnoxKeyguard:I = 0x5c

.field static final TRANSACTION_hasNavigationBar:I = 0x46

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2f

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x2d

.field static final TRANSACTION_isKeyguardSecure:I = 0x2e

.field static final TRANSACTION_isMetaKeyEventRequested:I = 0x55

.field static final TRANSACTION_isNavigationBarVisible:I = 0x51

.field static final TRANSACTION_isRotationFrozen:I = 0x43

.field static final TRANSACTION_isSafeModeEnabled:I = 0x48

.field static final TRANSACTION_isStatusBarVisible:I = 0x50

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x53

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x31

.field static final TRANSACTION_lockNow:I = 0x47

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1b

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionTranslate:I = 0x5e

.field static final TRANSACTION_pauseKeyDispatching:I = 0xf

.field static final TRANSACTION_prepareAppTransition:I = 0x19

.field static final TRANSACTION_reenableKeyguard:I = 0x2b

.field static final TRANSACTION_registerEasyOneHandWatcher:I = 0x5a

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x4d

.field static final TRANSACTION_removeAppToken:I = 0x25

.field static final TRANSACTION_removeRotationWatcher:I = 0x3f

.field static final TRANSACTION_removeWindowToken:I = 0x13

.field static final TRANSACTION_requestMetaKeyEvent:I = 0x54

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x52

.field static final TRANSACTION_resumeKeyDispatching:I = 0x10

.field static final TRANSACTION_screenshotApplications:I = 0x44

.field static final TRANSACTION_setAdaptiveEvent:I = 0x4c

.field static final TRANSACTION_setAnimationScale:I = 0x35

.field static final TRANSACTION_setAnimationScales:I = 0x36

.field static final TRANSACTION_setAppGroupId:I = 0x15

.field static final TRANSACTION_setAppOrientation:I = 0x16

.field static final TRANSACTION_setAppStartingWindow:I = 0x20

.field static final TRANSACTION_setAppVisibility:I = 0x22

.field static final TRANSACTION_setAppWillBeHidden:I = 0x21

.field static final TRANSACTION_setBendedPendingIntent:I = 0x4f

.field static final TRANSACTION_setCurrentInputMethodClient:I = 0x56

.field static final TRANSACTION_setEventDispatching:I = 0x11

.field static final TRANSACTION_setFocusedApp:I = 0x18

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x38

.field static final TRANSACTION_setNewConfiguration:I = 0x27

.field static final TRANSACTION_setOverscan:I = 0xe

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x3b

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x3a

.field static final TRANSACTION_showStrictModeViolation:I = 0x39

.field static final TRANSACTION_startAppFreezingScreen:I = 0x23

.field static final TRANSACTION_startFreezingScreen:I = 0x28

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x45

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x24

.field static final TRANSACTION_stopFreezingScreen:I = 0x29

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x42

.field static final TRANSACTION_unregisterEasyOneHandWatcher:I = 0x5b

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x4e

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x26

.field static final TRANSACTION_updateRotation:I = 0x3c

.field static final TRANSACTION_watchRotation:I = 0x3e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
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
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 19
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
    .line 43
    sparse-switch p1, :sswitch_data_ba6

    .line 1185
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 47
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 56
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_2d

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x1

    goto :goto_7

    .line 57
    :cond_2d
    const/4 v1, 0x0

    goto :goto_26

    .line 62
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 64
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v13, :cond_47

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    goto :goto_7

    .line 65
    :cond_47
    const/4 v1, 0x0

    goto :goto_40

    .line 70
    .end local v13    # "_result":Z
    :sswitch_49
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 72
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v13, :cond_61

    const/4 v1, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v1, 0x1

    goto :goto_7

    .line 73
    :cond_61
    const/4 v1, 0x0

    goto :goto_5a

    .line 78
    .end local v13    # "_result":Z
    :sswitch_63
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    .line 84
    .local v3, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v4

    .line 85
    .local v4, "_arg2":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 86
    .local v13, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v13, :cond_97

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 87
    :cond_97
    const/4 v1, 0x0

    goto :goto_8f

    .line 92
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v4    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_result":Landroid/view/IWindowSession;
    :sswitch_99
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 95
    .local v2, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 96
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v13, :cond_ba

    const/4 v1, 0x1

    :goto_b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 97
    :cond_ba
    const/4 v1, 0x0

    goto :goto_b2

    .line 102
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v13    # "_result":Z
    :sswitch_bc
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_e3

    .line 110
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_e0
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 114
    :cond_e3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e0

    .line 120
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_ea
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v3    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_111

    .line 128
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_10e
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 132
    :cond_111
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10e

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_118
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_134
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 160
    .end local v2    # "_arg0":I
    :sswitch_148
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v13

    .line 164
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 170
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_162
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v13

    .line 174
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 180
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_17c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_194
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 200
    .end local v2    # "_arg0":I
    :sswitch_1a8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v1, p0

    .line 211
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 217
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    :sswitch_1cd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 226
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1e1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 235
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20c

    const/4 v2, 0x1

    .line 238
    .local v2, "_arg0":Z
    :goto_203
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 237
    .end local v2    # "_arg0":Z
    :cond_20c
    const/4 v2, 0x0

    goto :goto_203

    .line 244
    :sswitch_20e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 248
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 255
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_226
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 264
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_23a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 270
    .local v3, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 276
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_287

    const/4 v7, 0x1

    .line 278
    .local v7, "_arg5":Z
    :goto_260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_289

    const/4 v8, 0x1

    .line 280
    .local v8, "_arg6":Z
    :goto_267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 282
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 284
    .local v10, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28b

    const/4 v11, 0x1

    .line 286
    .local v11, "_arg9":Z
    :goto_276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28d

    const/4 v12, 0x1

    .local v12, "_arg10":Z
    :goto_27d
    move-object v1, p0

    .line 287
    invoke-virtual/range {v1 .. v12}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 276
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Z
    .end local v12    # "_arg10":Z
    :cond_287
    const/4 v7, 0x0

    goto :goto_260

    .line 278
    .restart local v7    # "_arg5":Z
    :cond_289
    const/4 v8, 0x0

    goto :goto_267

    .line 284
    .restart local v8    # "_arg6":Z
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":I
    :cond_28b
    const/4 v11, 0x0

    goto :goto_276

    .line 286
    .restart local v11    # "_arg9":Z
    :cond_28d
    const/4 v12, 0x0

    goto :goto_27d

    .line 293
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IApplicationToken;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Z
    :sswitch_28f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 297
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 298
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 304
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_2a7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 308
    .local v2, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 315
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v3    # "_arg1":I
    :sswitch_2c3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 319
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 325
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v13    # "_result":I
    :sswitch_2e1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 329
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2fc

    const/4 v3, 0x1

    .line 330
    .local v3, "_arg1":Z
    :goto_2f3
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 329
    .end local v3    # "_arg1":Z
    :cond_2fc
    const/4 v3, 0x0

    goto :goto_2f3

    .line 336
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_2fe
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_319

    const/4 v3, 0x1

    .line 341
    .restart local v3    # "_arg1":Z
    :goto_310
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 340
    .end local v3    # "_arg1":Z
    :cond_319
    const/4 v3, 0x0

    goto :goto_310

    .line 347
    .end local v2    # "_arg0":I
    :sswitch_31b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 349
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 355
    .end local v13    # "_result":I
    :sswitch_331
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 361
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 363
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 364
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 370
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_355
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 378
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 379
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_375
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ad

    .line 388
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 394
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    :goto_38c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 398
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 400
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3af

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_3a3
    move-object v1, p0

    .line 401
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 391
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v6    # "_arg4":Z
    :cond_3ad
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_38c

    .line 400
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_3af
    const/4 v6, 0x0

    goto :goto_3a3

    .line 407
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_3b1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f1

    .line 410
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 416
    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    :goto_3c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 420
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 422
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 424
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v7

    .line 426
    .local v7, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f3

    const/4 v8, 0x1

    .restart local v8    # "_arg6":Z
    :goto_3e7
    move-object v1, p0

    .line 427
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 413
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/IRemoteCallback;
    .end local v8    # "_arg6":Z
    :cond_3f1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_3c8

    .line 426
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_3f3
    const/4 v8, 0x0

    goto :goto_3e7

    .line 433
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_3f5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 440
    :sswitch_405
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 444
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 448
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_45d

    .line 449
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 455
    .local v5, "_arg3":Landroid/content/res/CompatibilityInfo;
    :goto_428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_45f

    .line 456
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 462
    .local v6, "_arg4":Ljava/lang/CharSequence;
    :goto_438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 464
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 466
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 468
    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 470
    .restart local v10    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 472
    .local v11, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_461

    const/4 v12, 0x1

    .restart local v12    # "_arg10":Z
    :goto_453
    move-object v1, p0

    .line 473
    invoke-virtual/range {v1 .. v12}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 452
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    .end local v12    # "_arg10":Z
    :cond_45d
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_428

    .line 459
    :cond_45f
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Ljava/lang/CharSequence;
    goto :goto_438

    .line 472
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":I
    .restart local v11    # "_arg9":Landroid/os/IBinder;
    :cond_461
    const/4 v12, 0x0

    goto :goto_453

    .line 479
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    :sswitch_463
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 482
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 488
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_477
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 492
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_492

    const/4 v3, 0x1

    .line 493
    .local v3, "_arg1":Z
    :goto_489
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 492
    .end local v3    # "_arg1":Z
    :cond_492
    const/4 v3, 0x0

    goto :goto_489

    .line 499
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_494
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 503
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 510
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_4ac
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 514
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4c7

    const/4 v3, 0x1

    .line 515
    .local v3, "_arg1":Z
    :goto_4be
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 514
    .end local v3    # "_arg1":Z
    :cond_4c7
    const/4 v3, 0x0

    goto :goto_4be

    .line 521
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_4c9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 524
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 530
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_4dd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_510

    .line 533
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 539
    .local v2, "_arg0":Landroid/content/res/Configuration;
    :goto_4f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 540
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 541
    .local v13, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v13, :cond_512

    .line 543
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    :goto_50d
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 536
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :cond_510
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_4f4

    .line 547
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    .restart local v13    # "_result":Landroid/content/res/Configuration;
    :cond_512
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50d

    .line 553
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :sswitch_519
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_539

    .line 556
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 561
    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_530
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 559
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :cond_539
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_530

    .line 567
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_53b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 572
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 578
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_553
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 585
    :sswitch_563
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 589
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 596
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_57b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 605
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_58f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 608
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 614
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_5a7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 616
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v13, :cond_5c0

    const/4 v1, 0x1

    :goto_5b8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 617
    :cond_5c0
    const/4 v1, 0x0

    goto :goto_5b8

    .line 622
    .end local v13    # "_result":Z
    :sswitch_5c2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 624
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v13, :cond_5db

    const/4 v1, 0x1

    :goto_5d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 625
    :cond_5db
    const/4 v1, 0x0

    goto :goto_5d3

    .line 630
    .end local v13    # "_result":Z
    :sswitch_5dd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 632
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v13, :cond_5f6

    const/4 v1, 0x1

    :goto_5ee
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 633
    :cond_5f6
    const/4 v1, 0x0

    goto :goto_5ee

    .line 638
    .end local v13    # "_result":Z
    :sswitch_5f8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 645
    :sswitch_608
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_626

    const/4 v2, 0x1

    .line 649
    .local v2, "_arg0":Z
    :goto_616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_628

    const/4 v3, 0x1

    .line 650
    .local v3, "_arg1":Z
    :goto_61d
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(ZZ)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 647
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_626
    const/4 v2, 0x0

    goto :goto_616

    .line 649
    .restart local v2    # "_arg0":Z
    :cond_628
    const/4 v3, 0x0

    goto :goto_61d

    .line 656
    .end local v2    # "_arg0":Z
    :sswitch_62a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 665
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_63e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 669
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 671
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 675
    .end local v2    # "_arg0":I
    .end local v13    # "_result":F
    :sswitch_658
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 677
    .local v13, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 679
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 683
    .end local v13    # "_result":[F
    :sswitch_66e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 688
    .local v3, "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 694
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :sswitch_686
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 697
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 703
    .end local v2    # "_arg0":[F
    :sswitch_69a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v13

    .line 705
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 707
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 711
    .end local v13    # "_result":F
    :sswitch_6b0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6c7

    const/4 v2, 0x1

    .line 714
    .local v2, "_arg0":Z
    :goto_6be
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 713
    .end local v2    # "_arg0":Z
    :cond_6c7
    const/4 v2, 0x0

    goto :goto_6be

    .line 720
    :sswitch_6c9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6e0

    const/4 v2, 0x1

    .line 723
    .restart local v2    # "_arg0":Z
    :goto_6d7
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 722
    .end local v2    # "_arg0":Z
    :cond_6e0
    const/4 v2, 0x0

    goto :goto_6d7

    .line 729
    :sswitch_6e2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 738
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_6f6
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 742
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_711

    const/4 v3, 0x1

    .line 743
    .local v3, "_arg1":Z
    :goto_708
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 742
    .end local v3    # "_arg1":Z
    :cond_711
    const/4 v3, 0x0

    goto :goto_708

    .line 749
    .end local v2    # "_arg0":I
    :sswitch_713
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_731

    const/4 v2, 0x1

    .line 753
    .local v2, "_arg0":Z
    :goto_721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_733

    const/4 v3, 0x1

    .line 754
    .restart local v3    # "_arg1":Z
    :goto_728
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 751
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_731
    const/4 v2, 0x0

    goto :goto_721

    .line 753
    .restart local v2    # "_arg0":Z
    :cond_733
    const/4 v3, 0x0

    goto :goto_728

    .line 760
    .end local v2    # "_arg0":Z
    :sswitch_735
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 762
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 768
    .end local v13    # "_result":I
    :sswitch_74b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 771
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 772
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 778
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v13    # "_result":I
    :sswitch_769
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 781
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 787
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_781
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 789
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 795
    .end local v13    # "_result":I
    :sswitch_797
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 804
    .end local v2    # "_arg0":I
    :sswitch_7ab
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 811
    :sswitch_7bb
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v13

    .line 813
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    if-eqz v13, :cond_7d4

    const/4 v1, 0x1

    :goto_7cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 814
    :cond_7d4
    const/4 v1, 0x0

    goto :goto_7cc

    .line 819
    .end local v13    # "_result":Z
    :sswitch_7d6
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 823
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 827
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 829
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_80d

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_7f4
    move-object v1, p0

    .line 830
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 831
    .local v13, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    if-eqz v13, :cond_80f

    .line 833
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 839
    :goto_80a
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 829
    .end local v6    # "_arg4":Z
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :cond_80d
    const/4 v6, 0x0

    goto :goto_7f4

    .line 837
    .restart local v6    # "_arg4":Z
    .restart local v13    # "_result":Landroid/graphics/Bitmap;
    :cond_80f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_80a

    .line 843
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :sswitch_816
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 846
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 847
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 851
    .end local v2    # "_arg0":I
    :sswitch_827
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 853
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    if-eqz v13, :cond_840

    const/4 v1, 0x1

    :goto_838
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 854
    :cond_840
    const/4 v1, 0x0

    goto :goto_838

    .line 859
    .end local v13    # "_result":Z
    :sswitch_842
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_862

    .line 862
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 867
    .local v2, "_arg0":Landroid/os/Bundle;
    :goto_859
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 865
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_862
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_859

    .line 873
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_864
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v13

    .line 875
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    if-eqz v13, :cond_87d

    const/4 v1, 0x1

    :goto_875
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 876
    :cond_87d
    const/4 v1, 0x0

    goto :goto_875

    .line 881
    .end local v13    # "_result":Z
    :sswitch_87f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 888
    :sswitch_88f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 891
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v13

    .line 892
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v13, :cond_8ac

    const/4 v1, 0x1

    :goto_8a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 893
    :cond_8ac
    const/4 v1, 0x0

    goto :goto_8a4

    .line 898
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Z
    :sswitch_8ae
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 901
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v13

    .line 902
    .local v13, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    if-eqz v13, :cond_8d1

    .line 904
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 910
    :goto_8ce
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 908
    :cond_8d1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8ce

    .line 914
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_8d8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90c

    .line 919
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 925
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    :goto_8f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90e

    .line 926
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 931
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_903
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 922
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_90c
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_8f3

    .line 929
    :cond_90e
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_903

    .line 937
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_910
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 946
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_924
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 950
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_958

    .line 951
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 957
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_93f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95a

    .line 958
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 963
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_94f
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 954
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_958
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_93f

    .line 961
    :cond_95a
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_94f

    .line 969
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_95c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_98c

    .line 972
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 978
    .local v2, "_arg0":Landroid/app/PendingIntent;
    :goto_973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_98e

    .line 979
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 984
    .local v3, "_arg1":Landroid/content/Intent;
    :goto_983
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 975
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :cond_98c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_973

    .line 982
    :cond_98e
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/Intent;
    goto :goto_983

    .line 990
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :sswitch_990
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isStatusBarVisible()Z

    move-result v13

    .line 992
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v13, :cond_9a9

    const/4 v1, 0x1

    :goto_9a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 993
    :cond_9a9
    const/4 v1, 0x0

    goto :goto_9a1

    .line 998
    .end local v13    # "_result":Z
    :sswitch_9ab
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isNavigationBarVisible()Z

    move-result v13

    .line 1000
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    if-eqz v13, :cond_9c4

    const/4 v1, 0x1

    :goto_9bc
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1001
    :cond_9c4
    const/4 v1, 0x0

    goto :goto_9bc

    .line 1006
    .end local v13    # "_result":Z
    :sswitch_9c6
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1010
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9fa

    .line 1011
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1017
    .local v3, "_arg1":Landroid/content/ComponentName;
    :goto_9e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9fc

    const/4 v4, 0x1

    .line 1018
    .local v4, "_arg2":Z
    :goto_9e8
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v13

    .line 1019
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    if-eqz v13, :cond_9fe

    const/4 v1, 0x1

    :goto_9f2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1014
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :cond_9fa
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_9e1

    .line 1017
    :cond_9fc
    const/4 v4, 0x0

    goto :goto_9e8

    .line 1020
    .restart local v4    # "_arg2":Z
    .restart local v13    # "_result":Z
    :cond_9fe
    const/4 v1, 0x0

    goto :goto_9f2

    .line 1025
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :sswitch_a00
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1029
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a2d

    .line 1030
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1035
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    :goto_a1b
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v13

    .line 1036
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    if-eqz v13, :cond_a2f

    const/4 v1, 0x1

    :goto_a25
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1033
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :cond_a2d
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a1b

    .line 1037
    .restart local v13    # "_result":Z
    :cond_a2f
    const/4 v1, 0x0

    goto :goto_a25

    .line 1042
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :sswitch_a31
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a58

    .line 1045
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1051
    .local v2, "_arg0":Landroid/content/ComponentName;
    :goto_a48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a5a

    const/4 v3, 0x1

    .line 1052
    .local v3, "_arg1":Z
    :goto_a4f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1048
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :cond_a58
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a48

    .line 1051
    :cond_a5a
    const/4 v3, 0x0

    goto :goto_a4f

    .line 1058
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a5c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a85

    .line 1061
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1066
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    :goto_a73
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v13

    .line 1067
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    if-eqz v13, :cond_a87

    const/4 v1, 0x1

    :goto_a7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1064
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :cond_a85
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a73

    .line 1068
    .restart local v13    # "_result":Z
    :cond_a87
    const/4 v1, 0x0

    goto :goto_a7d

    .line 1073
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :sswitch_a89
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1076
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1082
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_a9d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ac1

    .line 1085
    sget-object v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 1091
    .local v2, "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :goto_ab4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1092
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1088
    .end local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :cond_ac1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    goto :goto_ab4

    .line 1098
    .end local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :sswitch_ac3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1102
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1104
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1105
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->dispatchAirButtonHitTest(III)V

    .line 1106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1111
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_adf
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1115
    .local v2, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1117
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 1119
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b0b

    const/4 v5, 0x1

    .line 1121
    .local v5, "_arg3":Z
    :goto_af9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v6

    .local v6, "_arg4":Landroid/view/IInputFilter;
    move-object v1, p0

    .line 1122
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1119
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":Landroid/view/IInputFilter;
    :cond_b0b
    const/4 v5, 0x0

    goto :goto_af9

    .line 1128
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    :sswitch_b0d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1131
    .local v2, "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1137
    .end local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    :sswitch_b25
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1140
    .restart local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1146
    .end local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    :sswitch_b3d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1150
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b58

    const/4 v3, 0x1

    .line 1151
    .local v3, "_arg1":Z
    :goto_b4f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->handleKnoxKeyguard(IZ)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1150
    .end local v3    # "_arg1":Z
    :cond_b58
    const/4 v3, 0x0

    goto :goto_b4f

    .line 1157
    .end local v2    # "_arg0":I
    :sswitch_b5a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b6e

    const/4 v2, 0x1

    .line 1160
    .local v2, "_arg0":Z
    :goto_b68
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->cocktailBarVisibilityChanged(Z)V

    .line 1161
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1159
    .end local v2    # "_arg0":Z
    :cond_b6e
    const/4 v2, 0x0

    goto :goto_b68

    .line 1165
    :sswitch_b70
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionTranslate()V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1172
    :sswitch_b80
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v13

    .line 1174
    .local v13, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    if-eqz v13, :cond_b9f

    .line 1176
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1182
    :goto_b9c
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1180
    :cond_b9f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b9c

    .line 43
    :sswitch_data_ba6
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_99
        0x6 -> :sswitch_bc
        0x7 -> :sswitch_ea
        0x8 -> :sswitch_118
        0x9 -> :sswitch_134
        0xa -> :sswitch_148
        0xb -> :sswitch_162
        0xc -> :sswitch_17c
        0xd -> :sswitch_194
        0xe -> :sswitch_1a8
        0xf -> :sswitch_1cd
        0x10 -> :sswitch_1e1
        0x11 -> :sswitch_1f5
        0x12 -> :sswitch_20e
        0x13 -> :sswitch_226
        0x14 -> :sswitch_23a
        0x15 -> :sswitch_28f
        0x16 -> :sswitch_2a7
        0x17 -> :sswitch_2c3
        0x18 -> :sswitch_2e1
        0x19 -> :sswitch_2fe
        0x1a -> :sswitch_31b
        0x1b -> :sswitch_331
        0x1c -> :sswitch_355
        0x1d -> :sswitch_375
        0x1e -> :sswitch_3b1
        0x1f -> :sswitch_3f5
        0x20 -> :sswitch_405
        0x21 -> :sswitch_463
        0x22 -> :sswitch_477
        0x23 -> :sswitch_494
        0x24 -> :sswitch_4ac
        0x25 -> :sswitch_4c9
        0x26 -> :sswitch_4dd
        0x27 -> :sswitch_519
        0x28 -> :sswitch_53b
        0x29 -> :sswitch_553
        0x2a -> :sswitch_563
        0x2b -> :sswitch_57b
        0x2c -> :sswitch_58f
        0x2d -> :sswitch_5a7
        0x2e -> :sswitch_5c2
        0x2f -> :sswitch_5dd
        0x30 -> :sswitch_5f8
        0x31 -> :sswitch_608
        0x32 -> :sswitch_62a
        0x33 -> :sswitch_63e
        0x34 -> :sswitch_658
        0x35 -> :sswitch_66e
        0x36 -> :sswitch_686
        0x37 -> :sswitch_69a
        0x38 -> :sswitch_6b0
        0x39 -> :sswitch_6c9
        0x3a -> :sswitch_6e2
        0x3b -> :sswitch_6f6
        0x3c -> :sswitch_713
        0x3d -> :sswitch_735
        0x3e -> :sswitch_74b
        0x3f -> :sswitch_769
        0x40 -> :sswitch_781
        0x41 -> :sswitch_797
        0x42 -> :sswitch_7ab
        0x43 -> :sswitch_7bb
        0x44 -> :sswitch_7d6
        0x45 -> :sswitch_816
        0x46 -> :sswitch_827
        0x47 -> :sswitch_842
        0x48 -> :sswitch_864
        0x49 -> :sswitch_87f
        0x4a -> :sswitch_88f
        0x4b -> :sswitch_8ae
        0x4c -> :sswitch_8d8
        0x4d -> :sswitch_910
        0x4e -> :sswitch_924
        0x4f -> :sswitch_95c
        0x50 -> :sswitch_990
        0x51 -> :sswitch_9ab
        0x52 -> :sswitch_9c6
        0x53 -> :sswitch_a00
        0x54 -> :sswitch_a31
        0x55 -> :sswitch_a5c
        0x56 -> :sswitch_a89
        0x57 -> :sswitch_a9d
        0x58 -> :sswitch_ac3
        0x59 -> :sswitch_adf
        0x5a -> :sswitch_b0d
        0x5b -> :sswitch_b25
        0x5c -> :sswitch_b3d
        0x5d -> :sswitch_b5a
        0x5e -> :sswitch_b70
        0x5f -> :sswitch_b80
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
