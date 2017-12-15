.class public abstract Landroid/app/epm/IPluginManager$Stub;
.super Landroid/os/Binder;
.source "IPluginManager.java"

# interfaces
.implements Landroid/app/epm/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/IPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/IPluginManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.epm.IPluginManager"

.field static final TRANSACTION_changePluginState:I = 0x6

.field static final TRANSACTION_getActiveComponents:I = 0x7

.field static final TRANSACTION_getCategoryList:I = 0x9

.field static final TRANSACTION_getComponentPackageMap:I = 0x3

.field static final TRANSACTION_getLanguagePackList:I = 0x2

.field static final TRANSACTION_getListByCategory:I = 0xa

.field static final TRANSACTION_getPluginDetailsList:I = 0x1

.field static final TRANSACTION_installThemePackage:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_removeThemePackage:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.epm.IPluginManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/epm/IPluginManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManager;
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
    const-string v1, "android.app.epm.IPluginManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/epm/IPluginManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/app/epm/IPluginManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/app/epm/IPluginManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/epm/IPluginManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_f2

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 43
    :sswitch_a
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getPluginDetailsList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 52
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_9

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_24
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getLanguagePackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 62
    .restart local v4    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_38
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v4

    .line 70
    .restart local v4    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_9

    .line 76
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_48
    const-string v7, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_69

    .line 79
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 85
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6b

    move v1, v5

    .line 86
    .local v1, "_arg1":Z
    :goto_62
    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManager$Stub;->installThemePackage(Landroid/net/Uri;Z)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 82
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Z
    :cond_69
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_5b

    :cond_6b
    move v1, v6

    .line 85
    goto :goto_62

    .line 92
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_6d
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->removeThemePackage(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7d
    const-string v7, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a4

    move v3, v5

    .line 110
    .local v3, "_arg3":Z
    :goto_95
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/epm/IPluginManager$Stub;->changePluginState(Ljava/lang/String;IIZ)Z

    move-result v4

    .line 111
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_9f

    move v6, v5

    :cond_9f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Z
    :cond_a4
    move v3, v6

    .line 109
    goto :goto_95

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_a6
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getActiveComponents()[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 125
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_b7
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/epm/IPluginManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManagerCallback;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Landroid/app/epm/IPluginManagerCallback;
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->registerCallback(Landroid/app/epm/IPluginManagerCallback;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 134
    .end local v0    # "_arg0":Landroid/app/epm/IPluginManagerCallback;
    :sswitch_cc
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/epm/IPluginManager$Stub;->getCategoryList()Ljava/util/List;

    move-result-object v4

    .line 136
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 142
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_dd
    const-string v6, "android.app.epm.IPluginManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/epm/IPluginManager$Stub;->getListByCategory(I)Ljava/util/List;

    move-result-object v4

    .line 146
    .restart local v4    # "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_a6
        0x8 -> :sswitch_b7
        0x9 -> :sswitch_cc
        0xa -> :sswitch_dd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
