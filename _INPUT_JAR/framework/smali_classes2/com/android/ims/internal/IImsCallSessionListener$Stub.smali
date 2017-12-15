.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x11

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x10

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x17

.field static final TRANSACTION_callSessionHandover:I = 0x19

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1a

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x13

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x14

.field static final TRANSACTION_callSessionMergeFailed:I = 0xc

.field static final TRANSACTION_callSessionMerged:I = 0xb

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x15

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x16

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xe

.field static final TRANSACTION_callSessionUpdateReceived:I = 0xf

.field static final TRANSACTION_callSessionUpdated:I = 0xd

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
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
    const-string v1, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_3ce

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 48
    :sswitch_9
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 53
    :sswitch_f
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 58
    sget-object v5, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsStreamMediaProfile;

    .line 63
    .local v1, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_2a
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 61
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_31
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_2a

    .line 69
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_33
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    .line 74
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 79
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_4e
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 77
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_55
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4e

    .line 85
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_57
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79

    .line 90
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 95
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_72
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 93
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_79
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_72

    .line 101
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_7b
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9e

    .line 106
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 111
    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_96
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 109
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_9e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_96

    .line 117
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_a0
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c3

    .line 122
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 127
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_bb
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 125
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_c3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_bb

    .line 133
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_c5
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e8

    .line 138
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 143
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_e0
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 141
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_e8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_e0

    .line 149
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_ea
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 153
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10d

    .line 154
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 159
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_105
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 157
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_10d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_105

    .line 165
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_10f
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 169
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_132

    .line 170
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 175
    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_12a
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 173
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_132
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_12a

    .line 181
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_134
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_157

    .line 186
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 191
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_14f
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 189
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_157
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_14f

    .line 197
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_159
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 201
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17c

    .line 202
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 207
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_174
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 205
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_17c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_174

    .line 213
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_17e
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 217
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 219
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a9

    .line 220
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 225
    .local v2, "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_1a1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMerged(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 223
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_1a9
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_1a1

    .line 231
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_1ab
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 235
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ce

    .line 236
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 241
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_1c6
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 239
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_1ce
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_1c6

    .line 247
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1d0
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f3

    .line 252
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 257
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_1eb
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 255
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_1f3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_1eb

    .line 263
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_1f5
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 267
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_218

    .line 268
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 273
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_210
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 271
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_218
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_210

    .line 279
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_21a
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 283
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23d

    .line 284
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 289
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_235
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 287
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_23d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_235

    .line 295
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_23f
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 299
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 301
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26a

    .line 302
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 307
    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_262
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 305
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_26a
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_262

    .line 313
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_26c
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28f

    .line 318
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 323
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_287
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 321
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_28f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_287

    .line 329
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_291
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 333
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 335
    .local v1, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2bc

    .line 336
    sget-object v5, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsCallProfile;

    .line 341
    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :goto_2b4
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 339
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :cond_2bc
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_2b4

    .line 347
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_2be
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 356
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_2d3
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 360
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f6

    .line 361
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 366
    .local v1, "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_2ee
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 364
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_2f6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_2ee

    .line 372
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_2f8
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 381
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_30d
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_330

    .line 386
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    .line 391
    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :goto_328
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 389
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :cond_330
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_328

    .line 397
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_332
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 401
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_355

    .line 402
    sget-object v5, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsConferenceState;

    .line 407
    .local v1, "_arg1":Lcom/android/ims/ImsConferenceState;
    :goto_34d
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 405
    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :cond_355
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    goto :goto_34d

    .line 413
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :sswitch_357
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 417
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 426
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_374
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 430
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39f

    .line 435
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .line 440
    .local v3, "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_397
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 438
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_39f
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_397

    .line 446
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_3a1
    const-string v5, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    .line 450
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3cc

    .line 455
    sget-object v5, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    .line 460
    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :goto_3c4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 458
    .end local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :cond_3cc
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_3c4

    .line 44
    :sswitch_data_3ce
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_33
        0x3 -> :sswitch_57
        0x4 -> :sswitch_7b
        0x5 -> :sswitch_a0
        0x6 -> :sswitch_c5
        0x7 -> :sswitch_ea
        0x8 -> :sswitch_10f
        0x9 -> :sswitch_134
        0xa -> :sswitch_159
        0xb -> :sswitch_17e
        0xc -> :sswitch_1ab
        0xd -> :sswitch_1d0
        0xe -> :sswitch_1f5
        0xf -> :sswitch_21a
        0x10 -> :sswitch_23f
        0x11 -> :sswitch_26c
        0x12 -> :sswitch_291
        0x13 -> :sswitch_2be
        0x14 -> :sswitch_2d3
        0x15 -> :sswitch_2f8
        0x16 -> :sswitch_30d
        0x17 -> :sswitch_332
        0x18 -> :sswitch_357
        0x19 -> :sswitch_374
        0x1a -> :sswitch_3a1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
