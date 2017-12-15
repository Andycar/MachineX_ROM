.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final TRANSACTION_onPackageAdded:I = 0x2

.field static final TRANSACTION_onPackageChanged:I = 0x3

.field static final TRANSACTION_onPackageRemoved:I = 0x1

.field static final TRANSACTION_onPackagesAvailable:I = 0x4

.field static final TRANSACTION_onPackagesUnavailable:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
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
    const-string v1, "android.content.pm.IOnAppsChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_b0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 53
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 59
    .local v0, "_arg0":Landroid/os/UserHandle;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_9

    .line 56
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_2b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_23

    .line 65
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_2d
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 68
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 74
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_40

    .line 80
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_4a
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 83
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 89
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_65
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_5d

    .line 95
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_67
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    .line 98
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 104
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    :goto_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_85

    move v2, v3

    .line 107
    .local v2, "_arg2":Z
    :cond_85
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    goto :goto_9

    .line 101
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :cond_89
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_7a

    .line 112
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    :sswitch_8b
    const-string v4, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    .line 115
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 121
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    :goto_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a9

    move v2, v3

    .line 124
    .restart local v2    # "_arg2":Z
    :cond_a9
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 118
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :cond_ae
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    goto :goto_9e

    .line 41
    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_67
        0x5 -> :sswitch_8b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
