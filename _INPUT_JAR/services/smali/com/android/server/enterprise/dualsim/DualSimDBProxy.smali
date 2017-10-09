.class Lcom/android/server/enterprise/dualsim/DualSimDBProxy;
.super Ljava/lang/Object;
.source "DualSimDBProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSimDBProxy"

.field private static mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    .line 60
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    return-object v0
.end method


# virtual methods
.method addCorporateSimcard(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim"

    const-string v4, "DS_IccId"

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "aUid":I
    if-ne v0, p1, :cond_e

    .line 152
    const/4 v2, 0x1

    .line 160
    :goto_d
    return v2

    .line 154
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    .line 155
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v2, "DS_IccId"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_d

    .line 160
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_d
.end method

.method addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim"

    const-string v5, "DS_IccId"

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "aUid":I
    if-eq v0, p1, :cond_e

    .line 97
    const/4 v2, 0x0

    .line 106
    :goto_d
    return v2

    .line 99
    :cond_e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "WhiteListNumbers"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "DS_IccId"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v3, "DualSimDBProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPhoneToSimcardWhiteList -> uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DSWhiteList"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 106
    .local v2, "ret":Z
    goto :goto_d
.end method

.method clearWhiteList(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DualSim"

    const-string v7, "DS_IccId"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "aUid":I
    if-eq v0, p1, :cond_f

    .line 143
    :cond_e
    :goto_e
    return v3

    .line 135
    :cond_f
    const/4 v2, 0x0

    .line 136
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "DS_IccId"

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DSWhiteList"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 140
    if-lt v2, v4, :cond_e

    move v3, v4

    .line 141
    goto :goto_e
.end method

.method disableForceData()Z
    .registers 5

    .prologue
    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v0, "cvUpdate":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "SimDataForce"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "SimDataForce"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DualSim"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method forceDataThroughSimcard(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "aIccid":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v1, "cvUpdate":Landroid/content/ContentValues;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v2, "cvWhere":Landroid/content/ContentValues;
    if-eqz v0, :cond_2e

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 242
    :goto_17
    return v3

    .line 233
    :cond_18
    const-string v4, "SimDataForce"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "DS_IccId"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DualSim"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 237
    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 238
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 239
    const-string v4, "SimDataForce"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v3, "DS_IccId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_17
.end method

.method getActiveSimcardForMessaging()Ljava/lang/String;
    .registers 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "SimActiveMessaging"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DS_IccId"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getForcedDataSimcard()Ljava/lang/String;
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "SimDataForce"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DS_IccId"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    if-le p1, v7, :cond_15

    .line 68
    iget-object v7, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DualSim"

    const-string v9, "DS_IccId"

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "aUid":I
    if-eq v0, p1, :cond_15

    .line 88
    .end local v0    # "aUid":I
    :cond_14
    return-object v6

    .line 74
    :cond_15
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "WhiteListNumbers"

    aput-object v8, v1, v7

    .line 75
    .local v1, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v7, "DS_IccId"

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v7, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DSWhiteList"

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 82
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 84
    .local v5, "rCv":Landroid/content/ContentValues;
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rCv":Landroid/content/ContentValues;
    check-cast v5, Landroid/content/ContentValues;

    .line 86
    .restart local v5    # "rCv":Landroid/content/ContentValues;
    const-string v7, "WhiteListNumbers"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34
.end method

.method isCorporateSimcard(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DualSim"

    const-string v3, "DS_IccId"

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "aUid":I
    if-ne v0, p1, :cond_e

    .line 175
    const/4 v1, 0x1

    .line 177
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method isCorporateSimcard(Ljava/lang/String;)Z
    .registers 6
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DualSim"

    const-string v3, "DS_IccId"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "aUid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 185
    const/4 v1, 0x1

    .line 187
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method isDataForced()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    new-array v0, v5, [Ljava/lang/String;

    const-string v7, "SimDataForce"

    aput-object v7, v0, v6

    .line 255
    .local v0, "columns":[Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 256
    .local v4, "values":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v3, v6

    const-string v7, "DS_IccId"

    aput-object v7, v3, v5

    .line 258
    .local v3, "returnColumns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DualSim"

    invoke-virtual {v7, v8, v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 265
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_30

    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 269
    :goto_2f
    return v5

    :cond_30
    move v5, v6

    goto :goto_2f
.end method

.method removeCorporateSimcard(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DualSim"

    const-string v2, "DS_IccId"

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DualSim"

    const-string v7, "DS_IccId"

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "aUid":I
    if-eq v0, p1, :cond_f

    .line 125
    :cond_e
    :goto_e
    return v3

    .line 116
    :cond_f
    const/4 v2, 0x0

    .line 117
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "DS_IccId"

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v5, "WhiteListNumbers"

    invoke-virtual {v1, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DSWhiteList"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 122
    if-lt v2, v4, :cond_e

    move v3, v4

    .line 123
    goto :goto_e
.end method

.method setActiveSimcardForMessaging(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "aIccid":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v1, "cvUpdate":Landroid/content/ContentValues;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v2, "cvWhere":Landroid/content/ContentValues;
    if-eqz v0, :cond_2e

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 212
    :goto_17
    return v3

    .line 203
    :cond_18
    const-string v4, "SimActiveMessaging"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "DS_IccId"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DualSim"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 207
    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 208
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 209
    const-string v4, "SimActiveMessaging"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "DS_IccId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_17
.end method
