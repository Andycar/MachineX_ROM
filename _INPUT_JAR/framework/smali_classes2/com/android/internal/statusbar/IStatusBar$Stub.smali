.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_applyEDMPolicy:I = 0x13

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x17

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setCallBackground:I = 0x15

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setMultiWindowBg:I = 0x16

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_toggleNotificationPanel:I = 0x14

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_176

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    .line 53
    sget-object v5, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_27
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_9

    .line 56
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_27

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2d
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(I)V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":I
    :sswitch_47
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto :goto_9

    .line 85
    :sswitch_50
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    goto :goto_9

    .line 91
    :sswitch_59
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto :goto_9

    .line 97
    :sswitch_62
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    goto :goto_9

    .line 107
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_73
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    move v0, v4

    .line 110
    .local v0, "_arg0":Z
    :goto_7f
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_83
    move v0, v5

    .line 109
    goto :goto_7f

    .line 115
    :sswitch_85
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a2

    move v3, v4

    .line 124
    .local v3, "_arg3":Z
    :goto_9d
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_9

    .end local v3    # "_arg3":Z
    :cond_a2
    move v3, v5

    .line 123
    goto :goto_9d

    .line 129
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_a4
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b6
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    goto/16 :goto_9

    .line 145
    :sswitch_c0
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    goto/16 :goto_9

    .line 151
    :sswitch_ca
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    goto/16 :goto_9

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_e0
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f1

    move v0, v4

    .line 166
    .local v0, "_arg0":Z
    :goto_ec
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_f1
    move v0, v5

    .line 165
    goto :goto_ec

    .line 171
    :sswitch_f3
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10b

    move v0, v4

    .line 175
    .restart local v0    # "_arg0":Z
    :goto_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10d

    move v1, v4

    .line 176
    .local v1, "_arg1":Z
    :goto_106
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_10b
    move v0, v5

    .line 173
    goto :goto_ff

    .restart local v0    # "_arg0":Z
    :cond_10d
    move v1, v5

    .line 175
    goto :goto_106

    .line 181
    .end local v0    # "_arg0":Z
    :sswitch_10f
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_9

    .line 187
    :sswitch_119
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_9

    .line 193
    :sswitch_123
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_9

    .line 199
    :sswitch_12d
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->applyEDMPolicy()V

    goto/16 :goto_9

    .line 205
    :sswitch_137
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationPanel()V

    goto/16 :goto_9

    .line 211
    :sswitch_141
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setCallBackground(I)V

    goto/16 :goto_9

    .line 219
    .end local v0    # "_arg0":I
    :sswitch_14f
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_160

    move v0, v4

    .line 222
    .local v0, "_arg0":Z
    :goto_15b
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMultiWindowBg(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_160
    move v0, v5

    .line 221
    goto :goto_15b

    .line 227
    :sswitch_162
    const-string v6, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_173

    move v0, v4

    .line 230
    .restart local v0    # "_arg0":Z
    :goto_16e
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notifyRecentPanelVisiblity(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_173
    move v0, v5

    .line 229
    goto :goto_16e

    .line 39
    nop

    :sswitch_data_176
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_47
        0x5 -> :sswitch_50
        0x6 -> :sswitch_59
        0x7 -> :sswitch_62
        0x8 -> :sswitch_73
        0x9 -> :sswitch_85
        0xa -> :sswitch_a4
        0xb -> :sswitch_b6
        0xc -> :sswitch_c0
        0xd -> :sswitch_ca
        0xe -> :sswitch_e0
        0xf -> :sswitch_f3
        0x10 -> :sswitch_10f
        0x11 -> :sswitch_119
        0x12 -> :sswitch_123
        0x13 -> :sswitch_12d
        0x14 -> :sswitch_137
        0x15 -> :sswitch_141
        0x16 -> :sswitch_14f
        0x17 -> :sswitch_162
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
