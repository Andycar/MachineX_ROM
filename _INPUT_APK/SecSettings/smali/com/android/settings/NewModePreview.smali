.class public Lcom/android/settings/NewModePreview;
.super Landroid/app/Activity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field private static mModeItem:[Ljava/lang/String;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

.field private dialogValue:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tv.peel.smartremote"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NewModePreview;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/NewModePreview;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NewModePreview;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    return p1
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    .line 168
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public createGuideDialog()V
    .locals 4

    .prologue
    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "adapt_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->showGuideDialog()V

    .line 180
    :cond_0
    return-void
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "b":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    array-length v5, v7

    .line 244
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 245
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 246
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 248
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 250
    :try_start_0
    sget-object v7, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 251
    if-lez v1, :cond_0

    .line 252
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200f- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 248
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ModePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 263
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v5, 0x7f040133

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->setContentView(I)V

    .line 95
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    .line 96
    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 97
    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0fca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 98
    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0fcb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 99
    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0fcd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 100
    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0fcc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 110
    const v5, 0x7f100174

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    .line 111
    new-instance v5, Lcom/android/settings/NewModePreview$RadioAdapter;

    const v6, 0x7f040124

    sget-object v7, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/settings/NewModePreview$RadioAdapter;-><init>(Lcom/android/settings/NewModePreview;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/NewModePreview;->adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

    .line 113
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/NewModePreview;->adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 116
    .local v2, "isChecked":I
    const/4 v4, 0x0

    .line 117
    .local v4, "selectedBtn":I
    if-ne v2, v9, :cond_2

    .line 118
    const/4 v4, 0x0

    .line 122
    :goto_0
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 123
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 126
    const v5, 0x7f1001ea

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 127
    .local v1, "buttonOk":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/NewModePreview$1;

    invoke-direct {v5, p0}, Lcom/android/settings/NewModePreview$1;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v5, 0x7f1001e9

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    .local v0, "buttonCancel":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/NewModePreview$2;

    invoke-direct {v5, p0}, Lcom/android/settings/NewModePreview$2;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const v5, 0x7f0a0fc8

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->setTitle(I)V

    .line 159
    const v5, 0x7f1001e8

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 160
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/settings/NewModePreview;->configureActionBar()V

    .line 164
    :cond_1
    return-void

    .line 120
    .end local v0    # "buttonCancel":Landroid/widget/Button;
    .end local v1    # "buttonOk":Landroid/widget/Button;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_mode_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 340
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 343
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/NewModePreview;->mcancelButton:Landroid/widget/Button;

    .line 344
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NewModePreview$4;

    invoke-direct {v2, p0}, Lcom/android/settings/NewModePreview$4;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/NewModePreview;->mSaveButton:Landroid/widget/Button;

    .line 362
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NewModePreview$5;

    invoke-direct {v2, p0}, Lcom/android/settings/NewModePreview$5;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 305
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 269
    .local v0, "idx":I
    if-nez p3, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->createGuideDialog()V

    .line 274
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 279
    :goto_0
    const-string v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNIeUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 281
    return-void

    .line 277
    :cond_0
    add-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 285
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 297
    :goto_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 299
    .end local v0    # "idx":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 294
    .restart local v0    # "idx":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 382
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 384
    :pswitch_0
    const/4 v0, 0x0

    .line 385
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 395
    :goto_1
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->finish()V

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 399
    .end local v0    # "idx":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->finish()V

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    iget-object v4, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x7f10010b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, "adaptiveValue":I
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 312
    .local v1, "currentValue":I
    if-ne v0, v5, :cond_0

    .line 313
    const/4 v2, 0x0

    .line 317
    .local v2, "idx":I
    iget-object v3, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 319
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 323
    .end local v2    # "idx":I
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 324
    return-void

    .line 321
    :cond_0
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "is_dialog_visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-boolean v0, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 331
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    .line 232
    :cond_0
    const-string v0, "is_dialog_visible"

    iget-boolean v1, p0, Lcom/android/settings/NewModePreview;->dialogValue:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public showGuideDialog()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 188
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 191
    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    iput-object v8, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 195
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/NewModePreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 196
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040181

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f10037f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 207
    .local v6, "tv":Landroid/widget/TextView;
    const v7, 0x7f0a1008

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v7, 0x7f0a100b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->makeContentsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/NewModePreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v7, 0x7f100167

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 213
    .local v5, "mcheck":Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/NewModePreview$3;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/NewModePreview$3;-><init>(Lcom/android/settings/NewModePreview;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    .line 223
    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 224
    return-void
.end method
