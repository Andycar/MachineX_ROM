.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_dismiss:I = 0x9

.field static final TRANSACTION_dispatch:I = 0x13

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_isDismissable:I = 0x5

.field static final TRANSACTION_isInputRestricted:I = 0x4

.field static final TRANSACTION_isSecure:I = 0x2

.field static final TRANSACTION_isShowing:I = 0x1

.field static final TRANSACTION_isShowingAndNotOccluded:I = 0x3

.field static final TRANSACTION_keyguardDone:I = 0x7

.field static final TRANSACTION_launchCamera:I = 0x14

.field static final TRANSACTION_onActivityDrawn:I = 0x1b

.field static final TRANSACTION_onBootCompleted:I = 0x15

.field static final TRANSACTION_onDreamingStarted:I = 0xa

.field static final TRANSACTION_onDreamingStopped:I = 0xb

.field static final TRANSACTION_onScreenTurnedOff:I = 0xc

.field static final TRANSACTION_onScreenTurnedOn:I = 0xd

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x17

.field static final TRANSACTION_setAdaptiveEvent:I = 0x16

.field static final TRANSACTION_setBendedPendingIntent:I = 0x19

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_setOccluded:I = 0x8

.field static final TRANSACTION_showAssistant:I = 0x12

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x1a

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x18

.field static final TRANSACTION_verifyUnlock:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
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
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_222

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 42
    :sswitch_a
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isShowing()Z

    move-result v5

    .line 49
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v5, :cond_1f

    move v6, v7

    :cond_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v5    # "_result":Z
    :sswitch_23
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isSecure()Z

    move-result v5

    .line 57
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v5, :cond_32

    move v6, v7

    :cond_32
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v5    # "_result":Z
    :sswitch_36
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isShowingAndNotOccluded()Z

    move-result v5

    .line 65
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v5, :cond_45

    move v6, v7

    :cond_45
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 71
    .end local v5    # "_result":Z
    :sswitch_49
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isInputRestricted()Z

    move-result v5

    .line 73
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v5, :cond_58

    move v6, v7

    :cond_58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v5    # "_result":Z
    :sswitch_5c
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isDismissable()Z

    move-result v5

    .line 81
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v5, :cond_6b

    move v6, v7

    :cond_6b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v5    # "_result":Z
    :sswitch_6f
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_9

    .line 95
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_80
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_98

    move v0, v7

    .line 99
    .local v0, "_arg0":Z
    :goto_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9a

    move v2, v7

    .line 100
    .local v2, "_arg1":Z
    :goto_93
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_98
    move v0, v6

    .line 97
    goto :goto_8c

    .restart local v0    # "_arg0":Z
    :cond_9a
    move v2, v6

    .line 99
    goto :goto_93

    .line 105
    .end local v0    # "_arg0":Z
    :sswitch_9c
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b4

    move v0, v7

    .line 108
    .restart local v0    # "_arg0":Z
    :goto_a8
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(Z)I

    move-result v5

    .line 109
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v5    # "_result":I
    :cond_b4
    move v0, v6

    .line 107
    goto :goto_a8

    .line 115
    :sswitch_b6
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    goto/16 :goto_9

    .line 121
    :sswitch_c0
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto/16 :goto_9

    .line 127
    :sswitch_ca
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto/16 :goto_9

    .line 133
    :sswitch_d4
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff(I)V

    goto/16 :goto_9

    .line 141
    .end local v0    # "_arg0":I
    :sswitch_e2
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto/16 :goto_9

    .line 149
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    :sswitch_f4
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_105

    move v0, v7

    .line 152
    .local v0, "_arg0":Z
    :goto_100
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_105
    move v0, v6

    .line 151
    goto :goto_100

    .line 157
    :sswitch_107
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_9

    .line 163
    :sswitch_111
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_129

    .line 166
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 171
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_124
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 169
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_129
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_124

    .line 176
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_12b
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_9

    .line 184
    .end local v0    # "_arg0":I
    :sswitch_139
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showAssistant()V

    goto/16 :goto_9

    .line 190
    :sswitch_143
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15b

    .line 193
    sget-object v6, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 198
    .local v0, "_arg0":Landroid/view/MotionEvent;
    :goto_156
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dispatch(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 196
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :cond_15b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_156

    .line 203
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_15d
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->launchCamera()V

    goto/16 :goto_9

    .line 209
    :sswitch_167
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_9

    .line 215
    :sswitch_171
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19b

    .line 220
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 226
    .local v2, "_arg1":Landroid/widget/RemoteViews;
    :goto_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19d

    .line 227
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 232
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_196
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_9

    .line 223
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_19b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_188

    .line 230
    :cond_19d
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_196

    .line 237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_19f
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1ad
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d7

    .line 250
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 256
    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    :goto_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d9

    .line 257
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 262
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_1d2
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_9

    .line 253
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_1d7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_1c4

    .line 260
    :cond_1d9
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_1d2

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_1db
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_201

    .line 270
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 276
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_203

    .line 277
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 282
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_1fc
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 273
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_201
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1ee

    .line 280
    :cond_203
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_1fc

    .line 287
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_205
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 291
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 292
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_9

    .line 297
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_217
    const-string v6, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_222
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_80
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_b6
        0xa -> :sswitch_c0
        0xb -> :sswitch_ca
        0xc -> :sswitch_d4
        0xd -> :sswitch_e2
        0xe -> :sswitch_f4
        0xf -> :sswitch_107
        0x10 -> :sswitch_111
        0x11 -> :sswitch_12b
        0x12 -> :sswitch_139
        0x13 -> :sswitch_143
        0x14 -> :sswitch_15d
        0x15 -> :sswitch_167
        0x16 -> :sswitch_171
        0x17 -> :sswitch_19f
        0x18 -> :sswitch_1ad
        0x19 -> :sswitch_1db
        0x1a -> :sswitch_205
        0x1b -> :sswitch_217
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
