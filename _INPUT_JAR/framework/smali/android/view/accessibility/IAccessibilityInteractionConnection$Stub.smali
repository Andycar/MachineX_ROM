.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final TRANSACTION_computeClickPointInScreen:I = 0x7

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final TRANSACTION_findFocus:I = 0x4

.field static final TRANSACTION_focusSearch:I = 0x5

.field static final TRANSACTION_performAccessibilityAction:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 40
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
    .line 44
    sparse-switch p1, :sswitch_data_288

    .line 277
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 48
    :sswitch_8
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_7

    .line 53
    :sswitch_11
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 57
    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5b

    .line 58
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .line 64
    .local v5, "_arg1":Landroid/graphics/Region;
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 68
    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 72
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 74
    .local v10, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d

    .line 75
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MagnificationSpec;

    .local v12, "_arg7":Landroid/view/MagnificationSpec;
    :goto_54
    move-object/from16 v2, p0

    .line 80
    invoke-virtual/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 81
    const/4 v2, 0x1

    goto :goto_7

    .line 61
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :cond_5b
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Region;
    goto :goto_2c

    .line 78
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":J
    :cond_5d
    const/4 v12, 0x0

    .restart local v12    # "_arg7":Landroid/view/MagnificationSpec;
    goto :goto_54

    .line 85
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :sswitch_5f
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 89
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bb

    .line 92
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 98
    .local v6, "_arg2":Landroid/graphics/Region;
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 100
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 102
    .local v8, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 104
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 106
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 108
    .local v22, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bd

    .line 109
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .local v24, "_arg8":Landroid/view/MagnificationSpec;
    :goto_a6
    move-object/from16 v13, p0

    move-wide v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 114
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 95
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_bb
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_7e

    .line 112
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_bd
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_a6

    .line 119
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_c0
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 123
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11c

    .line 126
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 132
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 136
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 138
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 140
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 142
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11e

    .line 143
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_107
    move-object/from16 v13, p0

    move-wide v14, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 148
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 149
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 129
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_11c
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_df

    .line 146
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_11e
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_107

    .line 153
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_121
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 157
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17d

    .line 160
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 166
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 168
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 170
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 172
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 174
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 176
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17f

    .line 177
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_168
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 182
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 183
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 163
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_17d
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_140

    .line 180
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_17f
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_168

    .line 187
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_182
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 191
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 193
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1de

    .line 194
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .line 200
    .restart local v6    # "_arg2":Landroid/graphics/Region;
    :goto_1a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 202
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 204
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 206
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 208
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 210
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e0

    .line 211
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :goto_1c9
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 216
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 217
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 197
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :cond_1de
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/graphics/Region;
    goto :goto_1a1

    .line 214
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_1e0
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_1c9

    .line 221
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/graphics/Region;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_1e3
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 225
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 227
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22f

    .line 228
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 234
    .local v6, "_arg2":Landroid/os/Bundle;
    :goto_202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 236
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v8

    .line 238
    .restart local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 240
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 242
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 243
    invoke-virtual/range {v13 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 244
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 231
    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_22f
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_202

    .line 248
    .end local v3    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/Bundle;
    :sswitch_231
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 252
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_284

    .line 253
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    .line 259
    .local v5, "_arg1":Landroid/graphics/Region;
    :goto_24c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .line 263
    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 265
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 267
    .local v32, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_286

    .line 268
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MagnificationSpec;

    .local v10, "_arg6":Landroid/view/MagnificationSpec;
    :goto_270
    move-object/from16 v25, p0

    move-wide/from16 v26, v3

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v34, v10

    .line 273
    invoke-virtual/range {v25 .. v34}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->computeClickPointInScreen(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/view/MagnificationSpec;)V

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 256
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v10    # "_arg6":Landroid/view/MagnificationSpec;
    .end local v32    # "_arg5":J
    :cond_284
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Region;
    goto :goto_24c

    .line 271
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v32    # "_arg5":J
    :cond_286
    const/4 v10, 0x0

    .restart local v10    # "_arg6":Landroid/view/MagnificationSpec;
    goto :goto_270

    .line 44
    :sswitch_data_288
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_5f
        0x3 -> :sswitch_c0
        0x4 -> :sswitch_121
        0x5 -> :sswitch_182
        0x6 -> :sswitch_1e3
        0x7 -> :sswitch_231
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
