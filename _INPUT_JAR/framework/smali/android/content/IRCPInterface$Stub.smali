.class public abstract Landroid/content/IRCPInterface$Stub;
.super Landroid/os/Binder;
.source "IRCPInterface.java"

# interfaces
.implements Landroid/content/IRCPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRCPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRCPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IRCPInterface"

.field static final TRANSACTION_cancel:I = 0xc

.field static final TRANSACTION_cancelCopyChunks:I = 0xb

.field static final TRANSACTION_copyChunks:I = 0xa

.field static final TRANSACTION_copyFile:I = 0x4

.field static final TRANSACTION_copyFiles:I = 0x1

.field static final TRANSACTION_getErrorMessage:I = 0x6

.field static final TRANSACTION_getFileInfo:I = 0x9

.field static final TRANSACTION_getFiles:I = 0x8

.field static final TRANSACTION_isFileExist:I = 0x7

.field static final TRANSACTION_moveFile:I = 0x5

.field static final TRANSACTION_moveFiles:I = 0x2

.field static final TRANSACTION_moveFilesForApp:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.IRCPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/content/IRCPInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;
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
    const-string v1, "android.content.IRCPInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/IRCPInterface;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/content/IRCPInterface;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/content/IRCPInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IRCPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 32
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
    sparse-switch p1, :sswitch_data_1fa

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 43
    :sswitch_8
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 52
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 54
    .local v6, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 58
    .local v8, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterfaceCallback;

    move-result-object v9

    .local v9, "_arg4":Landroid/content/IRCPInterfaceCallback;
    move-object/from16 v4, p0

    .line 59
    invoke-virtual/range {v4 .. v9}, Landroid/content/IRCPInterface$Stub;->copyFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J

    move-result-wide v24

    .line 60
    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    const/4 v4, 0x1

    goto :goto_7

    .line 66
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    .end local v24    # "_result":J
    :sswitch_42
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 70
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 72
    .restart local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 74
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 76
    .restart local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IRCPInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterfaceCallback;

    move-result-object v9

    .restart local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    move-object/from16 v4, p0

    .line 77
    invoke-virtual/range {v4 .. v9}, Landroid/content/IRCPInterface$Stub;->moveFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J

    move-result-wide v24

    .line 78
    .restart local v24    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    const/4 v4, 0x1

    goto :goto_7

    .line 84
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg4":Landroid/content/IRCPInterfaceCallback;
    .end local v24    # "_result":J
    :sswitch_73
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 88
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 90
    .restart local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 91
    .local v21, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/IRCPInterface$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v24

    .line 92
    .restart local v24    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 98
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "_result":J
    :sswitch_9b
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v7, v14}, Landroid/content/IRCPInterface$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .line 108
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 114
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_c5
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 120
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 122
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 123
    .restart local v14    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v7, v14}, Landroid/content/IRCPInterface$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .line 124
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 130
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_ef
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 133
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/IRCPInterface$Stub;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v24

    .line 134
    .local v24, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 140
    .end local v5    # "_arg0":I
    .end local v24    # "_result":Ljava/lang/String;
    :sswitch_10d
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 145
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v24

    .line 146
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v24, :cond_130

    const/4 v4, 0x1

    :goto_128
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 147
    :cond_130
    const/4 v4, 0x0

    goto :goto_128

    .line 152
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_132
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 157
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v26

    .line 158
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 160
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 164
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_154
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 169
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/IRCPInterface$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v24

    .line 170
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v24, :cond_17f

    .line 172
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :goto_17c
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 176
    :cond_17f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17c

    .line 182
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_186
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 186
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 190
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 192
    .restart local v14    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 194
    .local v15, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 196
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 198
    .local v18, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c6

    const/16 v20, 0x1

    .local v20, "_arg7":Z
    :goto_1b1
    move-object/from16 v10, p0

    move v11, v5

    move v13, v7

    .line 199
    invoke-virtual/range {v10 .. v20}, Landroid/content/IRCPInterface$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v24

    .line 200
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 198
    .end local v20    # "_arg7":Z
    .end local v24    # "_result":I
    :cond_1c6
    const/16 v20, 0x0

    goto :goto_1b1

    .line 206
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":J
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":J
    :sswitch_1c9
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 209
    .local v22, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IRCPInterface$Stub;->cancelCopyChunks(J)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 215
    .end local v22    # "_arg0":J
    :sswitch_1e1
    const-string v4, "android.content.IRCPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 218
    .restart local v22    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IRCPInterface$Stub;->cancel(J)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 39
    nop

    :sswitch_data_1fa
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_42
        0x3 -> :sswitch_73
        0x4 -> :sswitch_9b
        0x5 -> :sswitch_c5
        0x6 -> :sswitch_ef
        0x7 -> :sswitch_10d
        0x8 -> :sswitch_132
        0x9 -> :sswitch_154
        0xa -> :sswitch_186
        0xb -> :sswitch_1c9
        0xc -> :sswitch_1e1
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
