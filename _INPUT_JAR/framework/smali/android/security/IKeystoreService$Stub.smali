.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.keystore"

.field static final TRANSACTION_check_password:I = 0x21

.field static final TRANSACTION_clear_uid:I = 0x17

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_del_as_user:I = 0x2b

.field static final TRANSACTION_del_key:I = 0x11

.field static final TRANSACTION_del_key_as_user:I = 0x2c

.field static final TRANSACTION_duplicate:I = 0x15

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_get_by_uid:I = 0x1f

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x14

.field static final TRANSACTION_grant:I = 0x12

.field static final TRANSACTION_import:I = 0xd

.field static final TRANSACTION_import_as_user:I = 0x2a

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_insert_as_user:I = 0x29

.field static final TRANSACTION_is_hardware_backed:I = 0x16

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_lock_mu:I = 0x23

.field static final TRANSACTION_password:I = 0x8

.field static final TRANSACTION_password_mu:I = 0x22

.field static final TRANSACTION_password_uid:I = 0x1a

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_reset_as_user:I = 0x2e

.field static final TRANSACTION_reset_hard_mu:I = 0x28

.field static final TRANSACTION_reset_mu:I = 0x26

.field static final TRANSACTION_reset_uid:I = 0x18

.field static final TRANSACTION_saw:I = 0x6

.field static final TRANSACTION_set_max_retry_count:I = 0x20

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_sync_uid:I = 0x19

.field static final TRANSACTION_test:I = 0x1

.field static final TRANSACTION_test_as_user:I = 0x2d

.field static final TRANSACTION_test_mu:I = 0x25

.field static final TRANSACTION_ungrant:I = 0x13

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_unlock_mu:I = 0x24

.field static final TRANSACTION_verify:I = 0xf

.field static final TRANSACTION_zero:I = 0xb

.field static final TRANSACTION_zero_mu:I = 0x27


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 943
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 944
    const-string v0, "android.security.keystore"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 932
    if-nez p0, :cond_4

    .line 933
    const/4 v0, 0x0

    .line 939
    :goto_3
    return-object v0

    .line 935
    :cond_4
    const-string v1, "android.security.keystore"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 936
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_13

    .line 937
    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_3

    .line 939
    :cond_13
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 948
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

    .line 954
    sparse-switch p1, :sswitch_data_20

    .line 967
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 956
    :sswitch_9
    const-string v2, "android.security.keystore"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 960
    :sswitch_f
    const-string v2, "android.security.keystore"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0}, Landroid/security/IKeystoreService$Stub;->test()I

    move-result v0

    .line 962
    .local v0, "resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 954
    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
