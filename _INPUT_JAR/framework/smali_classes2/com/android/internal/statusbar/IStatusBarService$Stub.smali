.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_applyEDMPolicy:I = 0x1c

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x1a

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disableAsUser:I = 0x1b

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0x9

.field static final TRANSACTION_getPanelExpandState:I = 0x1f

.field static final TRANSACTION_hideRecentApps:I = 0x17

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x22

.field static final TRANSACTION_onClearAllNotifications:I = 0x10

.field static final TRANSACTION_onNotificationClear:I = 0x11

.field static final TRANSACTION_onNotificationClick:I = 0xe

.field static final TRANSACTION_onNotificationError:I = 0xf

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x13

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x12

.field static final TRANSACTION_onPanelHidden:I = 0xd

.field static final TRANSACTION_onPanelRevealed:I = 0xc

.field static final TRANSACTION_preloadRecentApps:I = 0x19

.field static final TRANSACTION_registerStatusBar:I = 0xb

.field static final TRANSACTION_removeIcon:I = 0x6

.field static final TRANSACTION_setCallBackground:I = 0x20

.field static final TRANSACTION_setCurrentUser:I = 0xa

.field static final TRANSACTION_setIcon:I = 0x4

.field static final TRANSACTION_setIconVisibility:I = 0x5

.field static final TRANSACTION_setImeWindowStatus:I = 0x8

.field static final TRANSACTION_setMultiWindowBg:I = 0x21

.field static final TRANSACTION_setPanelExpandState:I = 0x1e

.field static final TRANSACTION_setSystemUiVisibility:I = 0x14

.field static final TRANSACTION_setWindowState:I = 0x15

.field static final TRANSACTION_showRecentApps:I = 0x16

.field static final TRANSACTION_toggleNotificationPanel:I = 0x1d

.field static final TRANSACTION_toggleRecentApps:I = 0x18

