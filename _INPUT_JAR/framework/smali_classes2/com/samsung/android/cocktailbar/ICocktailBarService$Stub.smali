.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarService"

.field static final TRANSACTION_activateCocktailBar:I = 0x21

.field static final TRANSACTION_bindRemoteViewsService:I = 0xa

.field static final TRANSACTION_closeCocktail:I = 0x6

.field static final TRANSACTION_cocktailBarreboot:I = 0x31

.field static final TRANSACTION_cocktailBarshutdown:I = 0x30

.field static final TRANSACTION_deactivateCocktailBar:I = 0x22

.field static final TRANSACTION_getAllCocktailIds:I = 0xc

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x2a

.field static final TRANSACTION_getCocktail:I = 0xd

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x1f

.field static final TRANSACTION_getCocktailId:I = 0x7

.field static final TRANSACTION_getCocktailIds:I = 0x8

.field static final TRANSACTION_getWindowType:I = 0x20

.field static final TRANSACTION_isAllowTransientBarCocktailBar:I = 0x2d

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0x9

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x15

.field static final TRANSACTION_notifyKeyguardState:I = 0x14

.field static final TRANSACTION_onScreenTurnedOn:I = 0x2b

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x4

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x1d

.field static final TRANSACTION_removeCocktailUIService:I = 0x2f

.field static final TRANSACTION_requestToDisableCocktail:I = 0xf

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x11

.field static final TRANSACTION_requestToDisableCocktailByPrivateMode:I = 0x13

.field static final TRANSACTION_requestToUpdateCocktail:I = 0xe

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x10

.field static final TRANSACTION_requestToUpdateCocktailByPrivateMode:I = 0x12

.field static final TRANSACTION_sendDragEvent:I = 0x16

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x2e

.field static final TRANSACTION_setCocktailBarStatus:I = 0x1c

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setDisableTickerView:I = 0x23

.field static final TRANSACTION_showAndLockCocktailBar:I = 0x17

.field static final TRANSACTION_showCocktail:I = 0x5

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_switchDefaultCocktail:I = 0x2c

.field static final TRANSACTION_unbindRemoteViewsService:I = 0xb

.field static final TRANSACTION_unlockCocktailBar:I = 0x18

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x1e

.field static final TRANSACTION_updateCocktail:I = 0x3

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x1b

.field static final TRANSACTION_updateCocktailBarStateFromSystem:I = 0x1a

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x19

.field static final TRANSACTION_updateLongpressGesture:I = 0x25

.field static final TRANSACTION_updateSysfsBarLength:I = 0x27

.field static final TRANSACTION_updateSysfsDeadZone:I = 0x26

.field static final TRANSACTION_updateSysfsGripDisable:I = 0x28

.field static final TRANSACTION_updateWakeupGesture:I = 0x24

