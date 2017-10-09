.class public Lcom/android/settings/toolbox/ToolboxList;
.super Landroid/app/ListFragment;
.source "ToolboxList.java"

# interfaces
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;,
        Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;
    }
.end annotation


# static fields
.field static ACTION_MEMO:Ljava/lang/String;

.field static FLASH_ANNOTATE:Ljava/lang/String;

.field static MAGNIFIER:Ljava/lang/String;

.field static MAX_DEFAULT_APPS:I

.field static MAX_TOOLBOX_APPS:I

.field static PHOTO_EDITOR:Ljava/lang/String;

.field static QUICK_CONNECT:Ljava/lang/String;

.field static SCRAPBOOK:Ljava/lang/String;

.field static S_FINDER:Ljava/lang/String;

.field static TOUCH_LIGHT:Ljava/lang/String;

.field private static list_view:Landroid/widget/ListView;


# instance fields
.field private KIDS:Ljava/lang/String;

.field private KNOX:Ljava/lang/String;

.field private SavedApplist:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

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

.field private mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

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

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedToolboxAppsNums:I

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

.field private mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

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
    const/4 v0, 0x5

    .line 88
    sput v0, Lcom/android/settings/toolbox/ToolboxList;->MAX_TOOLBOX_APPS:I

    .line 89
    sput v0, Lcom/android/settings/toolbox/ToolboxList;->MAX_DEFAULT_APPS:I

    .line 91
    const-string v0, "com.samsung.android.app.galaxyfinder"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    .line 92
    const-string v0, "com.samsung.android.sconnect"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    .line 93
    const-string v0, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->TOUCH_LIGHT:Ljava/lang/String;

    .line 94
    const-string v0, "com.samsung.android.app.pinboard"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->SCRAPBOOK:Ljava/lang/String;

    .line 95
    const-string v0, "com.samsung.android.widgetapp.actionmemo"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->ACTION_MEMO:Ljava/lang/String;

    .line 96
    const-string v0, "com.sec.android.mimage.photoretouching"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    .line 97
    const-string v0, "com.sec.spen.flashannotate"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    .line 98
    const-string v0, "com.sec.android.app.magnifier"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 101
    const-string v0, "com.sec.android.app.kidshome"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->KIDS:Ljava/lang/String;

    .line 102
    const-string v0, "sec.knox"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->KNOX:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    .line 110
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 112
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    .line 113
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    .line 114
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    .line 115
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 116
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mapp:Ljava/util/List;

    .line 117
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mPackageName:Ljava/lang/String;

    .line 563
    return-void
.end method

.method private SavedToolboxList()V
    .locals 6

    .prologue
    .line 578
    const-string v2, ""

    .line 579
    .local v2, "mTempAppinfo":Ljava/lang/String;
    const-string v1, ""

    .line 580
    .local v1, "mTempAppList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 582
    .local v0, "CheckedApplistData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 584
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    const-string v3, "ToolboxList"

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

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 591
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mTempAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 593
    .restart local v2    # "mTempAppinfo":Ljava/lang/String;
    const-string v3, "ToolboxList"

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

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 598
    :cond_3
    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedToolboxList mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "toolbox_apps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 601
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/toolbox/ToolboxList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->getCheckedToolboxAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/toolbox/ToolboxList;)Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/toolbox/ToolboxList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/toolbox/ToolboxList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/toolbox/ToolboxList;)Lcom/android/settings/toolbox/SelectModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/toolbox/ToolboxList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/toolbox/ToolboxList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/toolbox/ToolboxList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/settings/toolbox/ToolboxList;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    .line 164
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 166
    return-void
.end method

