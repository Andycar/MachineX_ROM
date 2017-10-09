.class public Lcom/android/settings/PreloadAppUpdateList;
.super Landroid/app/ListFragment;
.source "PreloadAppUpdateList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;,
        Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;
    }
.end annotation


# static fields
.field private static list_view:Landroid/widget/ListView;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private allCheck:Landroid/widget/CheckBox;

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

.field private mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedNums:I

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

.field private setAllOn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    .line 45
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 47
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    .line 288
    return-void
.end method

.method private SavedApplist()V
    .locals 6

    .prologue
    .line 304
    const-string v2, ""

    .line 305
    .local v2, "mTempAppinfo":Ljava/lang/String;
    const-string v1, ""

    .line 306
    .local v1, "mTempAppList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 308
    .local v0, "CheckedApplistData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 310
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    const-string v3, "PreloadAppList"

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

    iget-object v5, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 316
    :cond_1
    const-string v3, "PreloadAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedApplist mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preload_list"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreloadAppUpdateList;)Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PreloadAppUpdateList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PreloadAppUpdateList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/PreloadAppUpdateList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/PreloadAppUpdateList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PreloadAppUpdateList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreloadAppUpdateList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public CheckedAll()I
    .locals 4

    .prologue
    .line 185
    const-string v2, ""

    .line 186
    .local v2, "mTempAppinfo":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "cnt":I
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "CheckedApplistData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 191
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    if-nez v1, :cond_2

    .line 196
    const/4 v3, 0x0

    .line 200
    :goto_1
    return v3

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 198
    const/4 v3, 0x1

    goto :goto_1

    .line 200
    :cond_3
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preload_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    .line 76
    const-string v1, "PreloadAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavedApplist :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 83
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 84
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    if-ge v12, v1, :cond_1

    .line 85
    const/16 v17, 0x0

    .line 86
    .local v17, "package_index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 88
    .local v18, "package_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "activity_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v18, v1, v12

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v8, v1, v12

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 94
    .end local v8    # "activity_name":Ljava/lang/String;
    .end local v17    # "package_index":I
    .end local v18    # "package_name":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    .line 95
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOADABLE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v7, "LauncherIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DOWNLOADABLE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v15, 0x0

    .line 98
    .local v15, "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0xa0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 100
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 102
    :try_start_0
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 104
    .local v16, "metadata":Landroid/os/Bundle;
    const-string v1, "com.sec.ENABLE_DOWNLOADABLE_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v16    # "metadata":Landroid/os/Bundle;
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v11

    .line 108
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "PreloadAppList"

    const-string v2, "Can not read metadata"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 112
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v9, Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    .line 113
    .local v9, "alphaComparator":Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 117
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 118
    const/4 v10, 0x0

    .line 119
    .local v10, "checkedpackage":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "mAppinfo":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    if-ge v13, v1, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v10, 0x1

    .line 120
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 126
    :cond_5
    if-nez v10, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 129
    .end local v10    # "checkedpackage":Z
    .end local v13    # "j":I
    .end local v14    # "mAppinfo":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->CheckedAll()I

    move-result v19

    .line 130
    .local v19, "status":I
    if-nez v19, :cond_9

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 147
    :goto_6
    new-instance v1, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0401c8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;-><init>(Lcom/android/settings/PreloadAppUpdateList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    .line 150
    sget-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    sget-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/PreloadAppUpdateList$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$2;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/PreloadAppUpdateList;->setHasOptionsMenu(Z)V

    .line 182
    return-void

    .line 132
    :cond_9
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 138
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/PreloadAppUpdateList$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$1;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "allcheck"    # Landroid/widget/CompoundButton;
    .param p2, "flag"    # Z

    .prologue
    .line 205
    iget v2, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "mAppinfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "mAppinfo":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->notifyDataSetChanged()V

    .line 212
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 218
    const v0, 0x7f120008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const v0, 0x7f10010c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 222
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v0, 0x7f0401b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 228
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f10010b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 241
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 252
    return-void
.end method
