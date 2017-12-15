.class public abstract Lcom/absolute/android/persistence/IABTPersistence$Stub;
.super Landroid/os/Binder;
.source "IABTPersistence.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistence"

.field static final TRANSACTION_downloadApk:I = 0x16

.field static final TRANSACTION_getAllApplicationProfiles:I = 0x7

.field static final TRANSACTION_getAppInfo:I = 0x15

.field static final TRANSACTION_getApplicationProfile:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x11

.field static final TRANSACTION_getDiagnostics:I = 0x14

.field static final TRANSACTION_getLog:I = 0x4

.field static final TRANSACTION_getPersistedAppCount:I = 0xc

.field static final TRANSACTION_getPersistedFile:I = 0x10

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getVersion:I = 0x3

.field static final TRANSACTION_install:I = 0x5

.field static final TRANSACTION_invokeMethodAsSystem:I = 0xd

.field static final TRANSACTION_refreshDeviceId:I = 0x12

.field static final TRANSACTION_registerPing:I = 0xe

.field static final TRANSACTION_setAllPersistence:I = 0xb

.field static final TRANSACTION_setApplicationProfile:I = 0x9

.field static final TRANSACTION_setPersistence:I = 0xa

.field static final TRANSACTION_setState:I = 0x2

.field static final TRANSACTION_testFirmwareUpdate:I = 0x13

.field static final TRANSACTION_uninstall:I = 0x6

