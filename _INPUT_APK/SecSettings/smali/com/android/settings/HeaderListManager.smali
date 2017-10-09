.class public Lcom/android/settings/HeaderListManager;
.super Ljava/lang/Object;
.source "HeaderListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HeaderListManager$CategoryInfo;
    }
.end annotation


# static fields
.field public static final DRAWER_GROUP_BY_CATEGORY_ID:[[I

.field public static final DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

.field public static final DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

.field public static final TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;


# instance fields
.field private SUB_SETTINGS_FOR_FAVORITE:[I

.field private favoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

.field private pos:I

.field private prevCountOfFavorites:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f1006cb

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f100644

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f100655

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f1006d3

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f1006d4

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const v2, 0x7f10067f

    aput v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f100644

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f100655

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x7f1006cb

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    new-array v1, v4, [I

    const v2, 0x7f100644

    aput v2, v1, v3

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Conncetions"

    aput-object v1, v0, v3

    const-string v1, "My deivices"

    aput-object v1, v0, v4

    const-string v1, "Controls"

    aput-object v1, v0, v5

    const-string v1, "General"

    aput-object v1, v0, v6

    const-string v1, "Applications"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/HeaderListManager;->TAB_NAME_FOR_TAB_VIEW:[Ljava/lang/String;

    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x7f100655
        0x7f1006bb
    .end array-data

    :array_1
    .array-data 4
        0x7f1006bd
        0x7f1006c9
    .end array-data

    :array_2
    .array-data 4
        0x7f1006b5
        0x7f10067f
    .end array-data

    .line 35
    :array_3
    .array-data 4
        0x7f1006bd
        0x7f1006c9
    .end array-data

    :array_4
    .array-data 4
        0x7f1006b5
        0x7f10067f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->SUB_SETTINGS_FOR_FAVORITE:[I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    .line 75
    iput v2, p0, Lcom/android/settings/HeaderListManager;->prevCountOfFavorites:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    .line 80
    iput v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    .line 83
    iput-object p1, p0, Lcom/android/settings/HeaderListManager;->mContext:Landroid/content/Context;

    .line 84
    iput v2, p0, Lcom/android/settings/HeaderListManager;->prevCountOfFavorites:I

    .line 85
    iput v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    .line 86
    return-void

    .line 44
    :array_0
    .array-data 4
        0x7f1006be
        0x7f1006bf
        0x7f1006c0
        0x7f1006c1
        0x7f1006c2
        0x7f1006c3
        0x7f1006cf
    .end array-data
.end method

.method private updateHeaderListByType(ILjava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p3, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimple()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    .line 213
    .local v3, "ids":[I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1

    .line 214
    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    .line 217
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    sget-object v7, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    add-int/lit8 v8, p1, -0x1

    aget-object v3, v7, v8

    .line 222
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_5

    aget v2, v0, v1

    .line 225
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 228
    .local v4, "idx":I
    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 230
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v7}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    if-nez v7, :cond_3

    .line 224
    .end local v4    # "idx":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "id":I
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 235
    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFavoriteCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p2, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    sparse-switch v1, :sswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 111
    :sswitch_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_gridui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, "isTabView":Z
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    goto :goto_0

    .line 123
    .end local v0    # "isTabView":Z
    :sswitch_1
    iget v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/settings/HeaderListManager;->updateHeaderListByType(ILjava/util/List;Ljava/util/HashMap;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/HeaderListManager;->removeGridListCategory(Ljava/util/List;)V

    goto :goto_0

    .line 129
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 133
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    goto :goto_0

    .line 136
    :sswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/HeaderListManager;->removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/HeaderListManager;->removeEmptyCategory(Ljava/util/List;)V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/settings/HeaderListManager;->pos:I

    return v0
.end method

.method public getTabList()[I
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/android/settings/HeaderListManager$CategoryInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/HeaderListManager$CategoryInfo;-><init>(Lcom/android/settings/HeaderListManager;)V

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    iget v1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager$CategoryInfo;->getTabList(I)[I

    move-result-object v0

    return-object v0
.end method

.method public isContain(I)Z
    .locals 2
    .param p1, "headerID"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/android/settings/HeaderListManager$CategoryInfo;

    invoke-direct {v0, p0}, Lcom/android/settings/HeaderListManager$CategoryInfo;-><init>(Lcom/android/settings/HeaderListManager;)V

    iput-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mInfo:Lcom/android/settings/HeaderListManager$CategoryInfo;

    iget-object v0, v0, Lcom/android/settings/HeaderListManager$CategoryInfo;->allList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p2, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/settings/HeaderListManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/HeaderListManager;->favoriteList:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/Utils;->loadFavorite(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 90
    return-void
.end method

.method public removeEmptyCategory(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v3, 0x0

    .line 153
    .local v3, "i":I
    const/4 v4, -0x1

    .line 154
    .local v4, "lastCategoryIdx":I
    const/4 v1, -0x1

    .line 156
    .local v1, "headerCnt":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 157
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 158
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 160
    .local v2, "headerType":I
    if-nez v2, :cond_1

    .line 161
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-nez v1, :cond_0

    .line 162
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    move v4, v3

    .line 165
    const/4 v1, 0x0

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "headerType":I
    :cond_2
    return-void
.end method

.method public removeGridListCategory(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeSubMenu(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p2, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 178
    .local v1, "i":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 181
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v4

    .line 182
    .local v2, "id":I
    const v4, 0x7f1006c0

    if-ne v2, v4, :cond_3

    .line 183
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/HeaderListManager;->SUB_SETTINGS_FOR_FAVORITE:[I

    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 200
    .local v3, "idx":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "idx":I
    :cond_3
    const v4, 0x7f1006c1

    if-ne v2, v4, :cond_1

    .line 187
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 204
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "id":I
    :cond_4
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/settings/HeaderListManager;->pos:I

    .line 94
    return-void
.end method
