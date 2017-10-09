.class public Lcom/android/settings/PreviewFragment;
.super Landroid/app/ListFragment;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewFragment$RadioAdapter;
    }
.end annotation


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

.field backgroundImage:[I

.field dbValues:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;

.field menuName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PreviewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateImageResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "mDefaultUnlock":I
    const-string v2, "UnlockEffect"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 151
    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_2
    const-string v2, "ClockSize"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 144
    :cond_3
    const-string v2, "PatternType"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_pattern_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 147
    :cond_4
    const-string v2, "ChargingEffect"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_charging_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 156
    .restart local v0    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/PreviewFragment;->setHasOptionsMenu(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MenuName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    .line 87
    const-string v1, "PreviewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated() Menu Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 91
    const-string v1, "UnlockEffect"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->populateUnlockEffectsOptions()V

    .line 121
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/PreviewFragment$RadioAdapter;

    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040124

    sget-object v4, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/PreviewFragment$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

    .line 123
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "mDivider":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    .line 130
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040064

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/PreviewFragment;->updateImageResource()V

    .line 133
    return-void

    .line 93
    .end local v0    # "mDivider":Landroid/view/View;
    :cond_1
    const-string v1, "ClockSize"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    .line 96
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "PatternType"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    .line 104
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    goto/16 :goto_0

    .line 110
    :cond_3
    const-string v1, "ChargingEffect"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    .line 113
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    goto/16 :goto_0

    .line 96
    :array_0
    .array-data 4
        0x7f020516
        0x7f020515
        0x7f020514
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x7f02051a
        0x7f020518
        0x7f020519
        0x7f020517
    .end array-data

    .line 113
    :array_2
    .array-data 4
        0x7f0200d0
        0x7f0200cd
        0x7f0200ce
        0x7f0200cf
        0x7f0200cc
        0x7f0200d1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 200
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mcancelButton:Landroid/widget/Button;

    .line 201
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/PreviewFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewFragment$1;-><init>(Lcom/android/settings/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    .line 209
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a07f6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/PreviewFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewFragment$2;-><init>(Lcom/android/settings/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "PreviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView() Menu Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v0, 0x7f04010b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 190
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    invoke-direct {p0}, Lcom/android/settings/PreviewFragment;->updateImageResource()V

    .line 176
    const-string v1, "PreviewFragment"

    const-string v2, "ArrayIndexOutOfBoundsException Occured.  set to Popping Colour."

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method populateUnlockEffectsOptions()V
    .locals 6

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "ctr":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0xc

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a170b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .local v3, "ctr":I
    const v5, 0x7f02051f

    aput v5, v4, v2

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.montblanc"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    const v5, 0x7f02051e

    aput v5, v4, v3

    .line 266
    :goto_0
    const-string v4, "NONE"

    const-string v5, "ABSTRACTTILES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c6b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v4, "11"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f02051b

    aput v5, v4, v2

    move v2, v3

    .line 272
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_0
    const-string v4, "NONE"

    const-string v5, "GEOMETRICMOSAIC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c6c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v4, "12"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f02051d

    aput v5, v4, v2

    move v2, v3

    .line 278
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_1
    const-string v4, "NONE"

    const-string v5, "BRILLIANTRING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c69

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f02051c

    aput v5, v4, v2

    move v2, v3

    .line 284
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_2
    const-string v4, "NONE"

    const-string v5, "POPPINGCOLOURS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c66

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f020520

    aput v5, v4, v2

    move v2, v3

    .line 298
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_3
    const-string v4, "NONE"

    const-string v5, "WATERCOLOUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c64

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f020523

    aput v5, v4, v2

    move v2, v3

    .line 303
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_4
    const-string v4, "NONE"

    const-string v5, "RIPPLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1c80

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f020521

    aput v5, v4, v2

    move v2, v3

    .line 310
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_5
    const-string v4, "2"

    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "1.5"

    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 311
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1d8d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v4, "85"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f0200d3

    aput v5, v4, v2

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1d80

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const-string v4, "81"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    const v5, 0x7f0200d4

    aput v5, v4, v3

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1d81

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v4, "82"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f0200d5

    aput v5, v4, v2

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1d82

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v4, "83"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    const v5, 0x7f0200d2

    aput v5, v4, v3

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1d83

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v4, "84"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    const v5, 0x7f0200d6

    aput v5, v4, v2

    move v2, v3

    .line 327
    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    .line 328
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    .line 329
    return-void

    .end local v2    # "ctr":I
    .restart local v3    # "ctr":I
    :cond_8
    move v2, v3

    .end local v3    # "ctr":I
    .restart local v2    # "ctr":I
    goto/16 :goto_0
.end method
