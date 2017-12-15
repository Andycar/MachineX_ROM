.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_assistantMenuRegister:I = 0x14

.field static final TRANSACTION_assistantMenuUpdate:I = 0x13

.field static final TRANSACTION_disableMagnifier:I = 0x19

.field static final TRANSACTION_enableMagnifier:I = 0x18

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getScreenCurtainState:I = 0x12

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_isScreenCurtainChecked:I = 0x11

.field static final TRANSACTION_openGlobalActions:I = 0x17

.field static final TRANSACTION_reboot:I = 0x16

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_setMagnificationSpec:I = 0x1a

.field static final TRANSACTION_setScreenCurtain:I = 0x10

.field static final TRANSACTION_setTalkbackMode:I = 0xf

.field static final TRANSACTION_setTwoFingerGestureRecognitionEnabled:I = 0x1b

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0xe

.field static final TRANSACTION_setmDNIeColorBlind:I = 0xc

.field static final TRANSACTION_setmDNIeNegative:I = 0xd

.field static final TRANSACTION_shutdown:I = 0x15

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_2a2

    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 48
    :sswitch_a
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v3

    .line 59
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_2c
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_51

    .line 68
    sget-object v7, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 74
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v3

    .line 76
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_4d

    move v5, v6

    :cond_4d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :cond_51
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_3f

    .line 82
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_53
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_67
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v4

    .line 98
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_7f
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 113
    .end local v0    # "_arg0":I
    :sswitch_90
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 119
    .local v1, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v3

    .line 121
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_b5
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 136
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :sswitch_ca
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 142
    .local v1, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f1

    .line 143
    sget-object v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 148
    .local v2, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_e9
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 146
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_f1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_e9

    .line 154
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_f3
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 163
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_108
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12a

    .line 166
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 172
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12c

    move v1, v6

    .line 173
    .local v1, "_arg1":Z
    :goto_122
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 169
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :cond_12a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11b

    :cond_12c
    move v1, v5

    .line 172
    goto :goto_122

    .line 179
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12e
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(I)Landroid/os/IBinder;

    move-result-object v3

    .line 183
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :sswitch_143
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_162

    move v0, v6

    .line 193
    .local v0, "_arg0":Z
    :goto_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 194
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeColorBlind(Z[I)Z

    move-result v3

    .line 195
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v3, :cond_15d

    move v5, v6

    :cond_15d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[I
    .end local v3    # "_result":Z
    :cond_162
    move v0, v5

    .line 191
    goto :goto_14f

    .line 201
    :sswitch_164
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17f

    move v0, v6

    .line 204
    .restart local v0    # "_arg0":Z
    :goto_170
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeNegative(Z)Z

    move-result v3

    .line 205
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v3, :cond_17a

    move v5, v6

    :cond_17a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_17f
    move v0, v5

    .line 203
    goto :goto_170

    .line 211
    :sswitch_181
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a0

    move v1, v6

    .line 216
    .local v1, "_arg1":Z
    :goto_191
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setmDNIeAccessibilityMode(IZ)Z

    move-result v3

    .line 217
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v3, :cond_19b

    move v5, v6

    :cond_19b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1a0
    move v1, v5

    .line 215
    goto :goto_191

    .line 223
    .end local v0    # "_arg0":I
    :sswitch_1a2
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 230
    :sswitch_1af
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenCurtain()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 237
    :sswitch_1bc
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isScreenCurtainChecked()Z

    move-result v3

    .line 239
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v3, :cond_1cb

    move v5, v6

    :cond_1cb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 245
    .end local v3    # "_result":Z
    :sswitch_1d0
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getScreenCurtainState()I

    move-result v3

    .line 247
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 253
    .end local v3    # "_result":I
    :sswitch_1e1
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1fc

    .line 256
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 261
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1f4
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 259
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_1fc
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1f4

    .line 267
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_1fe
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 270
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->assistantMenuRegister(Landroid/os/IBinder;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 276
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_20f
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_223

    move v0, v6

    .line 279
    .local v0, "_arg0":Z
    :goto_21b
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->shutdown(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_223
    move v0, v5

    .line 278
    goto :goto_21b

    .line 285
    :sswitch_225
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_239

    move v0, v6

    .line 288
    .restart local v0    # "_arg0":Z
    :goto_231
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->reboot(Z)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_239
    move v0, v5

    .line 287
    goto :goto_231

    .line 294
    :sswitch_23b
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->openGlobalActions()V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 301
    :sswitch_248
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 308
    .local v2, "_arg2":F
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableMagnifier(IIF)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 314
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :sswitch_261
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disableMagnifier()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 321
    :sswitch_26e
    const-string v5, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_289

    .line 324
    sget-object v5, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 329
    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    :goto_281
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 327
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_289
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_281

    .line 335
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_28b
    const-string v7, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_29f

    move v0, v6

    .line 338
    .local v0, "_arg0":Z
    :goto_297
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTwoFingerGestureRecognitionEnabled(Z)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_29f
    move v0, v5

    .line 337
    goto :goto_297

    .line 44
    nop

    :sswitch_data_2a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_53
        0x4 -> :sswitch_67
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_90
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_f3
        0xa -> :sswitch_108
        0xb -> :sswitch_12e
        0xc -> :sswitch_143
        0xd -> :sswitch_164
        0xe -> :sswitch_181
        0xf -> :sswitch_1a2
        0x10 -> :sswitch_1af
        0x11 -> :sswitch_1bc
        0x12 -> :sswitch_1d0
        0x13 -> :sswitch_1e1
        0x14 -> :sswitch_1fe
        0x15 -> :sswitch_20f
        0x16 -> :sswitch_225
        0x17 -> :sswitch_23b
        0x18 -> :sswitch_248
        0x19 -> :sswitch_261
        0x1a -> :sswitch_26e
        0x1b -> :sswitch_28b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
