.class public abstract Landroid/service/notification/IConditionProvider$Stub;
.super Landroid/os/Binder;
.source "IConditionProvider.java"

# interfaces
.implements Landroid/service/notification/IConditionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IConditionProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.IConditionProvider"

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onRequestConditions:I = 0x2

.field static final TRANSACTION_onSubscribe:I = 0x3

.field static final TRANSACTION_onUnsubscribe:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.notification.IConditionProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;
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
    const-string v1, "android.service.notification.IConditionProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/notification/IConditionProvider;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/service/notification/IConditionProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/notification/IConditionProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_58

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v2, "android.service.notification.IConditionProvider"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v2, "android.service.notification.IConditionProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/service/notification/IConditionProvider$Stub;->onConnected()V

    goto :goto_8

    .line 54
    :sswitch_18
    const-string v2, "android.service.notification.IConditionProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onRequestConditions(I)V

    goto :goto_8

    .line 62
    .end local v0    # "_arg0":I
    :sswitch_25
    const-string v2, "android.service.notification.IConditionProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 65
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 70
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_38
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onSubscribe(Landroid/net/Uri;)V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_38

    .line 75
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_3e
    const-string v2, "android.service.notification.IConditionProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    .line 78
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 83
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_51
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onUnsubscribe(Landroid/net/Uri;)V

    goto :goto_8

    .line 81
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_55
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_51

    .line 39
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x3 -> :sswitch_25
        0x4 -> :sswitch_3e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
