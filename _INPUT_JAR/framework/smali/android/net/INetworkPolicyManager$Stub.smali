.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final TRANSACTION_addUidPolicy:I = 0x2

.field static final TRANSACTION_getNetworkPolicies:I = 0xc

.field static final TRANSACTION_getNetworkQuotaInfo:I = 0x12

.field static final TRANSACTION_getPowerSaveAppIdWhitelist:I = 0x8

.field static final TRANSACTION_getRestrictBackground:I = 0x10

.field static final TRANSACTION_getUidPolicy:I = 0x4

.field static final TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final TRANSACTION_isNetworkMetered:I = 0x13

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x9

.field static final TRANSACTION_removeUidPolicy:I = 0x3

.field static final TRANSACTION_setLimitBackground:I = 0xf

.field static final TRANSACTION_setNetworkPolicies:I = 0xb

.field static final TRANSACTION_setRestrictBackground:I = 0xe

.field static final TRANSACTION_setRestrictBackgroundByPco:I = 0x11

.field static final TRANSACTION_setUidAllowedForData:I = 0x6

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_snoozeLimit:I = 0xd

.field static final TRANSACTION_unregisterListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/net/INetworkPolicyManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_1c4

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 47
    :sswitch_a
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_24
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_38
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4c
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v2

    .line 89
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_60
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v2

    .line 99
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 105
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_74
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidAllowedForData(II)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 116
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_88
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidForeground(I)Z

    move-result v2

    .line 120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_9b

    move v3, v4

    :cond_9b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_a0
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getPowerSaveAppIdWhitelist()[I

    move-result-object v2

    .line 128
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 134
    .end local v2    # "_result":[I
    :sswitch_b1
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 137
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_c6
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :sswitch_db
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    sget-object v3, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 155
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 161
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :sswitch_f0
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 163
    .local v2, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 169
    .end local v2    # "_result":[Landroid/net/NetworkPolicy;
    :sswitch_101
    const-string v3, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11c

    .line 172
    sget-object v3, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 177
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    :goto_114
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 175
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :cond_11c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_114

    .line 183
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_11e
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_132

    move v0, v4

    .line 186
    .local v0, "_arg0":Z
    :goto_12a
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_132
    move v0, v3

    .line 185
    goto :goto_12a

    .line 192
    :sswitch_134
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_148

    move v0, v4

    .line 195
    .restart local v0    # "_arg0":Z
    :goto_140
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setLimitBackground(Z)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_148
    move v0, v3

    .line 194
    goto :goto_140

    .line 201
    :sswitch_14a
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v2

    .line 203
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v2, :cond_159

    move v3, v4

    :cond_159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 209
    .end local v2    # "_result":Z
    :sswitch_15e
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_172

    move v0, v4

    .line 212
    .restart local v0    # "_arg0":Z
    :goto_16a
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackgroundByPco(Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_172
    move v0, v3

    .line 211
    goto :goto_16a

    .line 218
    :sswitch_174
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_198

    .line 221
    sget-object v5, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 226
    .local v0, "_arg0":Landroid/net/NetworkState;
    :goto_187
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;

    move-result-object v2

    .line 227
    .local v2, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v2, :cond_19a

    .line 229
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v2, p3, v4}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 224
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_198
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    goto :goto_187

    .line 233
    .restart local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :cond_19a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 239
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_19f
    const-string v5, "android.net.INetworkPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c1

    .line 242
    sget-object v5, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 247
    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    :goto_1b2
    invoke-virtual {p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->isNetworkMetered(Landroid/net/NetworkState;)Z

    move-result v2

    .line 248
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v2, :cond_1bc

    move v3, v4

    :cond_1bc
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 245
    .end local v0    # "_arg0":Landroid/net/NetworkState;
    .end local v2    # "_result":Z
    :cond_1c1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkState;
    goto :goto_1b2

    .line 43
    nop

    :sswitch_data_1c4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_60
        0x6 -> :sswitch_74
        0x7 -> :sswitch_88
        0x8 -> :sswitch_a0
        0x9 -> :sswitch_b1
        0xa -> :sswitch_c6
        0xb -> :sswitch_db
        0xc -> :sswitch_f0
        0xd -> :sswitch_101
        0xe -> :sswitch_11e
        0xf -> :sswitch_134
        0x10 -> :sswitch_14a
        0x11 -> :sswitch_15e
        0x12 -> :sswitch_174
        0x13 -> :sswitch_19f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
