.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_getNextAlarmClock:I = 0x6

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setAutoPowerUp:I = 0x5

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3

.field static final TRANSACTION_updateBlockedUids:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
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
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/app/IAlarmManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 21
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
    sparse-switch p1, :sswitch_data_124

    .line 156
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 47
    :sswitch_8
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 58
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 60
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 62
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 63
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 69
    .local v10, "_arg4":Landroid/app/PendingIntent;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    .line 70
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/WorkSource;

    .line 76
    .local v11, "_arg5":Landroid/os/WorkSource;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    .line 77
    sget-object v2, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    .local v12, "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :goto_58
    move-object/from16 v2, p0

    .line 82
    invoke-virtual/range {v2 .. v12}, Landroid/app/IAlarmManager$Stub;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v2, 0x1

    goto :goto_7

    .line 66
    .end local v10    # "_arg4":Landroid/app/PendingIntent;
    .end local v11    # "_arg5":Landroid/os/WorkSource;
    .end local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_62
    const/4 v10, 0x0

    .restart local v10    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_38

    .line 73
    :cond_64
    const/4 v11, 0x0

    .restart local v11    # "_arg5":Landroid/os/WorkSource;
    goto :goto_48

    .line 80
    :cond_66
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_58

    .line 88
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":Landroid/app/PendingIntent;
    .end local v11    # "_arg5":Landroid/os/WorkSource;
    .end local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_68
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 91
    .local v14, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v13

    .line 92
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v13, :cond_86

    const/4 v2, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v2, 0x1

    goto :goto_7

    .line 93
    :cond_86
    const/4 v2, 0x0

    goto :goto_7f

    .line 98
    .end local v13    # "_result":Z
    .end local v14    # "_arg0":J
    :sswitch_88
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 107
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_9e
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c0

    .line 110
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 115
    .local v3, "_arg0":Landroid/app/PendingIntent;
    :goto_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 113
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :cond_c0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_b5

    .line 121
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_c2
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->setAutoPowerUp(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 130
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_d8
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v13

    .line 134
    .local v13, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v13, :cond_fd

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    :goto_fa
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 140
    :cond_fd
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fa

    .line 146
    .end local v3    # "_arg0":I
    .end local v13    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_104
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_121

    const/4 v4, 0x1

    .line 151
    .local v4, "_arg1":Z
    :goto_116
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/IAlarmManager$Stub;->updateBlockedUids(IZ)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 150
    .end local v4    # "_arg1":Z
    :cond_121
    const/4 v4, 0x0

    goto :goto_116

    .line 43
    nop

    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_68
        0x3 -> :sswitch_88
        0x4 -> :sswitch_9e
        0x5 -> :sswitch_c2
        0x6 -> :sswitch_d8
        0x7 -> :sswitch_104
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
