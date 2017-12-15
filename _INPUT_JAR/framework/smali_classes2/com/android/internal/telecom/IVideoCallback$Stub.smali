.class public abstract Lcom/android/internal/telecom/IVideoCallback$Stub;
.super Landroid/os/Binder;
.source "IVideoCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x5

.field static final TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_3
    return-object v0

    .line 34
    :cond_4
    const-string v1, "com.android.internal.telecom.IVideoCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v1, :cond_13

    .line 36
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    goto :goto_3

    .line 38
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_9a

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 50
    :sswitch_9
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 55
    :sswitch_f
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 58
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 63
    .local v0, "_arg0":Landroid/telecom/VideoProfile;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_8

    .line 61
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_22

    .line 68
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_28
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_51

    .line 73
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 79
    .local v1, "_arg1":Landroid/telecom/VideoProfile;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53

    .line 80
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 85
    .local v2, "_arg2":Landroid/telecom/VideoProfile;
    :goto_4d
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_8

    .line 76
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    .end local v2    # "_arg2":Landroid/telecom/VideoProfile;
    :cond_51
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_3f

    .line 83
    :cond_53
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/telecom/VideoProfile;
    goto :goto_4d

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    .end local v2    # "_arg2":Landroid/telecom/VideoProfile;
    :sswitch_55
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->handleCallSessionEvent(I)V

    goto :goto_8

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_62
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changePeerDimensions(II)V

    goto :goto_8

    .line 108
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_73
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCallDataUsage(I)V

    goto :goto_8

    .line 116
    .end local v0    # "_arg0":I
    :sswitch_80
    const-string v4, "com.android.internal.telecom.IVideoCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98

    .line 119
    sget-object v4, Landroid/telecom/CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CameraCapabilities;

    .line 124
    .local v0, "_arg0":Landroid/telecom/CameraCapabilities;
    :goto_93
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V

    goto/16 :goto_8

    .line 122
    .end local v0    # "_arg0":Landroid/telecom/CameraCapabilities;
    :cond_98
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/CameraCapabilities;
    goto :goto_93

    .line 46
    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_55
        0x4 -> :sswitch_62
        0x5 -> :sswitch_73
        0x6 -> :sswitch_80
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
