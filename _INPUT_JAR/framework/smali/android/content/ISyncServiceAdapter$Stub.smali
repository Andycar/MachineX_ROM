.class public abstract Landroid/content/ISyncServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncServiceAdapter.java"

# interfaces
.implements Landroid/content/ISyncServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncServiceAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_startSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.ISyncServiceAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;
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
    const-string v1, "android.content.ISyncServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/ISyncServiceAdapter;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/content/ISyncServiceAdapter;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/content/ISyncServiceAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/ISyncServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_42

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 48
    :sswitch_9
    const-string v3, "android.content.ISyncServiceAdapter"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 53
    :sswitch_f
    const-string v3, "android.content.ISyncServiceAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 58
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 63
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_2a
    invoke-virtual {p0, v0, v1}, Landroid/content/ISyncServiceAdapter$Stub;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V

    goto :goto_8

    .line 61
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2a

    .line 68
    .end local v0    # "_arg0":Landroid/content/ISyncContext;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_30
    const-string v3, "android.content.ISyncServiceAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    goto :goto_8

    .line 44
    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