.field static final TRANSACTION_wakeupCocktailBar:I = 0x29


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
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
    const-string v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_462

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_28
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg1":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I

    move-result-object v5

    .line 67
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v5    # "_result":[I
    :sswitch_4c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 77
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 83
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    .end local v1    # "_arg1":I
    :cond_6a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    goto :goto_5f

    .line 90
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_6c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    .line 93
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 99
    .local v0, "_arg0":Landroid/widget/RemoteViews;
    :goto_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Landroid/widget/RemoteViews;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 96
    .end local v0    # "_arg0":Landroid/widget/RemoteViews;
    .end local v1    # "_arg1":I
    :cond_8a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/widget/RemoteViews;
    goto :goto_7f

    .line 106
    .end local v0    # "_arg0":Landroid/widget/RemoteViews;
    :sswitch_8c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 115
    .end local v0    # "_arg0":I
    :sswitch_9d
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(II)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b2
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d1

    .line 129
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 134
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_c5
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v5

    .line 135
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 132
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_result":I
    :cond_d1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c5

    .line 141
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f2

    .line 144
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 149
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_e6
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 150
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 147
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_result":[I
    :cond_f2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e6

    .line 156
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f4
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(II)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_109
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_130

    .line 174
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 180
    .local v2, "_arg2":Landroid/content/Intent;
    :goto_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 181
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_130
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_124

    .line 187
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_132
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_155

    .line 194
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 199
    .restart local v2    # "_arg2":Landroid/content/Intent;
    :goto_14d
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 197
    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_155
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_14d

    .line 205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_157
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v5

    .line 207
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 213
    .end local v5    # "_result":[I
    :sswitch_168
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v5

    .line 217
    .local v5, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v5, :cond_182

    .line 219
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {v5, p3, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 223
    :cond_182
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 229
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_187
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v5

    .line 233
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v5, :cond_19a

    move v6, v7

    :cond_19a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 239
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_19f
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v5

    .line 243
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v5, :cond_1b2

    move v6, v7

    :cond_1b2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 249
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_1b7
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v5

    .line 253
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v5, :cond_1ca

    move v6, v7

    :cond_1ca
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 259
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_1cf
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v5

    .line 263
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v5, :cond_1e2

    move v6, v7

    :cond_1e2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 269
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_1e7
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v5

    .line 273
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v5, :cond_1fa

    move v6, v7

    :cond_1fa
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 279
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_1ff
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v5

    .line 283
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v5, :cond_212

    move v6, v7

    :cond_212
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_217
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_22b

    move v0, v7

    .line 292
    .local v0, "_arg0":Z
    :goto_223
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_22b
    move v0, v6

    .line 291
    goto :goto_223

    .line 298
    :sswitch_22d
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_242
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_261

    .line 314
    sget-object v6, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 319
    .local v1, "_arg1":Landroid/view/DragEvent;
    :goto_259
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendDragEvent(ILandroid/view/DragEvent;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :cond_261
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/DragEvent;
    goto :goto_259

    .line 325
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :sswitch_263
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showAndLockCocktailBar()V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 332
    :sswitch_270
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unlockCocktailBar(I)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 341
    .end local v0    # "_arg0":I
    :sswitch_281
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 350
    .end local v0    # "_arg0":I
    :sswitch_292
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarStateFromSystem(I)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 359
    .end local v0    # "_arg0":I
    :sswitch_2a3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 368
    .end local v0    # "_arg0":I
    :sswitch_2b4
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2cf

    move v0, v7

    .line 372
    .local v0, "_arg0":Z
    :goto_2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d1

    move v1, v7

    .line 373
    .local v1, "_arg1":Z
    :goto_2c7
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarStatus(ZZ)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_2cf
    move v0, v6

    .line 370
    goto :goto_2c0

    .restart local v0    # "_arg0":Z
    :cond_2d1
    move v1, v6

    .line 372
    goto :goto_2c7

    .line 379
    .end local v0    # "_arg0":Z
    :sswitch_2d3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 383
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f2

    .line 384
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 389
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_2ea
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 387
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_2f2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2ea

    .line 395
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2f4
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 398
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 404
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_305
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v5

    .line 406
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 412
    .end local v5    # "_result":I
    :sswitch_316
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v5

    .line 414
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 420
    .end local v5    # "_result":I
    :sswitch_327
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 427
    :sswitch_334
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 434
    :sswitch_341
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 437
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setDisableTickerView(I)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 443
    .end local v0    # "_arg0":I
    :sswitch_352
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_36a

    move v1, v7

    .line 448
    .local v1, "_arg1":Z
    :goto_362
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_36a
    move v1, v6

    .line 447
    goto :goto_362

    .line 454
    .end local v0    # "_arg0":I
    :sswitch_36c
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_380

    move v0, v7

    .line 457
    .local v0, "_arg0":Z
    :goto_378
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateLongpressGesture(Z)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_380
    move v0, v6

    .line 456
    goto :goto_378

    .line 463
    :sswitch_382
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsDeadZone(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 472
    .end local v0    # "_arg0":I
    :sswitch_393
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsBarLength(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 481
    .end local v0    # "_arg0":I
    :sswitch_3a4
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3b8

    move v0, v7

    .line 484
    .local v0, "_arg0":Z
    :goto_3b0
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsGripDisable(Z)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_3b8
    move v0, v6

    .line 483
    goto :goto_3b0

    .line 490
    :sswitch_3ba
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3d2

    move v0, v7

    .line 494
    .restart local v0    # "_arg0":Z
    :goto_3c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->wakeupCocktailBar(ZI)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :cond_3d2
    move v0, v6

    .line 492
    goto :goto_3c6

    .line 501
    :sswitch_3d4
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v5

    .line 503
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v5, :cond_3e3

    move v6, v7

    :cond_3e3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 509
    .end local v5    # "_result":Z
    :sswitch_3e8
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    move-result-object v0

    .line 512
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 518
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
    :sswitch_3fd
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->switchDefaultCocktail()V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 525
    :sswitch_40a
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isAllowTransientBarCocktailBar()Z

    move-result v5

    .line 527
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    if-eqz v5, :cond_419

    move v6, v7

    :cond_419
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 533
    .end local v5    # "_result":Z
    :sswitch_41e
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_439

    .line 536
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 541
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_431
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 539
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_439
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_431

    .line 547
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_43b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 554
    :sswitch_448
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarshutdown()V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 561
    :sswitch_455
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarreboot()V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_462
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_6c
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_d3
        0x9 -> :sswitch_f4
        0xa -> :sswitch_109
        0xb -> :sswitch_132
        0xc -> :sswitch_157
        0xd -> :sswitch_168
        0xe -> :sswitch_187
        0xf -> :sswitch_19f
        0x10 -> :sswitch_1b7
        0x11 -> :sswitch_1cf
        0x12 -> :sswitch_1e7
        0x13 -> :sswitch_1ff
        0x14 -> :sswitch_217
        0x15 -> :sswitch_22d
        0x16 -> :sswitch_242
        0x17 -> :sswitch_263
        0x18 -> :sswitch_270
        0x19 -> :sswitch_281
        0x1a -> :sswitch_292
        0x1b -> :sswitch_2a3
        0x1c -> :sswitch_2b4
        0x1d -> :sswitch_2d3
        0x1e -> :sswitch_2f4
        0x1f -> :sswitch_305
        0x20 -> :sswitch_316
        0x21 -> :sswitch_327
        0x22 -> :sswitch_334
        0x23 -> :sswitch_341
        0x24 -> :sswitch_352
        0x25 -> :sswitch_36c
        0x26 -> :sswitch_382
        0x27 -> :sswitch_393
        0x28 -> :sswitch_3a4
        0x29 -> :sswitch_3ba
        0x2a -> :sswitch_3d4
        0x2b -> :sswitch_3e8
        0x2c -> :sswitch_3fd
        0x2d -> :sswitch_40a
        0x2e -> :sswitch_41e
        0x2f -> :sswitch_43b
        0x30 -> :sswitch_448
        0x31 -> :sswitch_455
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
