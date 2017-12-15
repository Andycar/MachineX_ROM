.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowFacade.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowFacade"

.field static final TRANSACTION_addTab:I = 0x20

.field static final TRANSACTION_appMinimizingStarted:I = 0x29

.field static final TRANSACTION_changeTaskToCascade:I = 0x16

.field static final TRANSACTION_changeTaskToFull:I = 0x15

.field static final TRANSACTION_exchangeTopTaskToZone:I = 0xb

.field static final TRANSACTION_getArrangeState:I = 0xd

.field static final TRANSACTION_getAvailableMultiInstanceCnt:I = 0x17

.field static final TRANSACTION_getCenterBarPoint:I = 0x3

.field static final TRANSACTION_getCurrentOrientation:I = 0x2c

.field static final TRANSACTION_getEnabledFeaturesFlags:I = 0x30

.field static final TRANSACTION_getExpectedOrientation:I = 0x9

.field static final TRANSACTION_getFocusedStackLayer:I = 0xe

.field static final TRANSACTION_getFocusedZone:I = 0xf

.field static final TRANSACTION_getFrontActivityMultiWindowStyle:I = 0xa

.field static final TRANSACTION_getGlobalSystemUiVisibility:I = 0x14

.field static final TRANSACTION_getMultiWindowStyle:I = 0x5

.field static final TRANSACTION_getRecentTaskSize:I = 0x28

.field static final TRANSACTION_getRunningScaleWindows:I = 0x2b

.field static final TRANSACTION_getRunningTasks:I = 0xc

.field static final TRANSACTION_getSplitMaxWeight:I = 0x1c

.field static final TRANSACTION_getSplitMinWeight:I = 0x1b

.field static final TRANSACTION_getStackBound:I = 0x7

.field static final TRANSACTION_getStackId:I = 0x24

.field static final TRANSACTION_getStackOriginalBound:I = 0x8

.field static final TRANSACTION_getStackPosition:I = 0x1e

.field static final TRANSACTION_getTabs:I = 0x22

.field static final TRANSACTION_getZoneBounds:I = 0x10

.field static final TRANSACTION_isEnableMakePenWindow:I = 0x1d

.field static final TRANSACTION_minimizeWindow:I = 0x1

.field static final TRANSACTION_moveOnlySpecificTaskToFront:I = 0x1a

.field static final TRANSACTION_needToExposureTitleBarMenu:I = 0x2a

.field static final TRANSACTION_registerTaskController:I = 0x2d

.field static final TRANSACTION_registerTaskControllerWithType:I = 0x2e

.field static final TRANSACTION_removeAllTasks:I = 0x27

.field static final TRANSACTION_removeTab:I = 0x21

.field static final TRANSACTION_requestSplitPreview:I = 0x12

.field static final TRANSACTION_setAppVisibility:I = 0x26

.field static final TRANSACTION_setCenterBarPoint:I = 0x2

.field static final TRANSACTION_setFocusAppByZone:I = 0x18

.field static final TRANSACTION_setFocusedStack:I = 0x23

.field static final TRANSACTION_setMultiWindowStyle:I = 0x4

.field static final TRANSACTION_setMultiWindowTrayOpenState:I = 0x11

.field static final TRANSACTION_setPreviewFullAppZone:I = 0x13

.field static final TRANSACTION_setStackBound:I = 0x6

.field static final TRANSACTION_setStackBoundByStackId:I = 0x25

.field static final TRANSACTION_unregisterTaskController:I = 0x2f

.field static final TRANSACTION_updateIsolatedCenterPoint:I = 0x19

.field static final TRANSACTION_updateMinimizeSize:I = 0x1f

