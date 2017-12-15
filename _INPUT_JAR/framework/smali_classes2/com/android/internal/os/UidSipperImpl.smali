.class public Lcom/android/internal/os/UidSipperImpl;
.super Ljava/lang/Object;
.source "UidSipperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/UidSipperImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private consumerPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;",
            ">;"
        }
    .end annotation
.end field

.field private finalPower:D

.field private isConsumerListIncluded:Z

.field private final uidSippers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 307
    new-instance v0, Lcom/android/internal/os/UidSipperImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/UidSipperImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/UidSipperImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "BatteryStatsDumper"

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 23
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 35
    const-string v8, "BatteryStatsDumper"

    const-string v9, "Creating UidSipperImpl class from parcel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 41
    .local v19, "uidNum":I
    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Total number of uids = "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_33
    move/from16 v0, v19

    if-ge v14, v0, :cond_f4

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 47
    .local v17, "name":Ljava/lang/String;
    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Creating UidSipper class for "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v3, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, "uidSipper":Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 53
    .local v12, "finalTotalPower":D
    invoke-virtual {v3, v12, v13}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6f

    .line 57
    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 61
    :cond_6f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_79

    .line 63
    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    .line 67
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, "bsNum":I
    const-string v8, "BatteryStatsDumper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Total number of graph points for this uid is "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_98
    if-ge v15, v2, :cond_b4

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "time":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b2

    const/4 v5, 0x1

    .line 77
    .local v5, "lcdOn":Z
    :goto_a6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 79
    .local v6, "power":D
    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 71
    add-int/lit8 v15, v15, 0x1

    goto :goto_98

    .line 75
    .end local v5    # "lcdOn":Z
    .end local v6    # "power":D
    :cond_b2
    const/4 v5, 0x0

    goto :goto_a6

    .line 83
    .end local v4    # "time":Ljava/lang/String;
    :cond_b4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 85
    .local v10, "consumerNum":I
    if-eqz v10, :cond_e9

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    .line 89
    const/4 v15, 0x0

    :goto_be
    if-ge v15, v10, :cond_e9

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .restart local v4    # "time":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 95
    .local v11, "count":I
    const/16 v18, 0x0

    .line 97
    .local v18, "packages":[Ljava/lang/String;
    if-eqz v11, :cond_df

    .line 99
    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 101
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_d2
    move/from16 v0, v16

    if-ge v0, v11, :cond_df

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v18, v16

    .line 101
    add-int/lit8 v16, v16, 0x1

    goto :goto_d2

    .line 109
    .end local v16    # "k":I
    :cond_df
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 89
    add-int/lit8 v15, v15, 0x1

    goto :goto_be

    .line 115
    .end local v4    # "time":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v18    # "packages":[Ljava/lang/String;
    :cond_e9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_33

    .line 119
    .end local v2    # "bsNum":I
    .end local v3    # "uidSipper":Lcom/android/internal/os/UidSipper;
    .end local v10    # "consumerNum":I
    .end local v12    # "finalTotalPower":D
    .end local v15    # "j":I
    .end local v17    # "name":Ljava/lang/String;
    :cond_f4
    return-void
.end method


# virtual methods
.method addConsumerPackages(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "names"    # [Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "names"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public addUidSipper(Lcom/android/internal/os/UidSipper;)V
    .registers 3
    .param p1, "uidSipper"    # Lcom/android/internal/os/UidSipper;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public getFinalPower()D
    .registers 3

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    return-wide v0
.end method

.method public getPowerConsumingPackageList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUsageList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/UidSipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initializeConsumerList()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public isConsumerListIncluded()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    return v0
.end method

.method public setFinalPower(D)V
    .registers 4
    .param p1, "power"    # D

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 135
    iget-wide v12, p0, Lcom/android/internal/os/UidSipperImpl;->finalPower:D

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    .line 137
    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 139
    .local v10, "uidNum":I
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v10, :cond_ae

    .line 145
    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->uidSippers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/UidSipper;

    .line 147
    .local v9, "uSipper":Lcom/android/internal/os/UidSipper;
    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v12

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    .line 151
    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->isUserLaunched()Z

    move-result v11

    if-eqz v11, :cond_68

    const/4 v11, 0x1

    :goto_2c
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    invoke-virtual {v9}, Lcom/android/internal/os/UidSipper;->isUsingNetwork()Z

    move-result v11

    if-eqz v11, :cond_6a

    const/4 v11, 0x1

    :goto_36
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    .line 155
    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 157
    .local v1, "bsNum":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_43
    if-ge v6, v1, :cond_6e

    .line 161
    iget-object v11, v9, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidSipper$BatterySipStat;

    .line 163
    .local v0, "bSipStat":Lcom/android/internal/os/UidSipper$BatterySipStat;
    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->isLcdOn()Z

    move-result v11

    if-eqz v11, :cond_6c

    const/4 v11, 0x1

    :goto_5b
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    invoke-virtual {v0}, Lcom/android/internal/os/UidSipper$BatterySipStat;->getPower()D

    move-result-wide v12

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 151
    .end local v0    # "bSipStat":Lcom/android/internal/os/UidSipper$BatterySipStat;
    .end local v1    # "bsNum":I
    .end local v6    # "j":I
    :cond_68
    const/4 v11, 0x0

    goto :goto_2c

    .line 153
    :cond_6a
    const/4 v11, 0x0

    goto :goto_36

    .line 165
    .restart local v0    # "bSipStat":Lcom/android/internal/os/UidSipper$BatterySipStat;
    .restart local v1    # "bsNum":I
    .restart local v6    # "j":I
    :cond_6c
    const/4 v11, 0x0

    goto :goto_5b

    .line 171
    .end local v0    # "bSipStat":Lcom/android/internal/os/UidSipper$BatterySipStat;
    :cond_6e
    iget-boolean v11, p0, Lcom/android/internal/os/UidSipperImpl;->isConsumerListIncluded:Z

    if-eqz v11, :cond_a5

    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 173
    .local v3, "consumerNum":I
    :goto_78
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v6, 0x0

    :goto_7c
    if-ge v6, v3, :cond_aa

    .line 177
    iget-object v11, p0, Lcom/android/internal/os/UidSipperImpl;->consumerPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;

    .line 179
    .local v2, "consumer":Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getPackageCount()I

    move-result v4

    .line 183
    .local v4, "count":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    if-eqz v4, :cond_a7

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->getPackageNames()[Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "packages":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_9b
    if-ge v7, v4, :cond_a7

    .line 191
    aget-object v11, v8, v7

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 171
    .end local v2    # "consumer":Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    .end local v3    # "consumerNum":I
    .end local v4    # "count":I
    .end local v7    # "k":I
    .end local v8    # "packages":[Ljava/lang/String;
    :cond_a5
    const/4 v3, 0x0

    goto :goto_78

    .line 175
    .restart local v2    # "consumer":Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    .restart local v3    # "consumerNum":I
    .restart local v4    # "count":I
    :cond_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 143
    .end local v2    # "consumer":Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
    .end local v4    # "count":I
    :cond_aa
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    .line 201
    .end local v1    # "bsNum":I
    .end local v3    # "consumerNum":I
    .end local v6    # "j":I
    .end local v9    # "uSipper":Lcom/android/internal/os/UidSipper;
    :cond_ae
    return-void
.end method
