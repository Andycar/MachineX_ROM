.class public Lcom/android/settings/SViewMiniWallpaper;
.super Landroid/app/Activity;
.source "SViewMiniWallpaper.java"


# instance fields
.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mImageButtonListener:Landroid/view/View$OnClickListener;

.field private mItemIndex:I

.field private mPreview:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    .line 125
    new-instance v0, Lcom/android/settings/SViewMiniWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewMiniWallpaper$3;-><init>(Lcom/android/settings/SViewMiniWallpaper;)V

    iput-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    .line 154
    new-instance v0, Lcom/android/settings/SViewMiniWallpaper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewMiniWallpaper$4;-><init>(Lcom/android/settings/SViewMiniWallpaper;)V

    iput-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/SViewMiniWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewMiniWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SViewMiniWallpaper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewMiniWallpaper;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SViewMiniWallpaper;->setfocusButton()V

    return-void
.end method

.method private setfocusButton()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 223
    iget v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    if-ne v1, v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0205e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method public configureActionBar()V
    .locals 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 98
    .local v1, "mActionBar":Landroid/app/ActionBar;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 99
    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 101
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "customView":Landroid/view/View;
    const v4, 0x7f10010b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 103
    .local v3, "mcancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewMiniWallpaper$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewMiniWallpaper$1;-><init>(Lcom/android/settings/SViewMiniWallpaper;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v4, 0x7f10010c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 110
    .local v2, "mSaveButton":Landroid/widget/Button;
    const v4, 0x7f0a1ad4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 111
    new-instance v4, Lcom/android/settings/SViewMiniWallpaper$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewMiniWallpaper$2;-><init>(Lcom/android/settings/SViewMiniWallpaper;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected getItemIndex()V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_mini_color_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    .line 186
    const-string v0, "SViewMiniWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemIndex SETTINGS_MINI_COVER_WALLPAPER_INDEX_KEY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040211

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->configureActionBar()V

    .line 54
    const v0, 0x7f100093

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    .line 56
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1004b2

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v6

    .line 57
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v6

    const v1, 0x7f0a0fe3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v4

    .line 63
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    const v1, 0x7f0a0fe3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v5

    .line 69
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    const v1, 0x7f0a0fe3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v7

    .line 75
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v7

    const v1, 0x7f0a0fe3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v8

    .line 81
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v8

    const v1, 0x7f0a0fe3

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SViewMiniWallpaper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->getItemIndex()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->setPreview()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SViewMiniWallpaper;->setfocusButton()V

    .line 94
    return-void
.end method

.method protected saveDB()V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/SViewMiniWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_mini_color_wallpaper"

    iget v3, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    const-string v1, "SViewMiniWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveDB  SETTINGS_MINI_COVER_WALLPAPER_INDEX_KEY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SViewMiniWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/SViewMiniWallpaper;->setResult(I)V

    .line 219
    return-void
.end method

.method protected setPreview()V
    .locals 2

    .prologue
    const v1, 0x7f0205cd

    .line 190
    iget v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mItemIndex:I

    packed-switch v0, :pswitch_data_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 210
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0205ce

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0205cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0205d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/SViewMiniWallpaper;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0205d1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
