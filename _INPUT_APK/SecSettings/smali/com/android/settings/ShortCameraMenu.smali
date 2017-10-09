.class public Lcom/android/settings/ShortCameraMenu;
.super Landroid/app/Activity;
.source "ShortCameraMenu.java"

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
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ShortCameraMenu;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ShortCameraMenu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a176a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1769

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f040104

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->setContentView(I)V

    .line 49
    new-array v2, v8, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1767

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 51
    sget-object v2, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1768

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 53
    const v2, 0x7f100174

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    .line 54
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040124

    sget-object v5, Lcom/android/settings/ShortCameraMenu;->mModeItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 56
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 57
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 60
    const v2, 0x7f10024c

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    .line 63
    const v2, 0x7f1001ea

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 64
    .local v1, "buttonOk":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/ShortCameraMenu$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ShortCameraMenu$1;-><init>(Lcom/android/settings/ShortCameraMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f1001e9

    invoke-virtual {p0, v2}, Lcom/android/settings/ShortCameraMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, "buttonCancel":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/ShortCameraMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ShortCameraMenu$2;-><init>(Lcom/android/settings/ShortCameraMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
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
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a176a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1769

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0203d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 86
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
    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kg_enable_camera_widget_type"

    iget-object v3, p0, Lcom/android/settings/ShortCameraMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f10010b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/ShortCameraMenu;->updateState()V

    .line 101
    return-void
.end method
