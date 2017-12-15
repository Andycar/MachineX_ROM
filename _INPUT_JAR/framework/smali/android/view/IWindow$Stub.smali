.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAirButtonHitTest:I = 0xe

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchCoverStateChanged:I = 0xf

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchSmartClipDataExtractionEvent:I = 0xd

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xb

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_doneAnimating:I = 0xc

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
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
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/IWindow;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/IWindow$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_1d4

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 48
    :sswitch_a
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 60
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 65
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_2b
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_9

    .line 63
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_2f
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_2b

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_31
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    .line 73
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 79
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_99

    .line 80
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 86
    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9b

    .line 87
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 93
    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9d

    .line 94
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 100
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9f

    .line 101
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 107
    .local v5, "_arg4":Landroid/graphics/Rect;
    :goto_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    move v6, v8

    .line 109
    .local v6, "_arg5":Z
    :cond_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a1

    .line 110
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Configuration;

    .local v7, "_arg6":Landroid/content/res/Configuration;
    :goto_91
    move-object v0, p0

    .line 115
    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    goto/16 :goto_9

    .line 76
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/content/res/Configuration;
    :cond_97
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_44

    .line 83
    :cond_99
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_52

    .line 90
    :cond_9b
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Rect;
    goto :goto_60

    .line 97
    :cond_9d
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Rect;
    goto :goto_6e

    .line 104
    :cond_9f
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    goto :goto_7c

    .line 113
    .restart local v6    # "_arg5":Z
    :cond_a1
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/content/res/Configuration;
    goto :goto_91

    .line 120
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/content/res/Configuration;
    :sswitch_a3
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    goto/16 :goto_9

    .line 130
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b5
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c6

    move v1, v8

    .line 133
    .local v1, "_arg0":Z
    :goto_c1
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_c6
    move v1, v6

    .line 132
    goto :goto_c1

    .line 138
    :sswitch_c8
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    goto/16 :goto_9

    .line 144
    :sswitch_d2
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ea

    move v1, v8

    .line 148
    .restart local v1    # "_arg0":Z
    :goto_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ec

    move v2, v8

    .line 149
    .local v2, "_arg1":Z
    :goto_e5
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_ea
    move v1, v6

    .line 146
    goto :goto_de

    .restart local v1    # "_arg0":Z
    :cond_ec
    move v2, v6

    .line 148
    goto :goto_e5

    .line 154
    .end local v1    # "_arg0":Z
    :sswitch_ee
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 162
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_fc
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 166
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 168
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 170
    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 172
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11e

    move v5, v8

    .local v5, "_arg4":Z
    :goto_118
    move-object v0, p0

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    goto/16 :goto_9

    .end local v5    # "_arg4":Z
    :cond_11e
    move v5, v6

    .line 172
    goto :goto_118

    .line 178
    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    :sswitch_120
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_150

    .line 189
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 195
    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14a

    move v6, v8

    .restart local v6    # "_arg5":Z
    :cond_14a
    move-object v0, p0

    .line 196
    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto/16 :goto_9

    .line 192
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    :cond_150
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_143

    .line 201
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_152
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16a

    .line 204
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 209
    .local v1, "_arg0":Landroid/view/DragEvent;
    :goto_165
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_9

    .line 207
    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :cond_16a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/DragEvent;
    goto :goto_165

    .line 214
    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :sswitch_16c
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    goto/16 :goto_9

    .line 228
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_186
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->doneAnimating()V

    goto/16 :goto_9

    .line 234
    :sswitch_190
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a8

    .line 237
    sget-object v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 242
    .local v1, "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :goto_1a3
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    goto/16 :goto_9

    .line 240
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :cond_1a8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    goto :goto_1a3

    .line 247
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :sswitch_1aa
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->dispatchAirButtonHitTest(III)V

    goto/16 :goto_9

    .line 259
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_1c0
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d1

    move v1, v8

    .line 262
    .local v1, "_arg0":Z
    :goto_1cc
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchCoverStateChanged(Z)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_1d1
    move v1, v6

    .line 261
    goto :goto_1cc

    .line 44
    nop

    :sswitch_data_1d4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x3 -> :sswitch_a3
        0x4 -> :sswitch_b5
        0x5 -> :sswitch_c8
        0x6 -> :sswitch_d2
        0x7 -> :sswitch_ee
        0x8 -> :sswitch_fc
        0x9 -> :sswitch_120
        0xa -> :sswitch_152
        0xb -> :sswitch_16c
        0xc -> :sswitch_186
        0xd -> :sswitch_190
        0xe -> :sswitch_1aa
        0xf -> :sswitch_1c0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
