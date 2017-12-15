.class public abstract Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;
.super Landroid/os/Binder;
.source "IContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextAwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/IContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.contextaware.manager.IContextAwareService"

.field static final TRANSACTION_getContextInfo:I = 0x6

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_initializeAutoTest:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resetCAService:I = 0x3

.field static final TRANSACTION_setCALogger:I = 0x5

.field static final TRANSACTION_setCAProperty:I = 0x4

.field static final TRANSACTION_setScenarioForDebugging:I = 0xb

.field static final TRANSACTION_setScenarioForTest:I = 0xa

.field static final TRANSACTION_setVersion:I = 0xc

.field static final TRANSACTION_startAutoTest:I = 0x8

.field static final TRANSACTION_stopAutoTest:I = 0x9

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/contextaware/manager/IContextAwareService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/contextaware/manager/IContextAwareService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_140

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 46
    :sswitch_a
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->registerCallback(Landroid/os/IBinder;I)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_24
    const-string v7, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    .line 68
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v4, :cond_3b

    move v5, v6

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_3f
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->resetCAService(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":I
    :sswitch_4f
    const-string v7, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_78

    .line 90
    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 95
    .local v2, "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    :goto_6a
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v4

    .line 96
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_74

    move v5, v6

    :cond_74
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v2    # "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    .end local v4    # "_result":Z
    :cond_78
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    goto :goto_6a

    .line 102
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    :sswitch_7a
    const-string v7, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a0

    move v0, v6

    .line 106
    .local v0, "_arg0":Z
    :goto_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a2

    move v1, v6

    .line 108
    .local v1, "_arg1":Z
    :goto_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a4

    move v3, v6

    .line 111
    .local v3, "_arg3":Z
    :goto_98
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setCALogger(ZZIZ)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :cond_a0
    move v0, v5

    .line 104
    goto :goto_86

    .restart local v0    # "_arg0":Z
    :cond_a2
    move v1, v5

    .line 106
    goto :goto_8d

    .restart local v1    # "_arg1":Z
    .restart local v2    # "_arg2":I
    :cond_a4
    move v3, v5

    .line 110
    goto :goto_98

    .line 117
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :sswitch_a6
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->getContextInfo(Landroid/os/IBinder;I)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_bb
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->initializeAutoTest()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 135
    :sswitch_c8
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->startAutoTest()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 142
    :sswitch_d5
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->stopAutoTest()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 149
    :sswitch_e2
    const-string v7, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setScenarioForTest(II)Z

    move-result v4

    .line 155
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_f9

    move v5, v6

    :cond_f9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 161
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_fe
    const-string v7, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 168
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setScenarioForDebugging(II[B)Z

    move-result v4

    .line 169
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_119

    move v5, v6

    :cond_119
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v4    # "_result":Z
    :sswitch_11e
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setVersion(I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 184
    .end local v0    # "_arg0":I
    :sswitch_12f
    const-string v5, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->getVersion()I

    move-result v4

    .line 186
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_7a
        0x6 -> :sswitch_a6
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_c8
        0x9 -> :sswitch_d5
        0xa -> :sswitch_e2
        0xb -> :sswitch_fe
        0xc -> :sswitch_11e
        0xd -> :sswitch_12f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
