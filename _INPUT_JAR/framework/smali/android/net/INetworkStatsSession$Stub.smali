.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x5

.field static final TRANSACTION_getHistoryForNetwork:I = 0x2

.field static final TRANSACTION_getHistoryForUid:I = 0x4

.field static final TRANSACTION_getSummaryForAllUid:I = 0x3

.field static final TRANSACTION_getSummaryForNetwork:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
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
    const-string v1, "android.net.INetworkStatsSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/net/INetworkStatsSession;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/net/INetworkStatsSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_138

    .line 158
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 43
    :sswitch_8
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    .line 51
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 57
    .local v3, "_arg0":Landroid/net/NetworkTemplate;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    move-object/from16 v2, p0

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v15

    .line 61
    .local v15, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v15, :cond_4b

    .line 63
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_47
    const/4 v2, 0x1

    goto :goto_7

    .line 54
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v15    # "_result":Landroid/net/NetworkStats;
    :cond_49
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_28

    .line 67
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v15    # "_result":Landroid/net/NetworkStats;
    :cond_4b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    .line 73
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v15    # "_result":Landroid/net/NetworkStats;
    :sswitch_52
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_86

    .line 76
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 82
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v15

    .line 84
    .local v15, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v15, :cond_88

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_84
    const/4 v2, 0x1

    goto :goto_7

    .line 79
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":I
    .end local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_86
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_69

    .line 90
    .restart local v4    # "_arg1":I
    .restart local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_88
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    .line 96
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":I
    .end local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_8f
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cf

    .line 99
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 105
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 107
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 109
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d1

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_b5
    move-object/from16 v2, p0

    .line 110
    invoke-virtual/range {v2 .. v8}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v15

    .line 111
    .local v15, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v15, :cond_d3

    .line 113
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_cc
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 102
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v15    # "_result":Landroid/net/NetworkStats;
    :cond_cf
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_a6

    .line 109
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    :cond_d1
    const/4 v8, 0x0

    goto :goto_b5

    .line 117
    .restart local v8    # "_arg3":Z
    .restart local v15    # "_result":Landroid/net/NetworkStats;
    :cond_d3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_cc

    .line 123
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v15    # "_result":Landroid/net/NetworkStats;
    :sswitch_da
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11f

    .line 126
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 132
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 138
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg4":I
    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move v12, v6

    move v13, v8

    .line 139
    invoke-virtual/range {v9 .. v14}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v15

    .line 140
    .local v15, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v15, :cond_121

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_11c
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 129
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_11f
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_f1

    .line 146
    .restart local v4    # "_arg1":I
    .restart local v6    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v14    # "_arg4":I
    .restart local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_121
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11c

    .line 152
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_128
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 39
    :sswitch_data_138
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_52
        0x3 -> :sswitch_8f
        0x4 -> :sswitch_da
        0x5 -> :sswitch_128
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
