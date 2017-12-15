.class public abstract Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureService.java"

# interfaces
.implements Lcom/samsung/android/smartclip/ISpenGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/ISpenGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartclip.ISpenGestureService"

.field static final TRANSACTION_activateExclusiveCroppingMode:I = 0x3

.field static final TRANSACTION_getAirButtonHitTest:I = 0x7

.field static final TRANSACTION_getSmartClipDataByScreenRect:I = 0x6

.field static final TRANSACTION_getSmartClipDataFromCurrentScreen:I = 0x5

.field static final TRANSACTION_isExclusiveModeActivated:I = 0x4

.field static final TRANSACTION_setAirButtonHitTestResult:I = 0x8

.field static final TRANSACTION_setDisableGlobalAirBottonAppindex:I = 0x9

.field static final TRANSACTION_setFocusWindow:I = 0x1

.field static final TRANSACTION_setSmartClipDataExtractionResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;
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
    const-string v1, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_ea

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 45
    :sswitch_a
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setFocusWindow(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 62
    sget-object v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .line 67
    .local v0, "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :goto_33
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    goto :goto_33

    .line 73
    .end local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :sswitch_3c
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->activateExclusiveCroppingMode()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    :sswitch_48
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->isExclusiveModeActivated()Z

    move-result v3

    .line 82
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_57

    move v4, v5

    :cond_57
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v3    # "_result":Z
    :sswitch_5b
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    .line 90
    .local v3, "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_70

    .line 92
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 96
    :cond_70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 102
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :sswitch_74
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a0

    .line 105
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 111
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 113
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    .line 115
    .restart local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_a2

    .line 117
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 108
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_a0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_87

    .line 121
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    .restart local v2    # "_arg2":I
    .restart local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_a2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :sswitch_a7
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getAirButtonHitTest(III)I

    move-result v3

    .line 135
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_c4
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setAirButtonHitTestResult(II)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_d9
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setDisableGlobalAirBottonAppindex(I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_48
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_74
        0x7 -> :sswitch_a7
        0x8 -> :sswitch_c4
        0x9 -> :sswitch_d9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