.field static final TRANSACTION_topAppWindowChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    sparse-switch p1, :sswitch_data_322

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 43
    :sswitch_8
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_7

    .line 48
    :sswitch_f
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v0, 0x1

    goto :goto_7

    .line 55
    :sswitch_1c
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v0, 0x1

    goto :goto_7

    .line 62
    :sswitch_29
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 68
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v0, 0x1

    goto :goto_7

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_42
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v0, 0x1

    goto :goto_7

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_64
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v2, 0x1

    .line 97
    .local v2, "_arg1":Z
    :goto_74
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v0, 0x1

    goto :goto_7

    .line 96
    .end local v2    # "_arg1":Z
    :cond_7c
    const/4 v2, 0x0

    goto :goto_74

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7e
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 112
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_90
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v1, 0x1

    .line 115
    .local v1, "_arg0":Z
    :goto_9c
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 114
    .end local v1    # "_arg0":Z
    :cond_a5
    const/4 v1, 0x0

    goto :goto_9c

    .line 121
    :sswitch_a7
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    const/4 v4, 0x1

    .line 130
    .local v4, "_arg3":Z
    :goto_bf
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 129
    .end local v4    # "_arg3":Z
    :cond_c8
    const/4 v4, 0x0

    goto :goto_bf

    .line 136
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_ca
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 143
    :sswitch_d8
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 152
    .end local v1    # "_arg0":I
    :sswitch_ea
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 156
    .local v1, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 158
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 159
    .local v8, "_arg2_length":I
    if-gez v8, :cond_121

    .line 160
    const/4 v3, 0x0

    .line 166
    .local v3, "_arg2":[I
    :goto_103
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v9, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v1, v2, v3, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v2, :cond_124

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 177
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 178
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 163
    .end local v3    # "_arg2":[I
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_121
    new-array v3, v8, [I

    .restart local v3    # "_arg2":[I
    goto :goto_103

    .line 174
    .restart local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_124
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_118

    .line 182
    .end local v1    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v3    # "_arg2":[I
    .end local v8    # "_arg2_length":I
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_129
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 189
    :sswitch_137
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 196
    :sswitch_145
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 205
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_157
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 217
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 220
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :sswitch_182
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 229
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 235
    .end local v1    # "_arg0":I
    :sswitch_194
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_1b2
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 261
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :sswitch_1c8
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e8

    const/4 v2, 0x1

    .line 267
    .local v2, "_arg1":Z
    :goto_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ea

    const/4 v3, 0x1

    .line 268
    .local v3, "_arg2":Z
    :goto_1df
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 265
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_1e8
    const/4 v2, 0x0

    goto :goto_1d8

    .line 267
    .restart local v2    # "_arg1":Z
    :cond_1ea
    const/4 v3, 0x0

    goto :goto_1df

    .line 274
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :sswitch_1ec
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(II)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 285
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_202
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 296
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_218
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22d

    const/4 v1, 0x1

    .line 299
    .local v1, "_arg0":Z
    :goto_224
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 298
    .end local v1    # "_arg0":Z
    :cond_22d
    const/4 v1, 0x0

    goto :goto_224

    .line 305
    :sswitch_22f
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24b

    const/4 v1, 0x1

    .line 309
    .restart local v1    # "_arg0":Z
    :goto_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24d

    const/4 v2, 0x1

    .line 310
    .local v2, "_arg1":Z
    :goto_242
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 307
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_24b
    const/4 v1, 0x0

    goto :goto_23b

    .line 309
    .restart local v1    # "_arg0":Z
    :cond_24d
    const/4 v2, 0x0

    goto :goto_242

    .line 316
    .end local v1    # "_arg0":Z
    :sswitch_24f
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 323
    :sswitch_25d
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 330
    :sswitch_26b
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 337
    :sswitch_279
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 345
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_297
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->applyEDMPolicy()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 359
    :sswitch_2a5
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleNotificationPanel()V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 366
    :sswitch_2b3
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c8

    const/4 v1, 0x1

    .line 369
    .local v1, "_arg0":Z
    :goto_2bf
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandState(Z)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 368
    .end local v1    # "_arg0":Z
    :cond_2c8
    const/4 v1, 0x0

    goto :goto_2bf

    .line 375
    :sswitch_2ca
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandState()Z

    move-result v10

    .line 377
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v10, :cond_2df

    const/4 v0, 0x1

    :goto_2d9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 378
    :cond_2df
    const/4 v0, 0x0

    goto :goto_2d9

    .line 383
    .end local v10    # "_result":Z
    :sswitch_2e1
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCallBackground(I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 392
    .end local v1    # "_arg0":I
    :sswitch_2f3
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_308

    const/4 v1, 0x1

    .line 395
    .local v1, "_arg0":Z
    :goto_2ff
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setMultiWindowBg(Z)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 394
    .end local v1    # "_arg0":Z
    :cond_308
    const/4 v1, 0x0

    goto :goto_2ff

    .line 401
    :sswitch_30a
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31f

    const/4 v1, 0x1

    .line 404
    .restart local v1    # "_arg0":Z
    :goto_316
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->notifyRecentPanelVisiblity(Z)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 403
    .end local v1    # "_arg0":Z
    :cond_31f
    const/4 v1, 0x0

    goto :goto_316

    .line 39
    nop

    :sswitch_data_322
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_29
        0x4 -> :sswitch_42
        0x5 -> :sswitch_64
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_ca
        0xa -> :sswitch_d8
        0xb -> :sswitch_ea
        0xc -> :sswitch_129
        0xd -> :sswitch_137
        0xe -> :sswitch_145
        0xf -> :sswitch_157
        0x10 -> :sswitch_182
        0x11 -> :sswitch_194
        0x12 -> :sswitch_1b2
        0x13 -> :sswitch_1c8
        0x14 -> :sswitch_1ec
        0x15 -> :sswitch_202
        0x16 -> :sswitch_218
        0x17 -> :sswitch_22f
        0x18 -> :sswitch_24f
        0x19 -> :sswitch_25d
        0x1a -> :sswitch_26b
        0x1b -> :sswitch_279
        0x1c -> :sswitch_297
        0x1d -> :sswitch_2a5
        0x1e -> :sswitch_2b3
        0x1f -> :sswitch_2ca
        0x20 -> :sswitch_2e1
        0x21 -> :sswitch_2f3
        0x22 -> :sswitch_30a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
