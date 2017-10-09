.class public Lcom/android/settings/favorite/FavoriteMenuList;
.super Landroid/preference/PreferenceActivity;
.source "FavoriteMenuList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    }
.end annotation


# static fields
.field private static final MAX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isGridView:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field protected mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

.field private mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

.field private mIsBlockSelectionActive:Z

.field protected mListView:Landroid/widget/ListView;

.field public mOnDoneListner:Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;

.field private toastStatus:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/favorite/FavoriteMenuList;->TAG:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v0

    sput v0, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mIsBlockSelectionActive:Z

    .line 117
    new-instance v0, Lcom/android/settings/favorite/FavoriteMenuList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/favorite/FavoriteMenuList$1;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mOnDoneListner:Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/favorite/FavoriteMenuList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/favorite/FavoriteMenuList;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mIsBlockSelectionActive:Z

    return v0
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 394
    sget-object v0, Lcom/android/settings/favorite/FavoriteMenuList;->TAG:Ljava/lang/String;

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mIsBlockSelectionActive:Z

    .line 397
    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    .line 402
    iput-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mIsBlockSelectionActive:Z

    .line 403
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->notifyDataSetChanged()V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const v0, 0x7f0a002b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/favorite/FavoriteMenuList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    .line 410
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 381
    :cond_0
    return-void
.end method

.method public displayGridView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 156
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    .line 157
    .local v1, "mGridSettingsFragment":Lcom/android/settings/grid/GridSettingsFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 158
    return-void
.end method

.method public displayListView()V
    .locals 2

    .prologue
    .line 144
    const v0, 0x7f0400b3

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/FavoriteMenuList;->setContentView(I)V

    .line 146
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/FavoriteMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    .line 147
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_0
    return-void
.end method

.method public getGridType()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v1, :cond_0

    const-string v5, "favoriteList"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    const-string v5, "favoriteList"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/favorite/FavoriteMenuList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 96
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v5, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-direct {v5, p0, p0, v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v5, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateState()V

    .line 99
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings_gridui"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    .line 105
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v3

    if-nez v3, :cond_4

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/settings/favorite/FavoriteMenuList;->displayGridView(Ljava/util/ArrayList;)V

    .line 112
    :goto_2
    new-instance v3, Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/favorite/FavoriteActionModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    .line 113
    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-virtual {v3, p0}, Lcom/android/settings/favorite/FavoriteActionModeCallback;->setOnDoneListner(Lcom/android/settings/favorite/FavoriteActionModeCallback$OnDoneListner;)V

    .line 114
    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    invoke-virtual {p0, v3}, Lcom/android/settings/favorite/FavoriteMenuList;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    .line 115
    return-void

    :cond_1
    move v3, v4

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings_gridui"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_3

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->displayListView()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 203
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$2;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    .line 214
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a1ad4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$3;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    .line 349
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    .local v0, "count":I
    if-nez v1, :cond_0

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v2, :cond_0

    .line 351
    const v2, 0x7f0a002b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/favorite/FavoriteMenuList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 333
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    .line 334
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 335
    .local v0, "count":I
    if-nez v1, :cond_0

    sget v2, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v2, :cond_0

    .line 336
    const v2, 0x7f0a002b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/favorite/FavoriteMenuList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 340
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->notifyDataSetChanged()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 244
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 233
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 237
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 240
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10010b -> :sswitch_1
        0x7f10010c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateSelectionItem()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .param p6, "arg4"    # Z
    .param p7, "arg5"    # Z
    .param p8, "arg6"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/settings/favorite/FavoriteMenuList;->MAX:I

    if-lt v0, v1, :cond_1

    .line 424
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->toastStatus:Ljava/lang/Boolean;

    .line 429
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/FavoriteMenuList;->setResult(I)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 389
    return-void
.end method

.method public saveState()V
    .locals 8

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, "isFavorite":Z
    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    .line 183
    .local v1, "isChecked":Z
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v7, "DQST"

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget v4, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v4}, Lcom/android/settings/favorite/FavoriteMenuList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p0, v3}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.settings"

    const-string v7, "AQST"

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget v4, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v4}, Lcom/android/settings/favorite/FavoriteMenuList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p0, v3}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    .end local v1    # "isChecked":Z
    .end local v2    # "isFavorite":Z
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->finish()V

    .line 372
    :cond_0
    return-void
.end method

.method public updateSelectionItem()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mFavoriteActionModeCallback:Lcom/android/settings/favorite/FavoriteActionModeCallback;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/favorite/FavoriteActionModeCallback;->updateSelectionMenu(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method
