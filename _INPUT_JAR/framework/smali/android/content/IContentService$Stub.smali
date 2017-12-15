.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xf

.field static final TRANSACTION_addStatusChangeListener:I = 0x21

.field static final TRANSACTION_cancelRequest:I = 0x9

.field static final TRANSACTION_cancelSync:I = 0x7

.field static final TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final TRANSACTION_getCurrentSyncs:I = 0x18

.field static final TRANSACTION_getCurrentSyncsAsUser:I = 0x19

.field static final TRANSACTION_getIsSyncable:I = 0x11

.field static final TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0x16

.field static final TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x17

.field static final TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x1a

.field static final TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1b

.field static final TRANSACTION_getSyncAutomatically:I = 0xa

.field static final TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final TRANSACTION_getSyncStatus:I = 0x1d

.field static final TRANSACTION_getSyncStatusAsUser:I = 0x1e

.field static final TRANSACTION_isSyncActive:I = 0x1c

.field static final TRANSACTION_isSyncPending:I = 0x1f

.field static final TRANSACTION_isSyncPendingAsUser:I = 0x20

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0x10

.field static final TRANSACTION_removeStatusChangeListener:I = 0x22

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0x13

.field static final TRANSACTION_setIsSyncableAsUser:I = 0x23

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0x14

.field static final TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x15

.field static final TRANSACTION_setSyncAutomatically:I = 0xc

