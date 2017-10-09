.class public Lcom/android/settings/RecommendedAppsList;
.super Landroid/app/ListFragment;
.source "RecommendedAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RecommendedAppsList$AlphaComparator;,
        Lcom/android/settings/RecommendedAppsList$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_RECOMMENDED_APPS:I

.field private static list_view:Landroid/widget/ListView;

.field private static mEditDirect:I

.field private static mEditValue:Ljava/lang/String;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

.field private mExtraAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDone:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedRecommendedAppsNums:I

.field mTabletTabStyle:Z

.field private mTempApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCheckedApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mapp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/RecommendedAppsList;->MAX_RECOMMENDED_APPS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    .line 90
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 92
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    .line 94
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 96
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mapp:Ljava/util/List;

    .line 97
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 430
    return-void
.end method

.method private SavedRecommendedAppsList()V
    .locals 6

    .prologue
    .line 445
    const-string v2, ""

    .line 446
    .local v2, "mTempAppinfo":Ljava/lang/String;
    const-string v1, ""

    .line 447
    .local v1, "mTempAppList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 449
    .local v0, "CheckedApplistData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 451
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 458
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 460
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 465
    :cond_3
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedRecommendedAppList mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "earphones"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_earphones"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 476
    :cond_4
    :goto_2
    return-void

    .line 471
    :cond_5
    const-string v3, "docking"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_dockings"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 473
    :cond_6
    const-string v3, "roaming"

    sget-object v4, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "recommended_apps_list_roaming"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppsList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->getCheckedRecommendedAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppsList;)Lcom/android/settings/RecommendedAppsList$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendedAppsList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/RecommendedAppsList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->initializeActionBarTitle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/RecommendedAppsList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendedAppsList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RecommendedAppsList;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getCheckedRecommendedAppNum()I
    .locals 6

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "mCheckedAppNum":I
    const-string v2, ""

    .line 481
    .local v2, "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 483
    .local v0, "CheckedData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mCheckedAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 485
    .restart local v2    # "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const-string v3, "RecommendedAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedRecommendedAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v1
.end method

.method private initializeActionBarTitle()V
    .locals 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1e60

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->getCheckedRecommendedAppNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/settings/RecommendedAppsList;->MAX_RECOMMENDED_APPS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 398
    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    .line 400
    .local v7, "mIconResizer":Lcom/android/settings/lockscreenshortcut/IconResizer;
    const/4 v5, 0x0

    .line 401
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 402
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 405
    .local v0, "activityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 406
    .local v2, "cscIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 407
    :try_start_0
    invoke-virtual {v7, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 424
    :cond_0
    :goto_0
    return-object v5

    .line 409
    :cond_1
    iget-object v9, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 410
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 412
    .local v6, "iconDpi":I
    invoke-virtual {v7, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v9

    invoke-virtual {v1, p1, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 413
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 416
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconDpi":I
    :catch_0
    move-exception v4

    .line 417
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RecommendedAppList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 419
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "RecommendedAppList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v9, "RecommendedAppList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    .line 191
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v6, "LauncherIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    .line 199
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 201
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v1, "com.nttdocomo.android.docomo_market"

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.felicanetworks.mfm"

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "mAppinfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    .end local v11    # "mAppinfo":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 211
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 211
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 219
    .end local v10    # "j":I
    :cond_5
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    new-instance v7, Lcom/android/settings/RecommendedAppsList$AlphaComparator;

    invoke-direct {v7, p0}, Lcom/android/settings/RecommendedAppsList$AlphaComparator;-><init>(Lcom/android/settings/RecommendedAppsList;)V

    .line 222
    .local v7, "alphaComparator":Lcom/android/settings/RecommendedAppsList$AlphaComparator;
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 226
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    .line 227
    const/4 v8, 0x0

    .line 228
    .local v8, "checkedpackage":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 229
    .restart local v11    # "mAppinfo":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    iget v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    if-ge v10, v0, :cond_8

    .line 230
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v1, v0, v10

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v1, v0, v10

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const/4 v8, 0x1

    .line 229
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 238
    :cond_8
    if-nez v8, :cond_9

    .line 239
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 244
    .end local v8    # "checkedpackage":Z
    .end local v10    # "j":I
    .end local v11    # "mAppinfo":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_c

    .line 245
    :cond_b
    const v3, 0x7f0401c8

    .line 249
    .local v3, "resLayout":I
    :goto_6
    new-instance v0, Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsList;->mExtraAppList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/RecommendedAppsList$AppListAdapter;-><init>(Lcom/android/settings/RecommendedAppsList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    .line 252
    sget-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList;->mAppListAdapter:Lcom/android/settings/RecommendedAppsList$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    sget-object v0, Lcom/android/settings/RecommendedAppsList;->list_view:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/RecommendedAppsList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RecommendedAppsList$1;-><init>(Lcom/android/settings/RecommendedAppsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    invoke-virtual {p0, v12}, Lcom/android/settings/RecommendedAppsList;->setHasOptionsMenu(Z)V

    .line 287
    return-void

    .line 247
    .end local v3    # "resLayout":I
    :cond_c
    const v3, 0x7f04021f

    .restart local v3    # "resLayout":I
    goto :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 117
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v6, "edit_value"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    .line 118
    const-string v6, "edit_direct"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    .line 120
    const-string v6, "earphones"

    sget-object v9, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "recommended_apps_list_earphones"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    .line 128
    :cond_0
    :goto_0
    const-string v6, "RecommendedAppList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SavedApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    array-length v6, v6

    iput v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    .line 134
    :cond_1
    iget v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 135
    iget v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 136
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedRecommendedAppsNums:I

    if-ge v3, v6, :cond_4

    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, "package_index":I
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/16 v9, 0x2f

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 139
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "package_name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v3

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "activity_name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v5, v6, v3

    .line 142
    iget-object v6, p0, Lcom/android/settings/RecommendedAppsList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v1, v6, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "activity_name":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "package_index":I
    .end local v5    # "package_name":Ljava/lang/String;
    :cond_2
    const-string v6, "docking"

    sget-object v9, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "recommended_apps_list_dockings"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :cond_3
    const-string v6, "roaming"

    sget-object v9, Lcom/android/settings/RecommendedAppsList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "recommended_apps_list_roaming"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/RecommendedAppsList;->SavedApplist:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    .restart local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "settings_listui"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/RecommendedAppsList;->mTabletTabStyle:Z

    .line 146
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/settings/RecommendedAppsList;->mTabletTabStyle:Z

    if-eqz v6, :cond_8

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 151
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 156
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 158
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 162
    :cond_6
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_7
    move v6, v8

    .line 144
    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 295
    const/4 v0, 0x2

    const v1, 0x7f0a01d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mMenuCancel:Landroid/view/MenuItem;

    .line 296
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 298
    const v0, 0x7f0a1931

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mMenuDone:Landroid/view/MenuItem;

    .line 299
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->initializeActionBarTitle()V

    .line 306
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    const v1, 0x7f0401c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 310
    const-string v1, "RecommendedAppList"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    sget v1, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    if-ne v1, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 338
    :goto_0
    return v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 323
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 324
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->SavedRecommendedAppsList()V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    sget v1, Lcom/android/settings/RecommendedAppsList;->mEditDirect:I

    if-ne v1, v0, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 338
    :cond_5
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 350
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsList;->initializeActionBarTitle()V

    .line 345
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 356
    return-void
.end method