.field static final TRANSACTION_unregisterPing:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    .line 47
    :goto_3
    return-object v0

    .line 43
    :cond_4
    const-string v1, "com.absolute.android.persistence.IABTPersistence"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistence;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistence;

    goto :goto_3

    .line 47
    :cond_13
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 51
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
    .line 55
    sparse-switch p1, :sswitch_data_25a

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 59
    :sswitch_8
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_7

    .line 64
    :sswitch_f
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getState()I

    move-result v8

    .line 66
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_7

    .line 72
    .end local v8    # "_result":I
    :sswitch_20
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setState(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v0, 0x1

    goto :goto_7

    .line 81
    .end local v1    # "_arg0":I
    :sswitch_31
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getVersion()I

    move-result v8

    .line 83
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v0, 0x1

    goto :goto_7

    .line 89
    .end local v8    # "_result":I
    :sswitch_42
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v8

    .line 93
    .local v8, "_result":Lcom/absolute/android/persistence/IABTPersistenceLog;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v8, :cond_5d

    invoke-interface {v8}, Lcom/absolute/android/persistence/IABTPersistenceLog;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_7

    .line 94
    :cond_5d
    const/4 v0, 0x0

    goto :goto_58

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Lcom/absolute/android/persistence/IABTPersistenceLog;
    :sswitch_5f
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    .line 102
    sget-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/AppProfile;

    .line 108
    .local v1, "_arg0":Lcom/absolute/android/persistence/AppProfile;
    :goto_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v3

    .line 111
    .local v3, "_arg2":Lcom/absolute/android/persistence/IABTResultReceiver;
    invoke-virtual {p0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto :goto_7

    .line 105
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/absolute/android/persistence/IABTResultReceiver;
    :cond_86
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    goto :goto_72

    .line 117
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    :sswitch_88
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a9

    const/4 v2, 0x1

    .line 123
    .local v2, "_arg1":Z
    :goto_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg2":Lcom/absolute/android/persistence/IABTResultReceiver;
    invoke-virtual {p0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 121
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/absolute/android/persistence/IABTResultReceiver;
    :cond_a9
    const/4 v2, 0x0

    goto :goto_98

    .line 130
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_ab
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v8

    .line 132
    .local v8, "_result":[Lcom/absolute/android/persistence/AppProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p3, v8, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 138
    .end local v8    # "_result":[Lcom/absolute/android/persistence/AppProfile;
    :sswitch_be
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v8

    .line 142
    .local v8, "_result":Lcom/absolute/android/persistence/AppProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v8, :cond_db

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/absolute/android/persistence/AppProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_d8
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 148
    :cond_db
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d8

    .line 154
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Lcom/absolute/android/persistence/AppProfile;
    :sswitch_e0
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fc

    .line 157
    sget-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/AppProfile;

    .line 162
    .local v1, "_arg0":Lcom/absolute/android/persistence/AppProfile;
    :goto_f3
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 160
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    :cond_fc
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    goto :goto_f3

    .line 168
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/AppProfile;
    :sswitch_fe
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_117

    const/4 v2, 0x1

    .line 173
    .restart local v2    # "_arg1":Z
    :goto_10e
    invoke-virtual {p0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setPersistence(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 172
    .end local v2    # "_arg1":Z
    :cond_117
    const/4 v2, 0x0

    goto :goto_10e

    .line 179
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_119
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12e

    const/4 v1, 0x1

    .line 182
    .local v1, "_arg0":Z
    :goto_125
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setAllPersistence(Z)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 181
    .end local v1    # "_arg0":Z
    :cond_12e
    const/4 v1, 0x0

    goto :goto_125

    .line 188
    :sswitch_130
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedAppCount()I

    move-result v8

    .line 190
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 196
    .end local v8    # "_result":I
    :sswitch_142
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_166

    .line 199
    sget-object v0, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/MethodSpec;

    .line 205
    .local v1, "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    :goto_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    .line 206
    .local v2, "_arg1":Lcom/absolute/android/persistence/IABTResultReceiver;
    invoke-virtual {p0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 202
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    .end local v2    # "_arg1":Lcom/absolute/android/persistence/IABTResultReceiver;
    :cond_166
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    goto :goto_155

    .line 212
    .end local v1    # "_arg0":Lcom/absolute/android/persistence/MethodSpec;
    :sswitch_168
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTPing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v2

    .line 218
    .local v2, "_arg1":Lcom/absolute/android/persistence/IABTPing;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 225
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/absolute/android/persistence/IABTPing;
    .end local v3    # "_arg2":I
    :sswitch_186
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->unregisterPing(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 234
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_198
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bf

    const/4 v3, 0x1

    .line 241
    .local v3, "_arg2":Z
    :goto_1ac
    invoke-virtual {p0, v1, v2, v3}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v8

    .line 242
    .local v8, "_result":Lcom/absolute/android/persistence/IABTPersistedFile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v8, :cond_1c1

    invoke-interface {v8}, Lcom/absolute/android/persistence/IABTPersistedFile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1b9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 240
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Lcom/absolute/android/persistence/IABTPersistedFile;
    :cond_1bf
    const/4 v3, 0x0

    goto :goto_1ac

    .line 243
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Lcom/absolute/android/persistence/IABTPersistedFile;
    :cond_1c1
    const/4 v0, 0x0

    goto :goto_1b9

    .line 248
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Lcom/absolute/android/persistence/IABTPersistedFile;
    :sswitch_1c3
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 256
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_1d5
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->refreshDeviceId()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 263
    :sswitch_1e3
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->testFirmwareUpdate()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 270
    :sswitch_1f1
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDiagnostics()Ljava/lang/String;

    move-result-object v8

    .line 272
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 278
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_203
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v5

    .local v5, "_arg4":Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    move-object v0, p0

    .line 289
    invoke-virtual/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    :sswitch_22a
    const-string v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTDownloadReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    .line 309
    .local v6, "_arg5":Lcom/absolute/android/persistence/IABTDownloadReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 310
    invoke-virtual/range {v0 .. v7}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 55
    nop

    :sswitch_data_25a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_31
        0x4 -> :sswitch_42
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_88
        0x7 -> :sswitch_ab
        0x8 -> :sswitch_be
        0x9 -> :sswitch_e0
        0xa -> :sswitch_fe
        0xb -> :sswitch_119
        0xc -> :sswitch_130
        0xd -> :sswitch_142
        0xe -> :sswitch_168
        0xf -> :sswitch_186
        0x10 -> :sswitch_198
        0x11 -> :sswitch_1c3
        0x12 -> :sswitch_1d5
        0x13 -> :sswitch_1e3
        0x14 -> :sswitch_1f1
        0x15 -> :sswitch_203
        0x16 -> :sswitch_22a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