.field static final TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_syncAsUser:I = 0x6

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/IContentService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
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
    .line 41
    sparse-switch p1, :sswitch_data_69c

    .line 665
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 45
    :sswitch_8
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    goto :goto_7

    .line 50
    :sswitch_11
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 53
    .local v3, "_arg0":Landroid/database/IContentObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v2, 0x1

    goto :goto_7

    .line 59
    .end local v3    # "_arg0":Landroid/database/IContentObserver;
    :sswitch_2a
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e

    .line 62
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 68
    .local v3, "_arg0":Landroid/net/Uri;
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60

    const/4 v4, 0x1

    .line 70
    .local v4, "_arg1":Z
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v5

    .line 72
    .local v5, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 73
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/database/IContentObserver;
    .end local v6    # "_arg3":I
    :cond_5e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/Uri;
    goto :goto_41

    .line 68
    :cond_60
    const/4 v4, 0x0

    goto :goto_48

    .line 79
    .end local v3    # "_arg0":Landroid/net/Uri;
    :sswitch_62
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9e

    .line 82
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 88
    .restart local v3    # "_arg0":Landroid/net/Uri;
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v4

    .line 90
    .local v4, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v5, 0x1

    .line 92
    .local v5, "_arg2":Z
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v6, 0x1

    .line 94
    .local v6, "_arg3":Z
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 95
    invoke-virtual/range {v2 .. v7}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 85
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/database/IContentObserver;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":I
    :cond_9e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/Uri;
    goto :goto_79

    .line 90
    .restart local v4    # "_arg1":Landroid/database/IContentObserver;
    :cond_a0
    const/4 v5, 0x0

    goto :goto_88

    .line 92
    .restart local v5    # "_arg2":Z
    :cond_a2
    const/4 v6, 0x0

    goto :goto_8f

    .line 101
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/database/IContentObserver;
    .end local v5    # "_arg2":Z
    :sswitch_a4
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_da

    .line 104
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 110
    .local v3, "_arg0":Landroid/accounts/Account;
    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dc

    .line 113
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 118
    .local v5, "_arg2":Landroid/os/Bundle;
    :goto_cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 107
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :cond_da
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_bb

    .line 116
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_dc
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/Bundle;
    goto :goto_cf

    .line 124
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :sswitch_de
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_100

    .line 127
    sget-object v2, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncRequest;

    .line 132
    .local v3, "_arg0":Landroid/content/SyncRequest;
    :goto_f5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 130
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    :cond_100
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_f5

    .line 138
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_102
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_128

    .line 141
    sget-object v2, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncRequest;

    .line 147
    .restart local v3    # "_arg0":Landroid/content/SyncRequest;
    :goto_119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;I)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 144
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    .end local v4    # "_arg1":I
    :cond_128
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_119

    .line 154
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_12a
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_160

    .line 157
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 163
    .local v3, "_arg0":Landroid/accounts/Account;
    :goto_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_162

    .line 166
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 171
    .local v5, "_arg2":Landroid/content/ComponentName;
    :goto_155
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 160
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    :cond_160
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_141

    .line 169
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_162
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_155

    .line 177
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    :sswitch_164
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19e

    .line 180
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 186
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a0

    .line 189
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 195
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_18f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 196
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 183
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg3":I
    :cond_19e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_17b

    .line 192
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_1a0
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_18f

    .line 202
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    :sswitch_1a2
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c4

    .line 205
    sget-object v2, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncRequest;

    .line 210
    .local v3, "_arg0":Landroid/content/SyncRequest;
    :goto_1b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 208
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    :cond_1c4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_1b9

    .line 216
    .end local v3    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_1c6
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f5

    .line 219
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 225
    .local v3, "_arg0":Landroid/accounts/Account;
    :goto_1dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    .line 227
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v14, :cond_1f7

    const/4 v2, 0x1

    :goto_1ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 222
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :cond_1f5
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_1dd

    .line 228
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v14    # "_result":Z
    :cond_1f7
    const/4 v2, 0x0

    goto :goto_1ed

    .line 233
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_1f9
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22c

    .line 236
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 242
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 245
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v14

    .line 246
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v14, :cond_22e

    const/4 v2, 0x1

    :goto_224
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 239
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v14    # "_result":Z
    :cond_22c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_210

    .line 247
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v5    # "_arg2":I
    .restart local v14    # "_result":Z
    :cond_22e
    const/4 v2, 0x0

    goto :goto_224

    .line 252
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v14    # "_result":Z
    :sswitch_230
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25d

    .line 255
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 261
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25f

    const/4 v5, 0x1

    .line 264
    .local v5, "_arg2":Z
    :goto_252
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 258
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    :cond_25d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_247

    .line 263
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_25f
    const/4 v5, 0x0

    goto :goto_252

    .line 270
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_261
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_292

    .line 273
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 279
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_294

    const/4 v5, 0x1

    .line 283
    .restart local v5    # "_arg2":Z
    :goto_283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 276
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    :cond_292
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_278

    .line 281
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_294
    const/4 v5, 0x0

    goto :goto_283

    .line 290
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_296
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d2

    .line 293
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 299
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_2ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d4

    .line 302
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 307
    .local v5, "_arg2":Landroid/content/ComponentName;
    :goto_2c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v15

    .line 308
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 296
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_2d2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_2ad

    .line 305
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_2d4
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2c1

    .line 314
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    :sswitch_2d6
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_313

    .line 317
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 323
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_315

    .line 326
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 332
    .local v5, "_arg2":Landroid/os/Bundle;
    :goto_301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, "_arg3":J
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 333
    invoke-virtual/range {v8 .. v13}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 320
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_arg3":J
    :cond_313
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_2ed

    .line 329
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_315
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/Bundle;
    goto :goto_301

    .line 339
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :sswitch_317
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34d

    .line 342
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 348
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_32e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 350
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34f

    .line 351
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 356
    .restart local v5    # "_arg2":Landroid/os/Bundle;
    :goto_342
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 345
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :cond_34d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_32e

    .line 354
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_34f
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/Bundle;
    goto :goto_342

    .line 362
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    :sswitch_351
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37d

    .line 365
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 371
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 372
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 373
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 368
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":I
    :cond_37d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_368

    .line 379
    .end local v3    # "_arg0":Landroid/accounts/Account;
    :sswitch_37f
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3af

    .line 382
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 388
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v14

    .line 392
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 385
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v14    # "_result":I
    :cond_3af
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_396

    .line 398
    .end local v3    # "_arg0":Landroid/accounts/Account;
    :sswitch_3b1
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3db

    .line 401
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 407
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_3c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 409
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 410
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 404
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :cond_3db
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_3c8

    .line 416
    .end local v3    # "_arg0":Landroid/accounts/Account;
    :sswitch_3dd
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f6

    const/4 v3, 0x1

    .line 419
    .local v3, "_arg0":Z
    :goto_3eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 418
    .end local v3    # "_arg0":Z
    :cond_3f6
    const/4 v3, 0x0

    goto :goto_3eb

    .line 425
    :sswitch_3f8
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_415

    const/4 v3, 0x1

    .line 429
    .restart local v3    # "_arg0":Z
    :goto_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 430
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 427
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_415
    const/4 v3, 0x0

    goto :goto_406

    .line 436
    :sswitch_417
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v14

    .line 438
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v14, :cond_430

    const/4 v2, 0x1

    :goto_428
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 439
    :cond_430
    const/4 v2, 0x0

    goto :goto_428

    .line 444
    .end local v14    # "_result":Z
    :sswitch_432
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v14

    .line 448
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v14, :cond_451

    const/4 v2, 0x1

    :goto_449
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 449
    :cond_451
    const/4 v2, 0x0

    goto :goto_449

    .line 454
    .end local v3    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_453
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v16

    .line 456
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 458
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 462
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_46b
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v16

    .line 466
    .restart local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 472
    .end local v3    # "_arg0":I
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_489
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v14

    .line 474
    .local v14, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 476
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 480
    .end local v14    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_4a0
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 483
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v14

    .line 484
    .restart local v14    # "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 490
    .end local v3    # "_arg0":I
    .end local v14    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_4bd
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4fc

    .line 493
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 499
    .local v3, "_arg0":Landroid/accounts/Account;
    :goto_4d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4fe

    .line 502
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 507
    .local v5, "_arg2":Landroid/content/ComponentName;
    :goto_4e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v14

    .line 508
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v14, :cond_500

    const/4 v2, 0x1

    :goto_4f4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 496
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Z
    :cond_4fc
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_4d4

    .line 505
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_4fe
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_4e8

    .line 509
    .restart local v14    # "_result":Z
    :cond_500
    const/4 v2, 0x0

    goto :goto_4f4

    .line 514
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Z
    :sswitch_502
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_547

    .line 517
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 523
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 525
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_549

    .line 526
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 531
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_52d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 532
    .local v14, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v14, :cond_54b

    .line 534
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    :goto_544
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 520
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Landroid/content/SyncStatusInfo;
    :cond_547
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_519

    .line 529
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_549
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_52d

    .line 538
    .restart local v14    # "_result":Landroid/content/SyncStatusInfo;
    :cond_54b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_544

    .line 544
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_552
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59b

    .line 547
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 553
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 555
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59d

    .line 556
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 562
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_57d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 563
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 564
    .restart local v14    # "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v14, :cond_59f

    .line 566
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    :goto_598
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 550
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg3":I
    .end local v14    # "_result":Landroid/content/SyncStatusInfo;
    :cond_59b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_569

    .line 559
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_59d
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_57d

    .line 570
    .restart local v6    # "_arg3":I
    .restart local v14    # "_result":Landroid/content/SyncStatusInfo;
    :cond_59f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_598

    .line 576
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg3":I
    .end local v14    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_5a6
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e5

    .line 579
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 585
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_5bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 587
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e7

    .line 588
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 593
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_5d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v14

    .line 594
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v14, :cond_5e9

    const/4 v2, 0x1

    :goto_5dd
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 582
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Z
    :cond_5e5
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_5bd

    .line 591
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_5e7
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_5d1

    .line 595
    .restart local v14    # "_result":Z
    :cond_5e9
    const/4 v2, 0x0

    goto :goto_5dd

    .line 600
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v14    # "_result":Z
    :sswitch_5eb
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62e

    .line 603
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 609
    .restart local v3    # "_arg0":Landroid/accounts/Account;
    :goto_602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_630

    .line 612
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 618
    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    :goto_616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 619
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v14

    .line 620
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v14, :cond_632

    const/4 v2, 0x1

    :goto_626
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 606
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg3":I
    .end local v14    # "_result":Z
    :cond_62e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_602

    .line 615
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_630
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/content/ComponentName;
    goto :goto_616

    .line 621
    .restart local v6    # "_arg3":I
    .restart local v14    # "_result":Z
    :cond_632
    const/4 v2, 0x0

    goto :goto_626

    .line 626
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg3":I
    .end local v14    # "_result":Z
    :sswitch_634
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v4

    .line 631
    .local v4, "_arg1":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 637
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ISyncStatusObserver;
    :sswitch_652
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v3

    .line 640
    .local v3, "_arg0":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 646
    .end local v3    # "_arg0":Landroid/content/ISyncStatusObserver;
    :sswitch_66c
    const-string v2, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69a

    .line 649
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 655
    .local v3, "_arg0":Landroid/accounts/Account;
    :goto_683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 659
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 660
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/IContentService$Stub;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 652
    .end local v3    # "_arg0":Landroid/accounts/Account;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :cond_69a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/accounts/Account;
    goto :goto_683

    .line 41
    :sswitch_data_69c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_62
        0x4 -> :sswitch_a4
        0x5 -> :sswitch_de
        0x6 -> :sswitch_102
        0x7 -> :sswitch_12a
        0x8 -> :sswitch_164
        0x9 -> :sswitch_1a2
        0xa -> :sswitch_1c6
        0xb -> :sswitch_1f9
        0xc -> :sswitch_230
        0xd -> :sswitch_261
        0xe -> :sswitch_296
        0xf -> :sswitch_2d6
        0x10 -> :sswitch_317
        0x11 -> :sswitch_351
        0x12 -> :sswitch_37f
        0x13 -> :sswitch_3b1
        0x14 -> :sswitch_3dd
        0x15 -> :sswitch_3f8
        0x16 -> :sswitch_417
        0x17 -> :sswitch_432
        0x18 -> :sswitch_453
        0x19 -> :sswitch_46b
        0x1a -> :sswitch_489
        0x1b -> :sswitch_4a0
        0x1c -> :sswitch_4bd
        0x1d -> :sswitch_502
        0x1e -> :sswitch_552
        0x1f -> :sswitch_5a6
        0x20 -> :sswitch_5eb
        0x21 -> :sswitch_634
        0x22 -> :sswitch_652
        0x23 -> :sswitch_66c
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