.method private getCheckedToolboxAppNum()I
    .locals 6

    .prologue
    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "mCheckedAppNum":I
    const-string v2, ""

    .line 606
    .local v2, "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 608
    .local v0, "CheckedData":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mCheckedAppinfo":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 610
    .restart local v2    # "mCheckedAppinfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_1
    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedToolboxAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v1
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "iconResId"    # I
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 532
    new-instance v6, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    .line 533
    .local v6, "mIconResizer":Lcom/android/settings/lockscreenshortcut/IconResizer;
    const-string v8, "ToolboxList"

    const-string v9, "loadAppIcon (2)"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v4, 0x0

    .line 535
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 536
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 542
    .local v0, "activityName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 543
    .local v1, "appRes":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 545
    .local v5, "iconDpi":I
    invoke-virtual {v6, v5}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 546
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 557
    .end local v1    # "appRes":Landroid/content/res/Resources;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconDpi":I
    :cond_0
    :goto_0
    return-object v4

    .line 549
    :catch_0
    move-exception v3

    .line 550
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ToolboxList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 552
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "ToolboxList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v8, "ToolboxList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 655
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    .line 182
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v7, "LauncherIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    .line 187
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    .line 191
    const/4 v10, 0x0

    .line 193
    .local v10, "defaultAppNum":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 195
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v2, "com.nttdocomo.android.docomo_market"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.felicanetworks.mfm"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->KIDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->KNOX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move-result-object v22

    .line 203
    .local v22, "mAppinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 206
    .end local v22    # "mAppinfo":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 207
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_3

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 207
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 215
    .end local v21    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    new-instance v8, Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    .line 218
    .local v8, "alphaComparator":Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 223
    .local v19, "infoAppSFinder":Landroid/content/pm/ApplicationInfo;
    new-instance v14, Landroid/content/pm/ActivityInfo;

    invoke-direct {v14}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 225
    .local v14, "infoActivitySFinder":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 226
    const-string v1, "S Finder"

    iput-object v1, v14, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 227
    const-string v1, "index0"

    iput-object v1, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 228
    const v1, 0x7f0205f2

    iput v1, v14, Landroid/content/pm/ActivityInfo;->icon:I

    .line 229
    const v1, 0x7f0205f2

    iput v1, v14, Landroid/content/pm/ActivityInfo;->logo:I

    .line 231
    const-string v26, "S Finder/index0;"

    .line 232
    .local v26, "tempAppSFinderinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    add-int/lit8 v10, v10, 0x1

    .line 239
    .end local v14    # "infoActivitySFinder":Landroid/content/pm/ActivityInfo;
    .end local v19    # "infoAppSFinder":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "tempAppSFinderinfo":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 243
    .local v18, "infoAppQuickConnect":Landroid/content/pm/ApplicationInfo;
    new-instance v13, Landroid/content/pm/ActivityInfo;

    invoke-direct {v13}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 245
    .local v13, "infoActivityQuickConnect":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 246
    const-string v1, "Quick connect"

    iput-object v1, v13, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 247
    const-string v1, "index1"

    iput-object v1, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 248
    const v1, 0x7f0205f1

    iput v1, v13, Landroid/content/pm/ActivityInfo;->icon:I

    .line 249
    const v1, 0x7f0205f1

    iput v1, v13, Landroid/content/pm/ActivityInfo;->logo:I

    .line 250
    const-string v25, "Quick connect/index1;"

    .line 251
    .local v25, "tempAppQuickConnectinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 254
    add-int/lit8 v10, v10, 0x1

    .line 257
    .end local v13    # "infoActivityQuickConnect":Landroid/content/pm/ActivityInfo;
    .end local v18    # "infoAppQuickConnect":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "tempAppQuickConnectinfo":Ljava/lang/String;
    :cond_7
    new-instance v16, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 259
    .local v16, "infoActivityTouchlight":Landroid/content/pm/ActivityInfo;
    const v1, 0x7f0a14c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/ToolboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 260
    const-string v1, "Torch"

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 261
    const-string v1, "index2"

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 262
    const v1, 0x7f0205f4

    move-object/from16 v0, v16

    iput v1, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 263
    const v1, 0x7f0205f4

    move-object/from16 v0, v16

    iput v1, v0, Landroid/content/pm/ActivityInfo;->logo:I

    .line 265
    const-string v28, "Torch/index2;"

    .line 266
    .local v28, "tempAppTouchlightinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 269
    add-int/lit8 v10, v10, 0x1

    .line 272
    const/16 v23, 0x0

    .line 274
    .local v23, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 275
    sget-object v23, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    .line 281
    :goto_4
    if-eqz v23, :cond_8

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    .line 284
    .local v20, "infoAppScreenWrite":Landroid/content/pm/ApplicationInfo;
    new-instance v15, Landroid/content/pm/ActivityInfo;

    invoke-direct {v15}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 286
    .local v15, "infoActivityScreenWrite":Landroid/content/pm/ActivityInfo;
    const v1, 0x7f0a1d57

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/ToolboxList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 287
    const-string v1, "Screen write"

    iput-object v1, v15, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 288
    const-string v1, "index3"

    iput-object v1, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 289
    const v1, 0x7f0205f3

    iput v1, v15, Landroid/content/pm/ActivityInfo;->icon:I

    .line 290
    const v1, 0x7f0205f3

    iput v1, v15, Landroid/content/pm/ActivityInfo;->logo:I

    .line 292
    const-string v27, "Screen write/index3;"

    .line 293
    .local v27, "tempAppScreenWriteinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 295
    add-int/lit8 v10, v10, 0x1

    .line 299
    .end local v15    # "infoActivityScreenWrite":Landroid/content/pm/ActivityInfo;
    .end local v20    # "infoAppScreenWrite":Landroid/content/pm/ApplicationInfo;
    .end local v27    # "tempAppScreenWriteinfo":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    .line 303
    .local v17, "infoAppMagnifier":Landroid/content/pm/ApplicationInfo;
    new-instance v12, Landroid/content/pm/ActivityInfo;

    invoke-direct {v12}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 305
    .local v12, "infoActivityMagnifier":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 306
    const-string v1, "Magnifier"

    iput-object v1, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 307
    const-string v1, "index4"

    iput-object v1, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 308
    const v1, 0x7f0205f0

    iput v1, v12, Landroid/content/pm/ActivityInfo;->icon:I

    .line 309
    const v1, 0x7f0205f0

    iput v1, v12, Landroid/content/pm/ActivityInfo;->logo:I

    .line 310
    const-string v24, "Magnifier/index4;"

    .line 311
    .local v24, "tempAppMagnifierinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    .end local v12    # "infoActivityMagnifier":Landroid/content/pm/ActivityInfo;
    .end local v16    # "infoActivityTouchlight":Landroid/content/pm/ActivityInfo;
    .end local v17    # "infoAppMagnifier":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v24    # "tempAppMagnifierinfo":Ljava/lang/String;
    .end local v28    # "tempAppTouchlightinfo":Ljava/lang/String;
    :cond_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    .line 320
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_13

    .line 321
    const/4 v9, 0x0

    .line 322
    .local v9, "checkedpackage":Z
    const/16 v22, 0x0

    .line 323
    .restart local v22    # "mAppinfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    const-string v2, "null"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 326
    :cond_a
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    move/from16 v0, v21

    if-ge v0, v1, :cond_11

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 330
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/4 v9, 0x1

    .line 326
    :cond_c
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 276
    .end local v9    # "checkedpackage":Z
    .end local v21    # "j":I
    .end local v22    # "mAppinfo":Ljava/lang/String;
    .restart local v16    # "infoActivityTouchlight":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "pkgName":Ljava/lang/String;
    .restart local v28    # "tempAppTouchlightinfo":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 277
    sget-object v23, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    goto/16 :goto_4

    .line 279
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 334
    .end local v16    # "infoActivityTouchlight":Landroid/content/pm/ActivityInfo;
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v28    # "tempAppTouchlightinfo":Ljava/lang/String;
    .restart local v9    # "checkedpackage":Z
    .restart local v21    # "j":I
    .restart local v22    # "mAppinfo":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 336
    if-eqz v22, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 338
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 345
    :cond_11
    if-nez v9, :cond_12

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 351
    .end local v9    # "checkedpackage":Z
    .end local v21    # "j":I
    .end local v22    # "mAppinfo":Ljava/lang/String;
    :cond_13
    new-instance v1, Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04021f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;-><init>(Lcom/android/settings/toolbox/ToolboxList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/toolbox/ToolboxList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sput-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    .line 354
    sget-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    sget-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/toolbox/ToolboxList$1;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 394
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 395
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/ToolboxList;->setHasOptionsMenu(Z)V

    .line 397
    :cond_14
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/toolbox/SelectModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    .line 635
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/toolbox/SelectModeCallback;->setOnDoneListner(Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    .line 638
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 639
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    .line 140
    const-string v4, "ToolboxList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    .line 146
    :cond_0
    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    .line 147
    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    if-ge v1, v4, :cond_1

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "package_index":I
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 151
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "package_name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "activity_name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 154
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v0, v4, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "activity_name":Ljava/lang/String;
    .end local v2    # "package_index":I
    .end local v3    # "package_name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->configureActionBar()V

    .line 160
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    const/4 v1, 0x2

    const v2, 0x7f0a01d1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuCancel:Landroid/view/MenuItem;

    .line 404
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 406
    const v1, 0x7f0a1931

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuDone:Landroid/view/MenuItem;

    .line 407
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 412
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mcancelButton:Landroid/widget/Button;

    .line 413
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxList$2;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    .line 420
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a1ad4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxList$3;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const v1, 0x7f0401c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    .line 625
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 627
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 456
    const-string v1, "ToolboxList"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 467
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 467
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 480
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 481
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->getCheckedToolboxAppNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/SelectModeCallback;->updateSelectionMenu(I)V

    .line 476
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 487
    return-void
.end method

.method public save()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->stopActionMode()V

    .line 663
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 647
    :cond_0
    return-void
.end method
