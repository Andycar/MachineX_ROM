.class public abstract Landroid/os/IRCPManager$Stub;
.super Landroid/os/Binder;
.source "IRCPManager.java"

# interfaces
.implements Landroid/os/IRCPManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRCPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRCPManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IRCPManager"

.field static final TRANSACTION_cancelCopyChunks:I = 0x1c

.field static final TRANSACTION_changePermissionMigration:I = 0x16

.field static final TRANSACTION_checkSAccount:I = 0x22

.field static final TRANSACTION_checkSAccountPassword:I = 0x23

.field static final TRANSACTION_copyChunks:I = 0x1b

.field static final TRANSACTION_copyClipboardFile:I = 0xc

.field static final TRANSACTION_copyFile:I = 0x14

.field static final TRANSACTION_copyFileInternal:I = 0x13

.field static final TRANSACTION_deleteClipboardFile:I = 0x1d

.field static final TRANSACTION_deleteFile:I = 0x19

.field static final TRANSACTION_exchangeData:I = 0x1f

.field static final TRANSACTION_executeCommandForPersona:I = 0x8

.field static final TRANSACTION_getCallerInfo:I = 0xd

.field static final TRANSACTION_getFileInfo:I = 0x1a

.field static final TRANSACTION_getFiles:I = 0x18

.field static final TRANSACTION_getRCPInterface:I = 0x11

.field static final TRANSACTION_getRCPProxy:I = 0xe

.field static final TRANSACTION_getUsersToSyncFrom:I = 0xb

.field static final TRANSACTION_handleShortcut:I = 0x21

.field static final TRANSACTION_isFileExist:I = 0x17

.field static final TRANSACTION_moveFile:I = 0x12

.field static final TRANSACTION_moveFilesForApp:I = 0x15

.field static final TRANSACTION_queryAllProviders:I = 0x2

.field static final TRANSACTION_queryProvider:I = 0x1

.field static final TRANSACTION_refreshClipboard:I = 0x6

.field static final TRANSACTION_registerCommandExe:I = 0x5

.field static final TRANSACTION_registerExchangeData:I = 0x1e

.field static final TRANSACTION_registerMonitorCb:I = 0x20

.field static final TRANSACTION_registerProvider:I = 0x3

.field static final TRANSACTION_registerRCPGlobalContactsDir:I = 0xf

.field static final TRANSACTION_registerRCPInterface:I = 0x10

.field static final TRANSACTION_registerSync:I = 0x4

.field static final TRANSACTION_saveSharedSandbox:I = 0xa

.field static final TRANSACTION_setupClipbardSandbox:I = 0x9

