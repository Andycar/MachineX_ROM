.class public Lcom/android/settings/ClockMyprofileMenu;
.super Landroid/app/Activity;
.source "ClockMyprofileMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mBodyText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ClockMyprofileMenu;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ClockMyprofileMenu;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 124
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 126
    const v2, 0x7f040064

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 127
    const v2, 0x7f10010c

    invoke-virtual {p0, v2}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, "buttonSave":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v1    # "buttonSave":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v3, 0x7f040101

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->setContentView(I)V

    .line 57
    new-array v3, v9, [Ljava/lang/String;

    sput-object v3, Lcom/android/settings/ClockMyprofileMenu;->mModeItem:[Ljava/lang/String;

    .line 58
    sget-object v3, Lcom/android/settings/ClockMyprofileMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0fce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 59
    sget-object v3, Lcom/android/settings/ClockMyprofileMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 61
    const v3, 0x7f100174

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    .line 62
    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040124

    sget-object v6, Lcom/android/settings/ClockMyprofileMenu;->mModeItem:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 64
    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "my_profile_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 68
    const v3, 0x7f100241

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mBodyText:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f100093

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ClockMyprofileMenu;->mImageView:Landroid/widget/ImageView;

    .line 70
    const-string v3, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v4, "getCurrentLockScreenString"

    invoke-static {p0, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "getCurrentLockScreenString":I
    const v3, 0x7f1001ea

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    .local v1, "buttonOk":Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/ClockMyprofileMenu$1;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/ClockMyprofileMenu$1;-><init>(Lcom/android/settings/ClockMyprofileMenu;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v3, 0x7f1001e9

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockMyprofileMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "buttonCancel":Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/ClockMyprofileMenu$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ClockMyprofileMenu$2;-><init>(Lcom/android/settings/ClockMyprofileMenu;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ClockMyprofileMenu;->configureActionBar()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 161
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 163
    .local v3, "inflater":Landroid/view/MenuInflater;
    const v5, 0x7f120008

    invoke-virtual {v3, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    .end local v3    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 166
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "customView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 169
    const v5, 0x7f10010b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 170
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/ClockMyprofileMenu$3;

    invoke-direct {v5, p0}, Lcom/android/settings/ClockMyprofileMenu$3;-><init>(Lcom/android/settings/ClockMyprofileMenu;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v5, 0x7f10010c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 177
    .local v4, "saveButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/settings/ClockMyprofileMenu$4;

    invoke-direct {v5, p0}, Lcom/android/settings/ClockMyprofileMenu$4;-><init>(Lcom/android/settings/ClockMyprofileMenu;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    return-void
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
    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a177c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/ClockMyprofileMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    goto :goto_0

    .line 205
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    goto :goto_0

    .line 208
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    iget-object v4, p0, Lcom/android/settings/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v4, "getCurrentLockScreenString"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "getCurrentLockScreenString":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ClockMyprofileMenu;->finish()V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10010b -> :sswitch_1
        0x7f10010c -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/ClockMyprofileMenu;->updateState()V

    .line 119
    return-void
.end method
