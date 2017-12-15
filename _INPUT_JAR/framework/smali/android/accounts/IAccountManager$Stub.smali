.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_addAccount:I = 0x15

.field static final TRANSACTION_addAccountAsUser:I = 0x16

.field static final TRANSACTION_addAccountExplicitly:I = 0xa

.field static final TRANSACTION_addSharedAccountAsUser:I = 0x1b

.field static final TRANSACTION_clearPassword:I = 0x11

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x19

.field static final TRANSACTION_editProperties:I = 0x18

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsAsUser:I = 0x7

.field static final TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x6

.field static final TRANSACTION_getAccountsForPackage:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x14

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1a

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x1f

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1c

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0xd

.field static final TRANSACTION_peekAuthToken:I = 0xe

.field static final TRANSACTION_removeAccount:I = 0xb

.field static final TRANSACTION_removeAccountAsUser:I = 0xc

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x1d

.field static final TRANSACTION_renameAccount:I = 0x1e

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x20

.field static final TRANSACTION_setAuthToken:I = 0xf

.field static final TRANSACTION_setPassword:I = 0x10

.field static final TRANSACTION_setUserData:I = 0x12

.field static final TRANSACTION_updateAppPermission:I = 0x13

.field static final TRANSACTION_updateCredentials:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
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
    const-string v1, "android.accounts.IAccountManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/accounts/IAccountManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/accounts/IAccountManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_4ea

    .line 596
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 46
    :sswitch_a
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 54
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 59
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_23
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 57
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    .line 66
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_30
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    .line 69
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 75
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 72
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_43

    .line 83
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_54
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    .line 87
    .local v8, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 93
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :sswitch_68
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 97
    .local v8, "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":[Landroid/accounts/Account;
    :sswitch_7c
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v8

    .line 109
    .restart local v8    # "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":[Landroid/accounts/Account;
    :sswitch_95
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 121
    .restart local v8    # "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 127
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":[Landroid/accounts/Account;
    :sswitch_ae
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v8

    .line 133
    .restart local v8    # "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":[Landroid/accounts/Account;
    :sswitch_c7
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 143
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ee

    .line 144
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 150
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 147
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :cond_ee
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_e2

    .line 157
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :sswitch_f0
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3    # "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 170
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :sswitch_10d
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_141

    .line 173
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 179
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_143

    .line 182
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 187
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_132
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    .line 188
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v8, :cond_13c

    move v0, v9

    :cond_13c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 176
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v8    # "_result":Z
    :cond_141
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_120

    .line 185
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_143
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_132

    .line 194
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_145
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 198
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_168

    .line 199
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 204
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_160
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :cond_168
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_160

    .line 210
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :sswitch_16a
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_191

    .line 215
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 221
    .restart local v2    # "_arg1":Landroid/accounts/Account;
    :goto_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 218
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":I
    :cond_191
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_185

    .line 228
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :sswitch_193
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 239
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1a8
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1cb

    .line 242
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 248
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 245
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_1cb
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_1bb

    .line 256
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_1cd
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f0

    .line 259
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 265
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_1e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 262
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_1f0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_1e0

    .line 274
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_1f2
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_211

    .line 277
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 283
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 280
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_211
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_205

    .line 290
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_213
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22e

    .line 293
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 298
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_226
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 296
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :cond_22e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_226

    .line 304
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_230
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_253

    .line 307
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 313
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 316
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 310
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_253
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_243

    .line 322
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_255
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27f

    .line 325
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 331
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_281

    move v4, v9

    .line 336
    .local v4, "_arg3":Z
    :goto_277
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 328
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :cond_27f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_268

    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":I
    :cond_281
    move v4, v0

    .line 335
    goto :goto_277

    .line 342
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_283
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 346
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c7

    .line 347
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 353
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_29e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c9

    move v4, v9

    .line 357
    .restart local v4    # "_arg3":Z
    :goto_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2cb

    move v5, v9

    .line 359
    .local v5, "_arg4":Z
    :goto_2b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2cd

    .line 360
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, "_arg5":Landroid/os/Bundle;
    :goto_2be
    move-object v0, p0

    .line 365
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 350
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :cond_2c7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_29e

    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_2c9
    move v4, v0

    .line 355
    goto :goto_2a9

    .restart local v4    # "_arg3":Z
    :cond_2cb
    move v5, v0

    .line 357
    goto :goto_2b0

    .line 363
    .restart local v5    # "_arg4":Z
    :cond_2cd
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    goto :goto_2be

    .line 371
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :sswitch_2cf
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 375
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_306

    move v5, v9

    .line 383
    .restart local v5    # "_arg4":Z
    :goto_2ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_308

    .line 384
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    :goto_2fd
    move-object v0, p0

    .line 389
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :cond_306
    move v5, v0

    .line 381
    goto :goto_2ef

    .line 387
    .restart local v5    # "_arg4":Z
    :cond_308
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    goto :goto_2fd

    .line 395
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :sswitch_30a
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 399
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 405
    .restart local v4    # "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_345

    move v5, v9

    .line 407
    .restart local v5    # "_arg4":Z
    :goto_32a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_347

    .line 408
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 414
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    :goto_338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 415
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    :cond_345
    move v5, v0

    .line 405
    goto :goto_32a

    .line 411
    .restart local v5    # "_arg4":Z
    :cond_347
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    goto :goto_338

    .line 421
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :sswitch_349
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 425
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_386

    .line 426
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 432
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 434
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_388

    move v4, v9

    .line 436
    .local v4, "_arg3":Z
    :goto_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38a

    .line 437
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_37d
    move-object v0, p0

    .line 442
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 429
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :cond_386
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_364

    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_388
    move v4, v0

    .line 434
    goto :goto_36f

    .line 440
    .restart local v4    # "_arg3":Z
    :cond_38a
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_37d

    .line 448
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_38c
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 452
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3ac

    move v3, v9

    .line 455
    .local v3, "_arg2":Z
    :goto_3a4
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    :cond_3ac
    move v3, v0

    .line 454
    goto :goto_3a4

    .line 461
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_3ae
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 465
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3eb

    .line 466
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 472
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3ed

    .line 473
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 479
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_3d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3ef

    move v4, v9

    .line 481
    .restart local v4    # "_arg3":Z
    :goto_3de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 482
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 469
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :cond_3eb
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_3c9

    .line 476
    :cond_3ed
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_3d7

    :cond_3ef
    move v4, v0

    .line 479
    goto :goto_3de

    .line 488
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_3f1
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 492
    .restart local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 501
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_40e
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_434

    .line 504
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 510
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v8

    .line 512
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v8, :cond_42f

    move v0, v9

    :cond_42f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 507
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_434
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_421

    .line 518
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_436
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 522
    .local v8, "_result":[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 528
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Landroid/accounts/Account;
    :sswitch_44b
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_471

    .line 531
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 537
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_45e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v8

    .line 539
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v8, :cond_46c

    move v0, v9

    :cond_46c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 534
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_471
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_45e

    .line 545
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_473
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 549
    .local v1, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49a

    .line 550
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 556
    .local v2, "_arg1":Landroid/accounts/Account;
    :goto_48e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 553
    .end local v2    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_49a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/accounts/Account;
    goto :goto_48e

    .line 563
    .end local v1    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v2    # "_arg1":Landroid/accounts/Account;
    :sswitch_49c
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4bb

    .line 566
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 571
    .local v1, "_arg0":Landroid/accounts/Account;
    :goto_4af
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v8

    .line 572
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 569
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_4bb
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_4af

    .line 578
    .end local v1    # "_arg0":Landroid/accounts/Account;
    :sswitch_4bd
    const-string v10, "android.accounts.IAccountManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4e7

    .line 581
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 587
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    :goto_4d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    .line 591
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v8, :cond_4e2

    move v0, v9

    :cond_4e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 584
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_4e7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/accounts/Account;
    goto :goto_4d0

    .line 42
    nop

    :sswitch_data_4ea
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_54
        0x4 -> :sswitch_68
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_95
        0x7 -> :sswitch_ae
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_f0
        0xa -> :sswitch_10d
        0xb -> :sswitch_145
        0xc -> :sswitch_16a
        0xd -> :sswitch_193
        0xe -> :sswitch_1a8
        0xf -> :sswitch_1cd
        0x10 -> :sswitch_1f2
        0x11 -> :sswitch_213
        0x12 -> :sswitch_230
        0x13 -> :sswitch_255
        0x14 -> :sswitch_283
        0x15 -> :sswitch_2cf
        0x16 -> :sswitch_30a
        0x17 -> :sswitch_349
        0x18 -> :sswitch_38c
        0x19 -> :sswitch_3ae
        0x1a -> :sswitch_3f1
        0x1b -> :sswitch_40e
        0x1c -> :sswitch_436
        0x1d -> :sswitch_44b
        0x1e -> :sswitch_473
        0x1f -> :sswitch_49c
        0x20 -> :sswitch_4bd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
