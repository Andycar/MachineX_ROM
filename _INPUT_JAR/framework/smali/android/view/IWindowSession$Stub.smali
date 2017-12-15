.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getContentFrame:I = 0x1d

.field static final TRANSACTION_getCoverStateSwitch:I = 0x1e

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1c

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1b

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDeferredDestroy:I = 0x7

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x18

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setUniverseTransform:I = 0x1a

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x19

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 25
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
    sparse-switch p1, :sswitch_data_700

    .line 679
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 47
    :sswitch_8
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 56
    .local v3, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    .line 59
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v5, "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 67
    .local v6, "_arg3":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v7, "_arg4":Landroid/graphics/Rect;
    new-instance v8, Landroid/view/InputChannel;

    invoke-direct {v8}, Landroid/view/InputChannel;-><init>()V

    .local v8, "_arg5":Landroid/view/InputChannel;
    move-object/from16 v2, p0

    .line 70
    invoke-virtual/range {v2 .. v8}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v19

    .line 71
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    if-eqz v7, :cond_72

    .line 74
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    :goto_60
    if-eqz v8, :cond_79

    .line 81
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_6e
    const/4 v2, 0x1

    goto :goto_7

    .line 62
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/view/InputChannel;
    .end local v19    # "_result":I
    :cond_70
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_34

    .line 78
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    .restart local v8    # "_arg5":Landroid/view/InputChannel;
    .restart local v19    # "_result":I
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 85
    :cond_79
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6e

    .line 91
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/view/InputChannel;
    .end local v19    # "_result":I
    :sswitch_80
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e4

    .line 98
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 104
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 106
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 108
    .local v7, "_arg4":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v8, "_arg5":Landroid/graphics/Rect;
    new-instance v9, Landroid/view/InputChannel;

    invoke-direct {v9}, Landroid/view/InputChannel;-><init>()V

    .local v9, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v2, p0

    .line 111
    invoke-virtual/range {v2 .. v9}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v19

    .line 112
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    if-eqz v8, :cond_e6

    .line 115
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_d3
    if-eqz v9, :cond_ed

    .line 122
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_e1
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 101
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .end local v19    # "_result":I
    :cond_e4
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_a3

    .line 119
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v9    # "_arg6":Landroid/view/InputChannel;
    .restart local v19    # "_result":I
    :cond_e6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d3

    .line 126
    :cond_ed
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e1

    .line 132
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .end local v19    # "_result":I
    :sswitch_f4
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 136
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 138
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_141

    .line 139
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 145
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    .restart local v6    # "_arg3":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, "_arg4":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 148
    invoke-virtual/range {v2 .. v7}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v19

    .line 149
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    if-eqz v7, :cond_143

    .line 152
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_13e
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 142
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :cond_141
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_117

    .line 156
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    .restart local v19    # "_result":I
    :cond_143
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13e

    .line 162
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :sswitch_14a
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 166
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 168
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19b

    .line 169
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 175
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_16d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 177
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 179
    .local v7, "_arg4":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 180
    invoke-virtual/range {v2 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I

    move-result v19

    .line 181
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    if-eqz v8, :cond_19d

    .line 184
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    :goto_198
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 172
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :cond_19b
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_16d

    .line 188
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v19    # "_result":I
    :cond_19d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_198

    .line 194
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :sswitch_1a4
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 203
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_1be
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 207
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b5

    .line 210
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 216
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 218
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 222
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 224
    .local v9, "_arg6":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v10, "_arg7":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v11, "_arg8":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v12, "_arg9":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 232
    .local v13, "_arg10":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 234
    .local v14, "_arg11":Landroid/graphics/Rect;
    new-instance v15, Landroid/content/res/Configuration;

    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 236
    .local v15, "_arg12":Landroid/content/res/Configuration;
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 238
    .local v16, "_arg13":Landroid/view/Surface;
    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    .line 240
    .local v17, "_arg14":Landroid/graphics/PointF;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .local v18, "_arg15":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 241
    invoke-virtual/range {v2 .. v18}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v19

    .line 242
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    if-eqz v10, :cond_2b8

    .line 245
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_23c
    if-eqz v11, :cond_2c0

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    :goto_24a
    if-eqz v12, :cond_2c7

    .line 259
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_258
    if-eqz v13, :cond_2ce

    .line 266
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_266
    if-eqz v14, :cond_2d5

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    :goto_274
    if-eqz v15, :cond_2dc

    .line 280
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_282
    if-eqz v16, :cond_2e3

    .line 287
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_292
    if-eqz v17, :cond_2ea

    .line 294
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    :goto_2a2
    if-eqz v18, :cond_2f1

    .line 301
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    :goto_2b2
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 213
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/graphics/Rect;
    .end local v12    # "_arg9":Landroid/graphics/Rect;
    .end local v13    # "_arg10":Landroid/graphics/Rect;
    .end local v14    # "_arg11":Landroid/graphics/Rect;
    .end local v15    # "_arg12":Landroid/content/res/Configuration;
    .end local v16    # "_arg13":Landroid/view/Surface;
    .end local v17    # "_arg14":Landroid/graphics/PointF;
    .end local v18    # "_arg15":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :cond_2b5
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_1e1

    .line 249
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":I
    .restart local v9    # "_arg6":I
    .restart local v10    # "_arg7":Landroid/graphics/Rect;
    .restart local v11    # "_arg8":Landroid/graphics/Rect;
    .restart local v12    # "_arg9":Landroid/graphics/Rect;
    .restart local v13    # "_arg10":Landroid/graphics/Rect;
    .restart local v14    # "_arg11":Landroid/graphics/Rect;
    .restart local v15    # "_arg12":Landroid/content/res/Configuration;
    .restart local v16    # "_arg13":Landroid/view/Surface;
    .restart local v17    # "_arg14":Landroid/graphics/PointF;
    .restart local v18    # "_arg15":Landroid/graphics/Rect;
    .restart local v19    # "_result":I
    :cond_2b8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_23c

    .line 256
    :cond_2c0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24a

    .line 263
    :cond_2c7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_258

    .line 270
    :cond_2ce
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_266

    .line 277
    :cond_2d5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_274

    .line 284
    :cond_2dc
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_282

    .line 291
    :cond_2e3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_292

    .line 298
    :cond_2ea
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a2

    .line 305
    :cond_2f1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b2

    .line 311
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/graphics/Rect;
    .end local v12    # "_arg9":Landroid/graphics/Rect;
    .end local v13    # "_arg10":Landroid/graphics/Rect;
    .end local v14    # "_arg11":Landroid/graphics/Rect;
    .end local v15    # "_arg12":Landroid/content/res/Configuration;
    .end local v16    # "_arg13":Landroid/view/Surface;
    .end local v17    # "_arg14":Landroid/graphics/PointF;
    .end local v18    # "_arg15":Landroid/graphics/Rect;
    .end local v19    # "_result":I
    :sswitch_2f8
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 314
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 320
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_312
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 323
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v19

    .line 324
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v19, :cond_335

    const/4 v2, 0x1

    :goto_32d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 325
    :cond_335
    const/4 v2, 0x0

    goto :goto_32d

    .line 330
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v19    # "_result":Z
    :sswitch_337
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 334
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_361

    .line 335
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    .line 340
    .local v4, "_arg1":Landroid/graphics/Region;
    :goto_356
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 338
    .end local v4    # "_arg1":Landroid/graphics/Region;
    :cond_361
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/graphics/Region;
    goto :goto_356

    .line 346
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Region;
    :sswitch_363
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 350
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b1

    .line 353
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 359
    .local v5, "_arg2":Landroid/graphics/Rect;
    :goto_386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b3

    .line 360
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 366
    .local v6, "_arg3":Landroid/graphics/Rect;
    :goto_396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b5

    .line 367
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .local v7, "_arg4":Landroid/graphics/Region;
    :goto_3a6
    move-object/from16 v2, p0

    .line 372
    invoke-virtual/range {v2 .. v7}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 356
    .end local v5    # "_arg2":Landroid/graphics/Rect;
    .end local v6    # "_arg3":Landroid/graphics/Rect;
    .end local v7    # "_arg4":Landroid/graphics/Region;
    :cond_3b1
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/graphics/Rect;
    goto :goto_386

    .line 363
    :cond_3b3
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/graphics/Rect;
    goto :goto_396

    .line 370
    :cond_3b5
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/graphics/Region;
    goto :goto_3a6

    .line 378
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/graphics/Rect;
    .end local v6    # "_arg3":Landroid/graphics/Rect;
    .end local v7    # "_arg4":Landroid/graphics/Region;
    :sswitch_3b7
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 382
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 383
    .local v4, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v4, :cond_3e4

    .line 386
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 392
    :goto_3e1
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 390
    :cond_3e4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e1

    .line 396
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_3eb
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 399
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 405
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_405
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41e

    const/4 v3, 0x1

    .line 408
    .local v3, "_arg0":Z
    :goto_413
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 407
    .end local v3    # "_arg0":Z
    :cond_41e
    const/4 v3, 0x0

    goto :goto_413

    .line 414
    :sswitch_420
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v19

    .line 416
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v19, :cond_439

    const/4 v2, 0x1

    :goto_431
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 417
    :cond_439
    const/4 v2, 0x0

    goto :goto_431

    .line 422
    .end local v19    # "_result":Z
    :sswitch_43b
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 426
    .local v3, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 428
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_469

    const/4 v5, 0x1

    .line 429
    .local v5, "_arg2":Z
    :goto_455
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v19

    .line 430
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v19, :cond_46b

    const/4 v2, 0x1

    :goto_461
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 428
    .end local v5    # "_arg2":Z
    .end local v19    # "_result":Z
    :cond_469
    const/4 v5, 0x0

    goto :goto_455

    .line 431
    .restart local v5    # "_arg2":Z
    .restart local v19    # "_result":Z
    :cond_46b
    const/4 v2, 0x0

    goto :goto_461

    .line 436
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Z
    .end local v19    # "_result":Z
    :sswitch_46d
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 440
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 442
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 444
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 446
    .local v6, "_arg3":I
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .local v7, "_arg4":Landroid/view/Surface;
    move-object/from16 v2, p0

    .line 447
    invoke-virtual/range {v2 .. v7}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v19

    .line 448
    .local v19, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 450
    if-eqz v7, :cond_4ae

    .line 451
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    :goto_4ab
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 455
    :cond_4ae
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4ab

    .line 461
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/view/Surface;
    .end local v19    # "_result":Landroid/os/IBinder;
    :sswitch_4b5
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 465
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 467
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 469
    .local v5, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 471
    .local v6, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 473
    .local v7, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 475
    .local v8, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4fc

    .line 476
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    .local v9, "_arg6":Landroid/content/ClipData;
    :goto_4e8
    move-object/from16 v2, p0

    .line 481
    invoke-virtual/range {v2 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 482
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v19, :cond_4fe

    const/4 v2, 0x1

    :goto_4f4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 479
    .end local v9    # "_arg6":Landroid/content/ClipData;
    .end local v19    # "_result":Z
    :cond_4fc
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/content/ClipData;
    goto :goto_4e8

    .line 483
    .restart local v19    # "_result":Z
    :cond_4fe
    const/4 v2, 0x0

    goto :goto_4f4

    .line 488
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":F
    .end local v6    # "_arg3":F
    .end local v7    # "_arg4":F
    .end local v8    # "_arg5":F
    .end local v9    # "_arg6":Landroid/content/ClipData;
    .end local v19    # "_result":Z
    :sswitch_500
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 492
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_521

    const/4 v4, 0x1

    .line 493
    .local v4, "_arg1":Z
    :goto_516
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 492
    .end local v4    # "_arg1":Z
    :cond_521
    const/4 v4, 0x0

    goto :goto_516

    .line 499
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_523
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 502
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 508
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_53d
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 511
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 517
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_557
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 521
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 523
    .local v4, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 525
    .restart local v5    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 527
    .restart local v6    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .restart local v7    # "_arg4":F
    move-object/from16 v2, p0

    .line 528
    invoke-virtual/range {v2 .. v7}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 534
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":F
    .end local v5    # "_arg2":F
    .end local v6    # "_arg3":F
    .end local v7    # "_arg4":F
    :sswitch_57d
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 537
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 543
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_593
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 547
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 549
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 550
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 556
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_5b1
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 560
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 564
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 566
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 568
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5ff

    .line 569
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 575
    .local v8, "_arg5":Landroid/os/Bundle;
    :goto_5dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_601

    const/4 v9, 0x1

    .local v9, "_arg6":Z
    :goto_5e3
    move-object/from16 v2, p0

    .line 576
    invoke-virtual/range {v2 .. v9}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v19

    .line 577
    .local v19, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v19, :cond_603

    .line 579
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    :goto_5fc
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 572
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Z
    .end local v19    # "_result":Landroid/os/Bundle;
    :cond_5ff
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/os/Bundle;
    goto :goto_5dc

    .line 575
    :cond_601
    const/4 v9, 0x0

    goto :goto_5e3

    .line 583
    .restart local v9    # "_arg6":Z
    .restart local v19    # "_result":Landroid/os/Bundle;
    :cond_603
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5fc

    .line 589
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Z
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_60a
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 593
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_630

    .line 594
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 599
    .local v4, "_arg1":Landroid/os/Bundle;
    :goto_625
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 597
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_630
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Bundle;
    goto :goto_625

    .line 605
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :sswitch_632
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 609
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 611
    .local v4, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 613
    .local v5, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 615
    .local v6, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 617
    .local v7, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 619
    .local v8, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 621
    .local v9, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .local v10, "_arg7":F
    move-object/from16 v2, p0

    .line 622
    invoke-virtual/range {v2 .. v10}, Landroid/view/IWindowSession$Stub;->setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 628
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":F
    .end local v5    # "_arg2":F
    .end local v6    # "_arg3":F
    .end local v7    # "_arg4":F
    .end local v8    # "_arg5":F
    .end local v9    # "_arg6":F
    .end local v10    # "_arg7":F
    :sswitch_664
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 632
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68a

    .line 633
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 638
    .local v4, "_arg1":Landroid/graphics/Rect;
    :goto_67f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 636
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_68a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    goto :goto_67f

    .line 644
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_68c
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 647
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v19

    .line 648
    .local v19, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    if-eqz v19, :cond_6ae

    invoke-interface/range {v19 .. v19}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_6a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 650
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 649
    :cond_6ae
    const/4 v2, 0x0

    goto :goto_6a6

    .line 654
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_result":Landroid/view/IWindowId;
    :sswitch_6b0
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 658
    .local v3, "_arg0":Landroid/view/IWindow;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 659
    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/view/IWindowSession$Stub;->getContentFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v4, :cond_6dd

    .line 662
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 668
    :goto_6da
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 666
    :cond_6dd
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6da

    .line 672
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_6e4
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getCoverStateSwitch()Z

    move-result v19

    .line 674
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v19, :cond_6fd

    const/4 v2, 0x1

    :goto_6f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 675
    :cond_6fd
    const/4 v2, 0x0

    goto :goto_6f5

    .line 43
    nop

    :sswitch_data_700
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_80
        0x3 -> :sswitch_f4
        0x4 -> :sswitch_14a
        0x5 -> :sswitch_1a4
        0x6 -> :sswitch_1be
        0x7 -> :sswitch_2f8
        0x8 -> :sswitch_312
        0x9 -> :sswitch_337
        0xa -> :sswitch_363
        0xb -> :sswitch_3b7
        0xc -> :sswitch_3eb
        0xd -> :sswitch_405
        0xe -> :sswitch_420
        0xf -> :sswitch_43b
        0x10 -> :sswitch_46d
        0x11 -> :sswitch_4b5
        0x12 -> :sswitch_500
        0x13 -> :sswitch_523
        0x14 -> :sswitch_53d
        0x15 -> :sswitch_557
        0x16 -> :sswitch_57d
        0x17 -> :sswitch_593
        0x18 -> :sswitch_5b1
        0x19 -> :sswitch_60a
        0x1a -> :sswitch_632
        0x1b -> :sswitch_664
        0x1c -> :sswitch_68c
        0x1d -> :sswitch_6b0
        0x1e -> :sswitch_6e4
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
