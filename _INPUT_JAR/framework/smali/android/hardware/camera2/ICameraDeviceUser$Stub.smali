.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_flush:I = 0xc

.field static final TRANSACTION_getCameraInfo:I = 0xa

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_waitUntilIdle:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
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
    const-string v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_190

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4e

    .line 58
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 64
    .local v0, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_50

    move v2, v6

    .line 66
    .local v2, "_arg1":Z
    :goto_36
    new-instance v3, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v3}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 67
    .local v3, "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v5

    .line 68
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    if-eqz v3, :cond_52

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v6}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 61
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "_result":I
    :cond_4e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_2f

    :cond_50
    move v2, v7

    .line 64
    goto :goto_36

    .line 75
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v5    # "_result":I
    :cond_52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "_result":I
    :sswitch_56
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_80

    move v2, v6

    .line 87
    .restart local v2    # "_arg1":Z
    :goto_68
    new-instance v3, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v3}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 88
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v5

    .line 89
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    if-eqz v3, :cond_82

    .line 92
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v6}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "_result":I
    :cond_80
    move v2, v7

    .line 85
    goto :goto_68

    .line 96
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v5    # "_result":I
    :cond_82
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 102
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "_result":I
    :sswitch_86
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    new-instance v2, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 107
    .local v2, "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v5

    .line 108
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    if-eqz v2, :cond_a8

    .line 111
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v2, p3, v6}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 115
    :cond_a8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 121
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v5    # "_result":I
    :sswitch_ad
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()I

    move-result v5

    .line 123
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 129
    .end local v5    # "_result":I
    :sswitch_be
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure()I

    move-result v5

    .line 131
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 137
    .end local v5    # "_result":I
    :sswitch_cf
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)I

    move-result v5

    .line 141
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 147
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_e4
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10f

    .line 156
    sget-object v7, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 161
    .local v4, "_arg3":Landroid/view/Surface;
    :goto_103
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(IIILandroid/view/Surface;)I

    move-result v5

    .line 162
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 159
    .end local v4    # "_arg3":Landroid/view/Surface;
    .end local v5    # "_result":I
    :cond_10f
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/view/Surface;
    goto :goto_103

    .line 168
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/view/Surface;
    :sswitch_111
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0    # "_arg0":I
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 173
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v5

    .line 174
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    if-eqz v2, :cond_133

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v2, p3, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 181
    :cond_133
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 187
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "_result":I
    :sswitch_138
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 190
    .local v0, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v5

    .line 191
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    if-eqz v0, :cond_156

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v0, p3, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 198
    :cond_156
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "_result":I
    :sswitch_15b
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()I

    move-result v5

    .line 206
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v5    # "_result":I
    :sswitch_16c
    const-string v8, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    new-instance v0, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 215
    .local v0, "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    move-result v5

    .line 216
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    if-eqz v0, :cond_18a

    .line 219
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {v0, p3, v6}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 223
    :cond_18a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_190
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_56
        0x4 -> :sswitch_86
        0x5 -> :sswitch_ad
        0x6 -> :sswitch_be
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_e4
        0x9 -> :sswitch_111
        0xa -> :sswitch_138
        0xb -> :sswitch_15b
        0xc -> :sswitch_16c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
