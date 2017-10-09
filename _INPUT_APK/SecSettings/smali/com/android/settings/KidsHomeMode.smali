.class public Lcom/android/settings/KidsHomeMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KidsHomeMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static DIALOG_CURRENT_MODE:I

.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mPm:Landroid/content/pm/PackageManager;

.field mPreHardKeyboardHidden:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/KidsHomeMode;->DIALOG_CURRENT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 185
    const/4 p1, 0x0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02011a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 198
    if-eqz p1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 200
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    :cond_2
    :goto_1
    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 194
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 203
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 404
    const-string v2, "KidsHomeMode"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    const-string v3, "kids_home_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, "saved_value":I
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 411
    .local v1, "selected_value":I
    const-string v2, "KidsHomeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    if-ne v0, v1, :cond_0

    .end local v0    # "saved_value":I
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 414
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    .line 421
    return-void

    .restart local v0    # "saved_value":I
    :cond_0
    move v0, v1

    .line 413
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/KidsHomeMode;->setHasOptionsMenu(Z)V

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    const-string v0, "KidsHomeMode"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p0, Lcom/android/settings/KidsHomeMode;->mPreHardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 136
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/settings/KidsHomeMode;->mPreHardKeyboardHidden:I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/KidsHomeMode;->updateOptionsMenuIcon(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/KidsHomeMode;->dismissDialog()V

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KidsHomeMode;->mPm:Landroid/content/pm/PackageManager;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/settings/KidsHomeMode;->mPreHardKeyboardHidden:I

    .line 83
    const-string v0, "KidsHomeMode"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const v4, 0x104000a

    const/high16 v3, 0x1040000

    .line 240
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 242
    iput-object v1, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    .line 244
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 315
    iput-object v1, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    return-object v0

    .line 246
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1747

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1748

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KidsHomeMode$2;

    invoke-direct {v1, p0}, Lcom/android/settings/KidsHomeMode$2;-><init>(Lcom/android/settings/KidsHomeMode;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KidsHomeMode$1;

    invoke-direct {v1, p0}, Lcom/android/settings/KidsHomeMode$1;-><init>(Lcom/android/settings/KidsHomeMode;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 281
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1749

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1751

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KidsHomeMode$4;

    invoke-direct {v1, p0}, Lcom/android/settings/KidsHomeMode$4;-><init>(Lcom/android/settings/KidsHomeMode;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KidsHomeMode$3;

    invoke-direct {v1, p0}, Lcom/android/settings/KidsHomeMode$3;-><init>(Lcom/android/settings/KidsHomeMode;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KidsHomeMode;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 160
    .local v0, "isTablet":Z
    const v3, 0x7f0a01d1

    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    .line 161
    iget-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    const/4 v3, 0x3

    const v4, 0x7f0a107f

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    .line 167
    iget-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/KidsHomeMode;->updateOptionsMenuIcon(Z)V

    .line 179
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    return-void

    :cond_0
    move v1, v2

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/android/settings/KidsHomeMode;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    invoke-direct {p0, v1}, Lcom/android/settings/KidsHomeMode;->updateOptionsMenuIcon(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    const v2, 0x7f0400a6

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    .line 91
    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f100094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KidsHomeMode;->mHelptext:Landroid/widget/TextView;

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/KidsHomeMode;->mModeItem:[Ljava/lang/String;

    .line 95
    sget-object v2, Lcom/android/settings/KidsHomeMode;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a174c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 96
    sget-object v2, Lcom/android/settings/KidsHomeMode;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1745

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 98
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040124

    sget-object v6, Lcom/android/settings/KidsHomeMode;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_onConfigurationChange"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, "isOnConfigurationChanged":Z
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "kidsmode_spinner_value"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    .line 113
    :goto_0
    iget v2, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    if-nez v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a174d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.KidsSettings"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02038b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    return-object v1

    .line 104
    :cond_0
    if-nez p3, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    goto :goto_0

    .line 110
    :cond_1
    const-string v2, "kidsmode_spinner_value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02038a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1746

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02038e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 374
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 387
    :goto_0
    iput p3, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    .line 388
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a174d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.KidsSettings"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02038a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1746

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/KidsHomeMode;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02038e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 235
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 212
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 215
    :pswitch_1
    const-string v2, "KidsHomeMode"

    const-string v3, "onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    const-string v3, "kids_home_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "saved_value":I
    const-string v2, "KidsHomeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,  mListView.getCheckedItemPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/settings/KidsHomeMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 220
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/KidsHomeMode;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/KidsHomeMode;->finish()V

    goto :goto_1

    .line 226
    :cond_0
    if-nez v0, :cond_1

    .line 227
    const-string v2, "KidsHomeMode"

    const-string v3, "onClick 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sput v1, Lcom/android/settings/KidsHomeMode;->DIALOG_CURRENT_MODE:I

    invoke-virtual {p0, v1}, Lcom/android/settings/KidsHomeMode;->showDialog(I)V

    goto :goto_0

    .line 230
    :cond_1
    const-string v1, "KidsHomeMode"

    const-string v2, "onClick 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x2

    sput v1, Lcom/android/settings/KidsHomeMode;->DIALOG_CURRENT_MODE:I

    invoke-virtual {p0, v1}, Lcom/android/settings/KidsHomeMode;->showDialog(I)V

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 426
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/KidsHomeMode;->updateState()V

    .line 401
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const-string v0, "kidsmode_spinner_value"

    iget v1, p0, Lcom/android/settings/KidsHomeMode;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-void
.end method