.field static final TRANSACTION_switchPersona:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IRCPManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRCPManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IRCPManager;
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
    const-string v1, "android.os.IRCPManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IRCPManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IRCPManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IRCPManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IRCPManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 36
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
    sparse-switch p1, :sswitch_data_524

    .line 515
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 43
    :sswitch_8
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 63
    invoke-virtual/range {v4 .. v11}, Landroid/os/IRCPManager$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v28

    .line 64
    .local v28, "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v28, :cond_4f

    .line 66
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_4d
    const/4 v4, 0x1

    goto :goto_7

    .line 70
    :cond_4f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 76
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":[Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v28    # "_result":Landroid/content/CustomCursor;
    :sswitch_56
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 84
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 86
    .restart local v8    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 88
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 90
    .restart local v10    # "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 91
    invoke-virtual/range {v4 .. v11}, Landroid/os/IRCPManager$Stub;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 92
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 98
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":[Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":[Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    :sswitch_8c
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IProviderCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;

    move-result-object v6

    .line 103
    .local v6, "_arg1":Landroid/content/IProviderCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 109
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/IProviderCallBack;
    :sswitch_aa
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncCallBack;

    move-result-object v5

    .line 112
    .local v5, "_arg0":Landroid/content/ISyncCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->registerSync(Landroid/content/ISyncCallBack;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 118
    .end local v5    # "_arg0":Landroid/content/ISyncCallBack;
    :sswitch_c4
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ICommandExeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ICommandExeCallBack;

    move-result-object v5

    .line 121
    .local v5, "_arg0":Landroid/content/ICommandExeCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->registerCommandExe(Landroid/content/ICommandExeCallBack;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 127
    .end local v5    # "_arg0":Landroid/content/ICommandExeCallBack;
    :sswitch_de
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->refreshClipboard()V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 134
    :sswitch_ee
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 137
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->switchPersona(I)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 143
    .end local v5    # "_arg0":I
    :sswitch_104
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_126

    .line 146
    sget-object v4, Landroid/app/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Command;

    .line 151
    .local v5, "_arg0":Landroid/app/Command;
    :goto_11b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->executeCommandForPersona(Landroid/app/Command;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 149
    .end local v5    # "_arg0":Landroid/app/Command;
    :cond_126
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/app/Command;
    goto :goto_11b

    .line 157
    .end local v5    # "_arg0":Landroid/app/Command;
    :sswitch_128
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->setupClipbardSandbox()V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 164
    :sswitch_138
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 167
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->saveSharedSandbox(I)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 173
    .end local v5    # "_arg0":I
    :sswitch_14e
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->getUsersToSyncFrom(Ljava/lang/String;)[I

    move-result-object v28

    .line 177
    .local v28, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 183
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":[I
    :sswitch_16c
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 190
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/IRCPManager$Stub;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v28

    .line 191
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v28, :cond_193

    const/4 v4, 0x1

    :goto_18b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 192
    :cond_193
    const/4 v4, 0x0

    goto :goto_18b

    .line 197
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v28    # "_result":Z
    :sswitch_195
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v28

    .line 201
    .local v28, "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v28, :cond_1bc

    .line 203
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    :goto_1b9
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 207
    :cond_1bc
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b9

    .line 213
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Landroid/content/CustomCursor;
    :sswitch_1c3
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v28

    .line 215
    .local v28, "_result":Landroid/content/IRCPGlobalContactsDir;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v28, :cond_1df

    invoke-interface/range {v28 .. v28}, Landroid/content/IRCPGlobalContactsDir;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1d7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 217
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 216
    :cond_1df
    const/4 v4, 0x0

    goto :goto_1d7

    .line 221
    .end local v28    # "_result":Landroid/content/IRCPGlobalContactsDir;
    :sswitch_1e1
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPGlobalContactsDir$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPGlobalContactsDir;

    move-result-object v5

    .line 224
    .local v5, "_arg0":Landroid/content/IRCPGlobalContactsDir;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 230
    .end local v5    # "_arg0":Landroid/content/IRCPGlobalContactsDir;
    :sswitch_1fb
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;

    move-result-object v5

    .line 233
    .local v5, "_arg0":Landroid/content/IRCPInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->registerRCPInterface(Landroid/content/IRCPInterface;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 239
    .end local v5    # "_arg0":Landroid/content/IRCPInterface;
    :sswitch_215
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v28

    .line 241
    .local v28, "_result":Landroid/content/IRCPInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v28, :cond_231

    invoke-interface/range {v28 .. v28}, Landroid/content/IRCPInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_229
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 243
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 242
    :cond_231
    const/4 v4, 0x0

    goto :goto_229

    .line 247
    .end local v28    # "_result":Landroid/content/IRCPInterface;
    :sswitch_233
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 251
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 253
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 255
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/IRCPManager$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v28

    .line 257
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 263
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_25d
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 267
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 271
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 272
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/IRCPManager$Stub;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v28

    .line 273
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 279
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_287
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 283
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 287
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 288
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/IRCPManager$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v28

    .line 289
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 295
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_2b1
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 299
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 301
    .local v23, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 302
    .local v26, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/IRCPManager$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v28

    .line 303
    .local v28, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 309
    .end local v5    # "_arg0":I
    .end local v23    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "_result":J
    :sswitch_2db
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 315
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 317
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 318
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/IRCPManager$Stub;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v28

    .line 319
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 325
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v28    # "_result":I
    :sswitch_305
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v28

    .line 331
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v28, :cond_328

    const/4 v4, 0x1

    :goto_320
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 332
    :cond_328
    const/4 v4, 0x0

    goto :goto_320

    .line 337
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_32a
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 342
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v30

    .line 343
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 345
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 349
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_34c
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 354
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->deleteFile(Ljava/lang/String;I)Z

    move-result v28

    .line 355
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v28, :cond_36f

    const/4 v4, 0x1

    :goto_367
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 356
    :cond_36f
    const/4 v4, 0x0

    goto :goto_367

    .line 361
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_371
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 365
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 366
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v28

    .line 367
    .local v28, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v28, :cond_39c

    .line 369
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    :goto_399
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 373
    :cond_39c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_399

    .line 379
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v28    # "_result":Landroid/os/Bundle;
    :sswitch_3a3
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 383
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 387
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 391
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 393
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 395
    .local v20, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e8

    const/16 v22, 0x1

    .local v22, "_arg7":Z
    :goto_3ce
    move-object/from16 v12, p0

    move v13, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v16, v8

    move/from16 v19, v10

    .line 396
    invoke-virtual/range {v12 .. v22}, Landroid/os/IRCPManager$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v28

    .line 397
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 395
    .end local v22    # "_arg7":Z
    .end local v28    # "_result":I
    :cond_3e8
    const/16 v22, 0x0

    goto :goto_3ce

    .line 403
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v17    # "_arg4":J
    .end local v20    # "_arg6":J
    :sswitch_3eb
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 406
    .local v24, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/IRCPManager$Stub;->cancelCopyChunks(J)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 412
    .end local v24    # "_arg0":J
    :sswitch_403
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IRCPManager$Stub;->deleteClipboardFile(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 421
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_419
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 425
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v6

    .line 426
    .local v6, "_arg1":Landroid/os/IRunnableCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v28

    .line 427
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v28, :cond_440

    const/4 v4, 0x1

    :goto_438
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 428
    :cond_440
    const/4 v4, 0x0

    goto :goto_438

    .line 433
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v28    # "_result":Z
    :sswitch_442
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 437
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 439
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47d

    .line 440
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 445
    .local v7, "_arg2":Landroid/os/Bundle;
    :goto_461
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/IRCPManager$Stub;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v28

    .line 446
    .local v28, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v28, :cond_47f

    .line 448
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 454
    :goto_47a
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 443
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v28    # "_result":Landroid/os/Bundle;
    :cond_47d
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_461

    .line 452
    .restart local v28    # "_result":Landroid/os/Bundle;
    :cond_47f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47a

    .line 458
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v28    # "_result":Landroid/os/Bundle;
    :sswitch_486
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v6

    .line 463
    .local v6, "_arg1":Landroid/os/IRunnableCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v28

    .line 464
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v28, :cond_4ad

    const/4 v4, 0x1

    :goto_4a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 465
    :cond_4ad
    const/4 v4, 0x0

    goto :goto_4a5

    .line 470
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v28    # "_result":Z
    :sswitch_4af
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 474
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e5

    .line 479
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 485
    .local v8, "_arg3":Landroid/graphics/Bitmap;
    :goto_4d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 487
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 488
    invoke-virtual/range {v4 .. v10}, Landroid/os/IRCPManager$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 482
    .end local v8    # "_arg3":Landroid/graphics/Bitmap;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_4e5
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/graphics/Bitmap;
    goto :goto_4d2

    .line 494
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/graphics/Bitmap;
    :sswitch_4e7
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v6

    .line 499
    .local v6, "_arg1":Landroid/content/ISAccountCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 505
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/ISAccountCallback;
    :sswitch_505
    const-string v4, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v6

    .line 510
    .restart local v6    # "_arg1":Landroid/content/ISAccountCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/IRCPManager$Stub;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 39
    nop

    :sswitch_data_524
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_56
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_aa
        0x5 -> :sswitch_c4
        0x6 -> :sswitch_de
        0x7 -> :sswitch_ee
        0x8 -> :sswitch_104
        0x9 -> :sswitch_128
        0xa -> :sswitch_138
        0xb -> :sswitch_14e
        0xc -> :sswitch_16c
        0xd -> :sswitch_195
        0xe -> :sswitch_1c3
        0xf -> :sswitch_1e1
        0x10 -> :sswitch_1fb
        0x11 -> :sswitch_215
        0x12 -> :sswitch_233
        0x13 -> :sswitch_25d
        0x14 -> :sswitch_287
        0x15 -> :sswitch_2b1
        0x16 -> :sswitch_2db
        0x17 -> :sswitch_305
        0x18 -> :sswitch_32a
        0x19 -> :sswitch_34c
        0x1a -> :sswitch_371
        0x1b -> :sswitch_3a3
        0x1c -> :sswitch_3eb
        0x1d -> :sswitch_403
        0x1e -> :sswitch_419
        0x1f -> :sswitch_442
        0x20 -> :sswitch_486
        0x21 -> :sswitch_4af
        0x22 -> :sswitch_4e7
        0x23 -> :sswitch_505
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
