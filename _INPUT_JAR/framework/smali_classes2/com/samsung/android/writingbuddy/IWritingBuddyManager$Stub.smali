.class public abstract Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;
.super Landroid/os/Binder;
.source "IWritingBuddyManager.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/IWritingBuddyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/IWritingBuddyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.writingbuddy.IWritingBuddyManager"

.field static final TRANSACTION_dismiss:I = 0x3

.field static final TRANSACTION_getImage:I = 0x6

.field static final TRANSACTION_isShowing:I = 0x7

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_showPopup:I = 0x8

.field static final TRANSACTION_showTemplate:I = 0x2

.field static final TRANSACTION_updateDialog:I = 0x5

.field static final TRANSACTION_updatePosition:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyManager;
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
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 19
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
    sparse-switch p1, :sswitch_data_1fc

    .line 247
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 45
    :sswitch_8
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_7

    .line 50
    :sswitch_11
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 56
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 58
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 60
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_85

    .line 61
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 67
    .local v6, "_arg4":Landroid/graphics/Rect;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_87

    .line 68
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 74
    .local v7, "_arg5":Landroid/graphics/Rect;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_89

    .line 75
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 81
    .local v8, "_arg6":Landroid/graphics/Rect;
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8b

    .line 82
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/ExtractedText;

    .line 88
    .local v9, "_arg7":Landroid/view/inputmethod/ExtractedText;
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8d

    .line 89
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/EditorInfo;

    .line 95
    .local v10, "_arg8":Landroid/view/inputmethod/EditorInfo;
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg9":I
    move-object v1, p0

    .line 96
    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v1, 0x1

    goto :goto_7

    .line 64
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/graphics/Rect;
    .end local v9    # "_arg7":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "_arg8":Landroid/view/inputmethod/EditorInfo;
    .end local v11    # "_arg9":I
    :cond_85
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    goto :goto_38

    .line 71
    :cond_87
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    goto :goto_48

    .line 78
    :cond_89
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/graphics/Rect;
    goto :goto_58

    .line 85
    :cond_8b
    const/4 v9, 0x0

    .restart local v9    # "_arg7":Landroid/view/inputmethod/ExtractedText;
    goto :goto_68

    .line 92
    :cond_8d
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/view/inputmethod/EditorInfo;
    goto :goto_78

    .line 102
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/graphics/Rect;
    .end local v9    # "_arg7":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "_arg8":Landroid/view/inputmethod/EditorInfo;
    :sswitch_8f
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 108
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 110
    .restart local v4    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 112
    .restart local v5    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_108

    .line 113
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 119
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10a

    .line 120
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 126
    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10c

    .line 127
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 133
    .restart local v8    # "_arg6":Landroid/graphics/Rect;
    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 135
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10e

    .line 136
    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/ExtractedText;

    .line 142
    .local v10, "_arg8":Landroid/view/inputmethod/ExtractedText;
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_110

    .line 143
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    .line 149
    .local v11, "_arg9":Landroid/view/inputmethod/EditorInfo;
    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg10":I
    move-object v1, p0

    .line 150
    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 116
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/graphics/Rect;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "_arg9":Landroid/view/inputmethod/EditorInfo;
    .end local v12    # "_arg10":I
    :cond_108
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    goto :goto_b6

    .line 123
    :cond_10a
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    goto :goto_c6

    .line 130
    :cond_10c
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/graphics/Rect;
    goto :goto_d6

    .line 139
    .restart local v9    # "_arg7":I
    :cond_10e
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/view/inputmethod/ExtractedText;
    goto :goto_ea

    .line 146
    :cond_110
    const/4 v11, 0x0

    .restart local v11    # "_arg9":Landroid/view/inputmethod/EditorInfo;
    goto :goto_fa

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/graphics/Rect;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/view/inputmethod/ExtractedText;
    .end local v11    # "_arg9":Landroid/view/inputmethod/EditorInfo;
    :sswitch_112
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12d

    const/4 v3, 0x1

    .line 161
    .local v3, "_arg1":Z
    :goto_124
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->dismiss(IZ)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 160
    .end local v3    # "_arg1":Z
    :cond_12d
    const/4 v3, 0x0

    goto :goto_124

    .line 167
    .end local v2    # "_arg0":I
    :sswitch_12f
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_163

    .line 172
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 178
    .local v3, "_arg1":Landroid/graphics/Rect;
    :goto_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_165

    .line 179
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 184
    .local v4, "_arg2":Landroid/graphics/Rect;
    :goto_15a
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 175
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :cond_163
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    goto :goto_14a

    .line 182
    :cond_165
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/graphics/Rect;
    goto :goto_15a

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :sswitch_167
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19b

    .line 195
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 201
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19d

    .line 202
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 207
    .restart local v4    # "_arg2":Landroid/graphics/Rect;
    :goto_192
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 198
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :cond_19b
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    goto :goto_182

    .line 205
    :cond_19d
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/graphics/Rect;
    goto :goto_192

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :sswitch_19f
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->getImage(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 217
    .local v13, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v13, :cond_1c2

    .line 219
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_1bf
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 223
    :cond_1c2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1bf

    .line 229
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_1c9
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->isShowing()Z

    move-result v13

    .line 231
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v13, :cond_1e2

    const/4 v1, 0x1

    :goto_1da
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 232
    :cond_1e2
    const/4 v1, 0x0

    goto :goto_1da

    .line 237
    .end local v13    # "_result":Z
    :sswitch_1e4
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->showPopup(II)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 41
    :sswitch_data_1fc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_8f
        0x3 -> :sswitch_112
        0x4 -> :sswitch_12f
        0x5 -> :sswitch_167
        0x6 -> :sswitch_19f
        0x7 -> :sswitch_1c9
        0x8 -> :sswitch_1e4
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
