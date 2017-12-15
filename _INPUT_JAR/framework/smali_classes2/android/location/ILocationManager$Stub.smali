.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addExerciseLocationListener:I = 0x22

.field static final TRANSACTION_addGpsMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGpsNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x16

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1b

.field static final TRANSACTION_clearTestProviderLocation:I = 0x19

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1d

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x10

.field static final TRANSACTION_getBestProvider:I = 0x12

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getProviderProperties:I = 0x14

.field static final TRANSACTION_getProviders:I = 0x11

.field static final TRANSACTION_isProviderEnabled:I = 0x15

.field static final TRANSACTION_locationCallbackFinished:I = 0x20

.field static final TRANSACTION_providerMeetsCriteria:I = 0x13

.field static final TRANSACTION_removeExerciseLocationListener:I = 0x23

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGpsNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x17

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x1f

.field static final TRANSACTION_requestExerciseLocationUpdates:I = 0x21

.field static final TRANSACTION_requestFlushExerciseLocation:I = 0x24

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x1e

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1a

.field static final TRANSACTION_setTestProviderLocation:I = 0x18

.field static final TRANSACTION_setTestProviderStatus:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
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
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/location/ILocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 37
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
    sparse-switch p1, :sswitch_data_5f0

    .line 583
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 47
    :sswitch_8
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 55
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 61
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v6

    .line 63
    .local v6, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50

    .line 64
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 70
    .local v8, "_arg2":Landroid/app/PendingIntent;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v3, 0x1

    goto :goto_7

    .line 58
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/ILocationListener;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    :cond_4e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_28

    .line 67
    .restart local v6    # "_arg1":Landroid/location/ILocationListener;
    :cond_50
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_40

    .line 77
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/ILocationListener;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_52
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v4

    .line 81
    .local v4, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7f

    .line 82
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 88
    .local v6, "_arg1":Landroid/app/PendingIntent;
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v3, 0x1

    goto :goto_7

    .line 85
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_7f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_71

    .line 95
    .end local v4    # "_arg0":Landroid/location/ILocationListener;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_81
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c7

    .line 98
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 104
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c9

    .line 105
    sget-object v3, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Geofence;

    .line 111
    .local v6, "_arg1":Landroid/location/Geofence;
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cb

    .line 112
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 118
    .local v8, "_arg2":Landroid/app/PendingIntent;
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 119
    .restart local v9    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 101
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/Geofence;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    :cond_c7
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_98

    .line 108
    :cond_c9
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Geofence;
    goto :goto_a8

    .line 115
    :cond_cb
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_b8

    .line 125
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Landroid/location/Geofence;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_cd
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_103

    .line 128
    sget-object v3, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Geofence;

    .line 134
    .local v4, "_arg0":Landroid/location/Geofence;
    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_105

    .line 135
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 141
    .local v6, "_arg1":Landroid/app/PendingIntent;
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 131
    .end local v4    # "_arg0":Landroid/location/Geofence;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_arg2":Ljava/lang/String;
    :cond_103
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Geofence;
    goto :goto_e4

    .line 138
    :cond_105
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_f4

    .line 148
    .end local v4    # "_arg0":Landroid/location/Geofence;
    .end local v6    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_107
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13c

    .line 151
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 157
    .local v4, "_arg0":Landroid/location/LocationRequest;
    :goto_11e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 159
    .local v2, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_13e

    .line 161
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_139
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 154
    .end local v2    # "_result":Landroid/location/Location;
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_13c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_11e

    .line 165
    .restart local v2    # "_result":Landroid/location/Location;
    .restart local v6    # "_arg1":Ljava/lang/String;
    :cond_13e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_139

    .line 171
    .end local v2    # "_result":Landroid/location/Location;
    .end local v4    # "_arg0":Landroid/location/LocationRequest;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_145
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v4

    .line 175
    .local v4, "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v2

    .line 177
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v2, :cond_16c

    const/4 v3, 0x1

    :goto_164
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 178
    :cond_16c
    const/4 v3, 0x0

    goto :goto_164

    .line 183
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_16e
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v4

    .line 186
    .restart local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 192
    .end local v4    # "_arg0":Landroid/location/IGpsStatusListener;
    :sswitch_188
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v2

    .line 194
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_1a1

    const/4 v3, 0x1

    :goto_199
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 195
    :cond_1a1
    const/4 v3, 0x0

    goto :goto_199

    .line 200
    .end local v2    # "_result":Z
    :sswitch_1a3
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 204
    .local v4, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 206
    .local v6, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 208
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e1

    .line 209
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/GeocoderParams;

    .line 215
    .local v9, "_arg3":Landroid/location/GeocoderParams;
    :goto_1c6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v3, p0

    .line 216
    invoke-virtual/range {v3 .. v10}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 212
    .end local v2    # "_result":Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/location/GeocoderParams;
    .end local v10    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_1e1
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/location/GeocoderParams;
    goto :goto_1c6

    .line 224
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_1e3
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 230
    .restart local v6    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 232
    .local v16, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 234
    .local v18, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 236
    .local v20, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 238
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_231

    .line 239
    sget-object v3, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/location/GeocoderParams;

    .line 245
    .local v23, "_arg6":Landroid/location/GeocoderParams;
    :goto_212
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v12, p0

    move-object v13, v4

    move-wide v14, v6

    .line 246
    invoke-virtual/range {v12 .. v24}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 250
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 242
    .end local v2    # "_result":Ljava/lang/String;
    .end local v23    # "_arg6":Landroid/location/GeocoderParams;
    .end local v24    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_231
    const/16 v23, 0x0

    .restart local v23    # "_arg6":Landroid/location/GeocoderParams;
    goto :goto_212

    .line 254
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":D
    .end local v16    # "_arg2":D
    .end local v18    # "_arg3":D
    .end local v20    # "_arg4":D
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_234
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 259
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v2

    .line 260
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v2, :cond_257

    const/4 v3, 0x1

    :goto_24f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 261
    :cond_257
    const/4 v3, 0x0

    goto :goto_24f

    .line 266
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_259
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v4

    .line 270
    .local v4, "_arg0":Landroid/location/IGpsMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    move-result v2

    .line 272
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v2, :cond_280

    const/4 v3, 0x1

    :goto_278
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 273
    :cond_280
    const/4 v3, 0x0

    goto :goto_278

    .line 278
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_282
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)Z

    move-result v2

    .line 282
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v2, :cond_2a5

    const/4 v3, 0x1

    :goto_29d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 283
    :cond_2a5
    const/4 v3, 0x0

    goto :goto_29d

    .line 288
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    :sswitch_2a7
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v4

    .line 292
    .local v4, "_arg0":Landroid/location/IGpsNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

    move-result v2

    .line 294
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v2, :cond_2ce

    const/4 v3, 0x1

    :goto_2c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 295
    :cond_2ce
    const/4 v3, 0x0

    goto :goto_2c6

    .line 300
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_2d0
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v4

    .line 303
    .restart local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)Z

    move-result v2

    .line 304
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v2, :cond_2f3

    const/4 v3, 0x1

    :goto_2eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 305
    :cond_2f3
    const/4 v3, 0x0

    goto :goto_2eb

    .line 310
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    :sswitch_2f5
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v11

    .line 312
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 314
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 318
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_30b
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33a

    .line 321
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Criteria;

    .line 327
    .local v4, "_arg0":Landroid/location/Criteria;
    :goto_322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33c

    const/4 v6, 0x1

    .line 328
    .local v6, "_arg1":Z
    :goto_329
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v11

    .line 329
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 331
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 324
    .end local v4    # "_arg0":Landroid/location/Criteria;
    .end local v6    # "_arg1":Z
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Criteria;
    goto :goto_322

    .line 327
    :cond_33c
    const/4 v6, 0x0

    goto :goto_329

    .line 335
    .end local v4    # "_arg0":Landroid/location/Criteria;
    :sswitch_33e
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36d

    .line 338
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Criteria;

    .line 344
    .restart local v4    # "_arg0":Landroid/location/Criteria;
    :goto_355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36f

    const/4 v6, 0x1

    .line 345
    .restart local v6    # "_arg1":Z
    :goto_35c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 341
    .end local v2    # "_result":Ljava/lang/String;
    .end local v4    # "_arg0":Landroid/location/Criteria;
    .end local v6    # "_arg1":Z
    :cond_36d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Criteria;
    goto :goto_355

    .line 344
    :cond_36f
    const/4 v6, 0x0

    goto :goto_35c

    .line 352
    .end local v4    # "_arg0":Landroid/location/Criteria;
    :sswitch_371
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a0

    .line 357
    sget-object v3, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Criteria;

    .line 362
    .local v6, "_arg1":Landroid/location/Criteria;
    :goto_38c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v2

    .line 363
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v2, :cond_3a2

    const/4 v3, 0x1

    :goto_398
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 360
    .end local v2    # "_result":Z
    .end local v6    # "_arg1":Landroid/location/Criteria;
    :cond_3a0
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Criteria;
    goto :goto_38c

    .line 364
    .restart local v2    # "_result":Z
    :cond_3a2
    const/4 v3, 0x0

    goto :goto_398

    .line 369
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/location/Criteria;
    :sswitch_3a4
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 373
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v2, :cond_3c9

    .line 375
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_3c6
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 379
    :cond_3c9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c6

    .line 385
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_3d0
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 388
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 389
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v2, :cond_3ef

    const/4 v3, 0x1

    :goto_3e7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 390
    :cond_3ef
    const/4 v3, 0x0

    goto :goto_3e7

    .line 395
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_3f1
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 399
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_417

    .line 400
    sget-object v3, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/location/ProviderProperties;

    .line 405
    .local v6, "_arg1":Lcom/android/internal/location/ProviderProperties;
    :goto_40c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 403
    .end local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :cond_417
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_40c

    .line 411
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_419
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 420
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_42f
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 424
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_455

    .line 425
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 430
    .local v6, "_arg1":Landroid/location/Location;
    :goto_44a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 428
    .end local v6    # "_arg1":Landroid/location/Location;
    :cond_455
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/location/Location;
    goto :goto_44a

    .line 436
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/location/Location;
    :sswitch_457
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 439
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 445
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_46d
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 449
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_48a

    const/4 v6, 0x1

    .line 450
    .local v6, "_arg1":Z
    :goto_47f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 449
    .end local v6    # "_arg1":Z
    :cond_48a
    const/4 v6, 0x0

    goto :goto_47f

    .line 456
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_48c
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 465
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_4a2
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 469
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 471
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d8

    .line 472
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 478
    .local v8, "_arg2":Landroid/os/Bundle;
    :goto_4c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg3":J
    move-object/from16 v26, p0

    move-object/from16 v27, v4

    move/from16 v28, v6

    move-object/from16 v29, v8

    move-wide/from16 v30, v18

    .line 479
    invoke-virtual/range {v26 .. v31}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 475
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v18    # "_arg3":J
    :cond_4d8
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_4c1

    .line 485
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :sswitch_4da
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 488
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 494
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_4f0
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 498
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_531

    .line 501
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 506
    .restart local v8    # "_arg2":Landroid/os/Bundle;
    :goto_50f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 507
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v2, :cond_533

    const/4 v3, 0x1

    :goto_51b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    if-eqz v8, :cond_535

    .line 510
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 516
    :goto_52e
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 504
    .end local v2    # "_result":Z
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :cond_531
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_50f

    .line 508
    .restart local v2    # "_result":Z
    :cond_533
    const/4 v3, 0x0

    goto :goto_51b

    .line 514
    :cond_535
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52e

    .line 520
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :sswitch_53c
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_565

    .line 523
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 529
    .local v4, "_arg0":Landroid/location/Location;
    :goto_553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_567

    const/4 v6, 0x1

    .line 530
    .local v6, "_arg1":Z
    :goto_55a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 526
    .end local v4    # "_arg0":Landroid/location/Location;
    .end local v6    # "_arg1":Z
    :cond_565
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/location/Location;
    goto :goto_553

    .line 529
    :cond_567
    const/4 v6, 0x0

    goto :goto_55a

    .line 536
    .end local v4    # "_arg0":Landroid/location/Location;
    :sswitch_569
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v4

    .line 539
    .local v4, "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 545
    .end local v4    # "_arg0":Landroid/location/ILocationListener;
    :sswitch_583
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 549
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->requestExerciseLocationUpdates(II)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 556
    .end local v4    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_59d
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v4

    .line 560
    .local v4, "_arg0":Landroid/location/IExerciseLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/location/ILocationManager$Stub;->addExerciseLocationListener(Landroid/location/IExerciseLocationListener;Ljava/lang/String;)Z

    move-result v2

    .line 562
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v2, :cond_5c4

    const/4 v3, 0x1

    :goto_5bc
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 563
    :cond_5c4
    const/4 v3, 0x0

    goto :goto_5bc

    .line 568
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_5c6
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v4

    .line 571
    .restart local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/location/ILocationManager$Stub;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 577
    .end local v4    # "_arg0":Landroid/location/IExerciseLocationListener;
    :sswitch_5e0
    const-string v3, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->requestFlushExerciseLocation()V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 43
    :sswitch_data_5f0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_52
        0x3 -> :sswitch_81
        0x4 -> :sswitch_cd
        0x5 -> :sswitch_107
        0x6 -> :sswitch_145
        0x7 -> :sswitch_16e
        0x8 -> :sswitch_188
        0x9 -> :sswitch_1a3
        0xa -> :sswitch_1e3
        0xb -> :sswitch_234
        0xc -> :sswitch_259
        0xd -> :sswitch_282
        0xe -> :sswitch_2a7
        0xf -> :sswitch_2d0
        0x10 -> :sswitch_2f5
        0x11 -> :sswitch_30b
        0x12 -> :sswitch_33e
        0x13 -> :sswitch_371
        0x14 -> :sswitch_3a4
        0x15 -> :sswitch_3d0
        0x16 -> :sswitch_3f1
        0x17 -> :sswitch_419
        0x18 -> :sswitch_42f
        0x19 -> :sswitch_457
        0x1a -> :sswitch_46d
        0x1b -> :sswitch_48c
        0x1c -> :sswitch_4a2
        0x1d -> :sswitch_4da
        0x1e -> :sswitch_4f0
        0x1f -> :sswitch_53c
        0x20 -> :sswitch_569
        0x21 -> :sswitch_583
        0x22 -> :sswitch_59d
        0x23 -> :sswitch_5c6
        0x24 -> :sswitch_5e0
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
