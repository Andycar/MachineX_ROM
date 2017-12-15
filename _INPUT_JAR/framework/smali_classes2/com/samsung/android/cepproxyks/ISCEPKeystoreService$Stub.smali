.class public abstract Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.super Landroid/os/Binder;
.source "ISCEPKeystoreService.java"

# interfaces
.implements Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cepproxyks.ISCEPKeystoreService"

.field static final TRANSACTION_deletecertificateEntry:I = 0x3

.field static final TRANSACTION_getCertificate:I = 0x5

.field static final TRANSACTION_grantAccessForAKS:I = 0x4

.field static final TRANSACTION_installCACert:I = 0x6

.field static final TRANSACTION_installCACertForWifiCCM:I = 0x7

.field static final TRANSACTION_installCertificateInAndroidKeyStore:I = 0x2

.field static final TRANSACTION_isAliasExists:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;
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
    const-string v1, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_fa

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 45
    :sswitch_a
    const-string v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v8, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2b

    move v2, v7

    .line 55
    .local v2, "_arg1":Z
    :goto_20
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->isAliasExists(Ljava/lang/String;Z)I

    move-result v6

    .line 56
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_2b
    move v2, v0

    .line 54
    goto :goto_20

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v8, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5f

    .line 65
    sget-object v8, Lcom/samsung/android/cepproxyks/CertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cepproxyks/CertByte;

    .line 71
    .local v1, "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v3

    .line 75
    .local v3, "_arg2":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_61

    move v4, v7

    .line 77
    .local v4, "_arg3":Z
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I

    move-result v6

    .line 79
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :cond_5f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    goto :goto_40

    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":[C
    :cond_61
    move v4, v0

    .line 75
    goto :goto_4f

    .line 85
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    :sswitch_63
    const-string v8, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7e

    move v2, v7

    .line 90
    .local v2, "_arg1":Z
    :goto_73
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->deletecertificateEntry(Ljava/lang/String;Z)I

    move-result v6

    .line 91
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_7e
    move v2, v0

    .line 89
    goto :goto_73

    .line 97
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_80
    const-string v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->grantAccessForAKS(ILjava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_95
    const-string v8, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;

    move-result-object v6

    .line 112
    .local v6, "_result":Lcom/samsung/android/cepproxyks/CertificateAKS;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_af

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v6, p3, v7}, Lcom/samsung/android/cepproxyks/CertificateAKS;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 118
    :cond_af
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :sswitch_b4
    const-string v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    .line 127
    sget-object v0, Lcom/samsung/android/cepproxyks/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cepproxyks/CertificateAKS;

    .line 132
    .local v1, "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :goto_c7
    invoke-virtual {p0, v1}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I

    move-result v6

    .line 133
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    .end local v6    # "_result":I
    :cond_d3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    goto :goto_c7

    .line 139
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :sswitch_d5
    const-string v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f8

    .line 142
    sget-object v0, Lcom/samsung/android/cepproxyks/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cepproxyks/CertificateAKS;

    .line 148
    .restart local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :goto_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I

    move-result v6

    .line 150
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :cond_f8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    goto :goto_e8

    .line 41
    :sswitch_data_fa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_63
        0x4 -> :sswitch_80
        0x5 -> :sswitch_95
        0x6 -> :sswitch_b4
        0x7 -> :sswitch_d5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
