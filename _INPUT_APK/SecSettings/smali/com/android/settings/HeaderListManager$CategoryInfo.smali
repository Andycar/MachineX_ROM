.class Lcom/android/settings/HeaderListManager$CategoryInfo;
.super Ljava/lang/Object;
.source "HeaderListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HeaderListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryInfo"
.end annotation


# instance fields
.field public allList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/HeaderListManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/HeaderListManager;)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/HeaderListManager$CategoryInfo;->this$0:Lcom/android/settings/HeaderListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HeaderListManager$CategoryInfo;->allList:Ljava/util/ArrayList;

    .line 242
    invoke-direct {p0}, Lcom/android/settings/HeaderListManager$CategoryInfo;->initAllList()V

    .line 243
    return-void
.end method

.method private initAllList()V
    .locals 5

    .prologue
    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/HeaderListManager$CategoryInfo;->allList:Ljava/util/ArrayList;

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 263
    sget-object v2, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    .line 269
    .local v2, "tmpList":[[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 270
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    aget-object v3, v2, v0

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/android/settings/HeaderListManager$CategoryInfo;->allList:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmpList":[[I
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    sget-object v2, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    .restart local v2    # "tmpList":[[I
    goto :goto_0

    .line 267
    .end local v2    # "tmpList":[[I
    :cond_1
    sget-object v2, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    .restart local v2    # "tmpList":[[I
    goto :goto_0

    .line 269
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v1    # "j":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getTabList(I)[I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 246
    if-gez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 249
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 250
    sget-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_FOR_KNOX:[[I

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID_IN_GRIDLIST:[[I

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 254
    :cond_2
    sget-object v0, Lcom/android/settings/HeaderListManager;->DRAWER_GROUP_BY_CATEGORY_ID:[[I

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