.field static final TRANSACTION_updateSettingThroughSystemProcess:I = 0x31


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_4a2

    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 46
    :sswitch_a
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->minimizeWindow(Landroid/os/IBinder;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_20
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 65
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 70
    .local v1, "_arg1":Landroid/graphics/Point;
    :goto_37
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Point;
    goto :goto_37

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :sswitch_40
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .line 80
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_59

    .line 82
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 86
    :cond_59
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_5d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    .line 97
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 102
    .local v1, "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_74
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_7b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_74

    .line 108
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_7d
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 112
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_97

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 118
    :cond_97
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_9c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bb

    .line 129
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 134
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_b3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 132
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_bb
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_b3

    .line 140
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_bd
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 144
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_d7

    .line 146
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 150
    :cond_d7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_dc
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 160
    .restart local v4    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v4, :cond_f6

    .line 162
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 166
    :cond_f6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 172
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_fb
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getExpectedOrientation()I

    move-result v4

    .line 174
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 180
    .end local v4    # "_result":I
    :sswitch_10c
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 184
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_126

    .line 186
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 190
    :cond_126
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 196
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_12b
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->exchangeTopTaskToZone(II)Z

    move-result v4

    .line 202
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_142

    move v6, v7

    :cond_142
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_147
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 214
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 220
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_160
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getArrangeState()I

    move-result v4

    .line 222
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 228
    .end local v4    # "_result":I
    :sswitch_171
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedStackLayer()I

    move-result v4

    .line 230
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v4    # "_result":I
    :sswitch_182
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedZone()I

    move-result v4

    .line 238
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 244
    .end local v4    # "_result":I
    :sswitch_193
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 248
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v4, :cond_1ad

    .line 250
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 254
    :cond_1ad
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 260
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_1b2
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c6

    move v0, v7

    .line 263
    .local v0, "_arg0":Z
    :goto_1be
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowTrayOpenState(Z)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1c6
    move v0, v6

    .line 262
    goto :goto_1be

    .line 269
    :sswitch_1c8
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1dc

    move v0, v7

    .line 272
    .restart local v0    # "_arg0":Z
    :goto_1d4
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->requestSplitPreview(Z)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1dc
    move v0, v6

    .line 271
    goto :goto_1d4

    .line 278
    :sswitch_1de
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setPreviewFullAppZone(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 287
    .end local v0    # "_arg0":I
    :sswitch_1ef
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getGlobalSystemUiVisibility()I

    move-result v4

    .line 289
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v4    # "_result":I
    :sswitch_200
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeTaskToFull(I)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 304
    .end local v0    # "_arg0":I
    :sswitch_211
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_23e

    .line 307
    sget-object v8, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 313
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_240

    move v2, v7

    .line 316
    .local v2, "_arg2":Z
    :goto_22f
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v4

    .line 317
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v4, :cond_239

    move v6, v7

    :cond_239
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 310
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_23e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_224

    .restart local v1    # "_arg1":I
    :cond_240
    move v2, v6

    .line 315
    goto :goto_22f

    .line 323
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    :sswitch_242
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getAvailableMultiInstanceCnt()I

    move-result v4

    .line 325
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 331
    .end local v4    # "_result":I
    :sswitch_253
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusAppByZone(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 340
    .end local v0    # "_arg0":I
    :sswitch_264
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27f

    .line 343
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 348
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_277
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 346
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_27f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_277

    .line 354
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_281
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b2

    .line 359
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 365
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b4

    .line 368
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 373
    .local v3, "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_2aa
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 362
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2b2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_298

    .line 371
    .restart local v2    # "_arg2":I
    :cond_2b4
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_2aa

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_2b6
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMinWeight()F

    move-result v4

    .line 381
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 387
    .end local v4    # "_result":F
    :sswitch_2c7
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMaxWeight()F

    move-result v4

    .line 389
    .restart local v4    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 395
    .end local v4    # "_result":F
    :sswitch_2d8
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isEnableMakePenWindow()Z

    move-result v4

    .line 397
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v4, :cond_2e7

    move v6, v7

    :cond_2e7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 403
    .end local v4    # "_result":Z
    :sswitch_2ec
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 406
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v4

    .line 407
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v4, :cond_306

    .line 409
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 413
    :cond_306
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 419
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_30b
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 423
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 424
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 430
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :sswitch_320
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->addTab(Landroid/os/IBinder;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 439
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_331
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->removeTab(I)Z

    move-result v4

    .line 443
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v4, :cond_344

    move v6, v7

    :cond_344
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 449
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_349
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getTabs()Ljava/util/List;

    move-result-object v4

    .line 451
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 457
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_35a
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_372

    move v1, v7

    .line 462
    .local v1, "_arg1":Z
    :goto_36a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusedStack(IZ)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_372
    move v1, v6

    .line 461
    goto :goto_36a

    .line 468
    .end local v0    # "_arg0":I
    :sswitch_374
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 471
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackId(Landroid/os/IBinder;)I

    move-result v4

    .line 472
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 478
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_389
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a8

    .line 483
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 488
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_3a0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 486
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_3a8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_3a0

    .line 494
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_3aa
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3c2

    move v1, v7

    .line 499
    .local v1, "_arg1":Z
    :goto_3ba
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_3c2
    move v1, v6

    .line 498
    goto :goto_3ba

    .line 505
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3c4
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 509
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->removeAllTasks(Landroid/os/IBinder;I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 516
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_3d9
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRecentTaskSize(II)I

    move-result v4

    .line 522
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 528
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_3f2
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 531
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 537
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_403
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->needToExposureTitleBarMenu()Z

    move-result v4

    .line 539
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v4, :cond_412

    move v6, v7

    :cond_412
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 545
    .end local v4    # "_result":Z
    :sswitch_417
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v4

    .line 547
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 553
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_428
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCurrentOrientation()I

    move-result v4

    .line 555
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 561
    .end local v4    # "_result":I
    :sswitch_439
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 564
    .local v0, "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 570
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_44e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 574
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 575
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 581
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    .end local v1    # "_arg1":I
    :sswitch_467
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 584
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 590
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_47c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getEnabledFeaturesFlags()J

    move-result-wide v4

    .line 592
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 598
    .end local v4    # "_result":J
    :sswitch_48d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 603
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateSettingThroughSystemProcess(Ljava/lang/String;I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    :sswitch_data_4a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_40
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_9c
        0x7 -> :sswitch_bd
        0x8 -> :sswitch_dc
        0x9 -> :sswitch_fb
        0xa -> :sswitch_10c
        0xb -> :sswitch_12b
        0xc -> :sswitch_147
        0xd -> :sswitch_160
        0xe -> :sswitch_171
        0xf -> :sswitch_182
        0x10 -> :sswitch_193
        0x11 -> :sswitch_1b2
        0x12 -> :sswitch_1c8
        0x13 -> :sswitch_1de
        0x14 -> :sswitch_1ef
        0x15 -> :sswitch_200
        0x16 -> :sswitch_211
        0x17 -> :sswitch_242
        0x18 -> :sswitch_253
        0x19 -> :sswitch_264
        0x1a -> :sswitch_281
        0x1b -> :sswitch_2b6
        0x1c -> :sswitch_2c7
        0x1d -> :sswitch_2d8
        0x1e -> :sswitch_2ec
        0x1f -> :sswitch_30b
        0x20 -> :sswitch_320
        0x21 -> :sswitch_331
        0x22 -> :sswitch_349
        0x23 -> :sswitch_35a
        0x24 -> :sswitch_374
        0x25 -> :sswitch_389
        0x26 -> :sswitch_3aa
        0x27 -> :sswitch_3c4
        0x28 -> :sswitch_3d9
        0x29 -> :sswitch_3f2
        0x2a -> :sswitch_403
        0x2b -> :sswitch_417
        0x2c -> :sswitch_428
        0x2d -> :sswitch_439
        0x2e -> :sswitch_44e
        0x2f -> :sswitch_467
        0x30 -> :sswitch_47c
        0x31 -> :sswitch_48d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
