.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final TRANSACTION_queryConfigurationStats:I = 0x2

.field static final TRANSACTION_queryEvents:I = 0x3

.field static final TRANSACTION_queryUsageStats:I = 0x1

.field static final TRANSACTION_registerUsageStatsWatcher:I = 0x4

.field static final TRANSACTION_unregisterUsageStatsWatcher:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
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
    const-string v1, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/app/usage/IUsageStatsManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_ea

    .line 133
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 47
    :sswitch_8
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v2, "android.app.usage.IUsageStatsManager"

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 61
    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 62
    .local v15, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v15, :cond_41

    .line 64
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_3f
    const/4 v2, 0x1

    goto :goto_7

    .line 68
    :cond_41
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 74
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_48
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 80
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 82
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 83
    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 84
    .restart local v15    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v15, :cond_78

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_76
    const/4 v2, 0x1

    goto :goto_7

    .line 90
    :cond_78
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    .line 96
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v15    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_7f
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 100
    .local v10, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 102
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v9, p0

    move-wide v12, v4

    move-object v14, v6

    .line 103
    invoke-virtual/range {v9 .. v14}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v15

    .line 104
    .local v15, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v15, :cond_ae

    .line 106
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_ab
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 110
    :cond_ae
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ab

    .line 116
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":J
    .end local v15    # "_result":Landroid/app/usage/UsageEvents;
    :sswitch_b5
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsWatcher;

    move-result-object v3

    .line 119
    .local v3, "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 125
    .end local v3    # "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    :sswitch_cf
    const-string v2, "android.app.usage.IUsageStatsManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsWatcher;

    move-result-object v3

    .line 128
    .restart local v3    # "_arg0":Landroid/app/usage/IUsageStatsWatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 43
    nop

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_48
        0x3 -> :sswitch_7f
        0x4 -> :sswitch_b5
        0x5 -> :sswitch_cf
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
