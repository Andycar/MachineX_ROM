.class public Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;
.super Landroid/app/ListFragment;
.source "PowerSavingDataServiceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AlphaComparator;,
        Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_APPS:I

.field static MIN_APPS:I

.field private static list_view:Landroid/widget/ListView;

.field private static mEditDirect:I

.field private static mEditValue:Ljava/lang/String;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

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

.field private mAppListAdapter:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;

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

.field private mExtraPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDone:Landroid/view/MenuItem;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedAppsNums:I

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

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->MIN_APPS:I

    .line 86
    const v0, 0x7fffffff

    sput v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->MAX_APPS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedAppsNums:I

    .line 94
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedApplist:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 96
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    .line 97
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    .line 98
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraPackageList:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 101
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mapp:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist:[Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 420
    return-void
.end method

.method private SavedList()V
    .locals 9

    .prologue
    .line 438
    const-string v4, ""

    .line 439
    .local v4, "mTempAppinfo":Ljava/lang/String;
    const-string v3, ""

    .line 440
    .local v3, "mTempAppList":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 442
    .local v0, "CheckedApplistData":Ljava/util/Iterator;
    const-string v5, ""

    .line 443
    .local v5, "mTotalAppList":Ljava/lang/String;
    const-string v2, ""

    .line 444
    .local v2, "mRestrictAppList":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 445
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mTempAppinfo":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 446
    .restart local v4    # "mTempAppinfo":Ljava/lang/String;
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTempCheckedApplist.get("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 449
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 452
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 455
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 458
    :cond_2
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SavedPowerSaveingDataServiceList mTempAppList :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RestrictedPowerSaveingDataServiceList mRestrictAppList :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v6, "PowerSavingDataServiceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TotaldPowerSaveingDataServiceList mTotalAppList :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_saving_data_service_apps"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_saving_data_allowed_apps"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_saving_data_ristricted_apps"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.POWERSAVING_DATA_SERVICELIST_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getCheckedAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppListAdapter:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mActionBar:Landroid/app/ActionBar;

    .line 146
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 148
    return-void
.end method

.method private getCheckedAppNum()I
    .locals 6

    .prologue
    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "mCheckedAppNum":I
    const-string v2, ""

    .line 473
    .local v2, "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    .local v0, "CheckedData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mCheckedAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 477
    .restart local v2    # "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const-string v3, "PowerSavingDataServiceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 389
    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    .line 391
    .local v7, "mIconResizer":Lcom/android/settings/lockscreenshortcut/IconResizer;
    const/4 v5, 0x0

    .line 392
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 393
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 395
    .local v0, "activityName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    iget v10, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v10, :cond_1

    .end local v0    # "activityName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 396
    .local v2, "cscIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 397
    invoke-virtual {v7, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 414
    .end local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v5

    .restart local v0    # "activityName":Ljava/lang/String;
    :cond_1
    move-object v0, v8

    .line 395
    goto :goto_0

    .line 399
    .end local v0    # "activityName":Ljava/lang/String;
    .restart local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 400
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 402
    .local v6, "iconDpi":I
    invoke-virtual {v7, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v9

    invoke-virtual {v1, p1, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 403
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    .line 406
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "cscIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconDpi":I
    :catch_0
    move-exception v4

    .line 407
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PowerSavingDataServiceList"

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

    goto :goto_1

    .line 408
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 409
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "PowerSavingDataServiceList"

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

    .line 410
    const-string v9, "PowerSavingDataServiceList"

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

    .line 411
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 166
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    .line 176
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v7, "LauncherIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    .line 179
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraPackageList:Ljava/util/List;

    .line 186
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.INTERNET"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, "DataPerm":I
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getUid(Ljava/lang/String;)I

    move-result v9

    .line 190
    .local v9, "appid":I
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v6, :cond_1

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/16 v0, 0x2710

    if-lt v9, v0, :cond_0

    const/16 v0, 0x4e1f

    if-gt v9, v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraPackageList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraPackageList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, "mAppinfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .end local v6    # "DataPerm":I
    .end local v9    # "appid":I
    .end local v13    # "mAppinfo":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 203
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 203
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 211
    .end local v12    # "j":I
    :cond_5
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    new-instance v8, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AlphaComparator;

    invoke-direct {v8, p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AlphaComparator;-><init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V

    .line 214
    .local v8, "alphaComparator":Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AlphaComparator;
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 218
    const/4 v11, 0x0

    :goto_4
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_a

    .line 219
    const/4 v10, 0x0

    .line 220
    .local v10, "checkedpackage":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 221
    .restart local v13    # "mAppinfo":Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_5
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedAppsNums:I

    if-ge v12, v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v1, v0, v12

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v10, 0x1

    .line 221
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 230
    :cond_8
    if-nez v10, :cond_9

    .line 231
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 234
    .end local v10    # "checkedpackage":Z
    .end local v12    # "j":I
    .end local v13    # "mAppinfo":Ljava/lang/String;
    :cond_a
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401c8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mExtraAppList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;-><init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppListAdapter:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->list_view:Landroid/widget/ListView;

    .line 237
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mAppListAdapter:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    sget-object v0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->list_view:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$1;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->setHasOptionsMenu(Z)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "edit_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mEditValue:Ljava/lang/String;

    .line 123
    const-string v2, "edit_direct"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mEditDirect:I

    .line 125
    const-string v2, "apps"

    sget-object v3, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mEditValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_data_allowed_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedApplist:Ljava/lang/String;

    .line 129
    :cond_0
    const-string v2, "PowerSavingDataServiceList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SavedApplist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedApplist:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedApplist:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist:[Ljava/lang/String;

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedAppsNums:I

    .line 137
    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedAppsNums:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedAppsNums:I

    if-ge v1, v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist_Package:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_1
    const-string v2, ""

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSavedApplist:[Ljava/lang/String;

    goto :goto_0

    .line 141
    .restart local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->configureActionBar()V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x2

    const v2, 0x7f0a01d1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mMenuCancel:Landroid/view/MenuItem;

    .line 278
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 280
    const v1, 0x7f0a1931

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mMenuDone:Landroid/view/MenuItem;

    .line 281
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 286
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mcancelButton:Landroid/widget/Button;

    .line 287
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSaveButton:Landroid/widget/Button;

    .line 294
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a1ad4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$3;-><init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const v1, 0x7f0401c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 309
    const-string v1, "PowerSavingDataServiceList"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    sget v1, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mEditDirect:I

    if-ne v1, v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 337
    :goto_0
    return v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 322
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 323
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->SavedList()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    sget v1, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->mEditDirect:I

    if-ne v1, v0, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 332
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 337
    :cond_5
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 343
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 354
    return-void
.end method
