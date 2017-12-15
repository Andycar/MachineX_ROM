.class public abstract Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;
.super Landroid/os/Binder;
.source "IMagazineCardManager.java"

# interfaces
.implements Lcom/samsung/android/magazinecard/IMagazineCardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/IMagazineCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.magazinecard.IMagazineCardManager"

.field static final TRANSACTION_addCard:I = 0x1

.field static final TRANSACTION_getCard:I = 0x7

.field static final TRANSACTION_getCardRecordIdList:I = 0x6

.field static final TRANSACTION_isCardExist:I = 0x5

.field static final TRANSACTION_removeAllCard:I = 0x4

.field static final TRANSACTION_removeCard:I = 0x3

.field static final TRANSACTION_updateCard:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/magazinecard/IMagazineCardManager;
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
    const-string v1, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/magazinecard/IMagazineCardManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_120

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 45
    :sswitch_a
    const-string v4, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 55
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 61
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 62
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 67
    .local v2, "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :goto_35
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 58
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :cond_3c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_27

    .line 65
    :cond_3e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    goto :goto_35

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :sswitch_40
    const-string v4, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 78
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 84
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    .line 85
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 90
    .restart local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :goto_65
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :cond_6c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_57

    .line 88
    :cond_6e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    goto :goto_65

    .line 96
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Lcom/samsung/android/magazinecard/MagazineCardInfo;
    :sswitch_70
    const-string v4, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_93

    .line 101
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 107
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->removeCard(ILandroid/content/ComponentName;I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 104
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    :cond_93
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_87

    .line 114
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_95
    const-string v4, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    .line 119
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 124
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_ac
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->removeAllCard(ILandroid/content/ComponentName;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 122
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_b4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_ac

    .line 130
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_b6
    const-string v6, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e0

    .line 135
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 141
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->isCardExist(ILandroid/content/ComponentName;I)Z

    move-result v3

    .line 143
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v3, :cond_db

    move v4, v5

    :cond_db
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 138
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :cond_e0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_cd

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_e2
    const-string v6, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fe

    move v1, v5

    .line 154
    .local v1, "_arg1":Z
    :goto_f2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->getCardRecordIdList(IZ)[I

    move-result-object v3

    .line 155
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":[I
    :cond_fe
    move v1, v4

    .line 153
    goto :goto_f2

    .line 161
    .end local v0    # "_arg0":I
    :sswitch_100
    const-string v6, "com.samsung.android.magazinecard.IMagazineCardManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;

    move-result-object v3

    .line 165
    .local v3, "_result":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v3, :cond_11a

    .line 167
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/magazinecard/MagazineCardRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 171
    :cond_11a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_120
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_40
        0x3 -> :sswitch_70
        0x4 -> :sswitch_95
        0x5 -> :sswitch_b6
        0x6 -> :sswitch_e2
        0x7 -> :sswitch_100
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
