.class public Lcom/android/settings/SViewStyleClock;
.super Landroid/app/Activity;
.source "SViewStyleClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;
    }
.end annotation


# instance fields
.field private mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mImageButtonListener:Landroid/view/View$OnClickListener;

.field private mIsChangedInside:Z

.field private mItemIndex:I

.field private mPreview:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    .line 155
    new-instance v0, Lcom/android/settings/SViewStyleClock$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewStyleClock$3;-><init>(Lcom/android/settings/SViewStyleClock;)V

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/settings/SViewStyleClock$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewStyleClock$4;-><init>(Lcom/android/settings/SViewStyleClock;)V

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewStyleClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SViewStyleClock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SViewStyleClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->setfocusButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SViewStyleClock;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/SViewStyleClock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/SViewStyleClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewStyleClock;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->showGuidePopup()Z

    move-result v0

    return v0
.end method

.method private setfocusButton()V
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 261
    iget v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    if-ne v1, v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0205d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 269
    :cond_1
    return-void
.end method

.method private showGuidePopup()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "doNotShow":Z
    const-string v8, "com.android.settings.SViewStyleClock"

    invoke-virtual {p0, v8, v6}, Lcom/android/settings/SViewStyleClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 275
    .local v5, "sp":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 276
    const-string v8, "DoNotShowDialog"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 277
    :cond_0
    if-nez v1, :cond_1

    .line 279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/SViewStyleClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 282
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040085

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 283
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f100169

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 284
    .local v4, "message":Landroid/widget/TextView;
    const v7, 0x7f0a0fe6

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 285
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 286
    const v7, 0x7f0a0fe5

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/SViewStyleClock$5;

    invoke-direct {v8, p0, v3}, Lcom/android/settings/SViewStyleClock$5;-><init>(Lcom/android/settings/SViewStyleClock;Landroid/view/View;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 306
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/view/View;
    .end local v4    # "message":Landroid/widget/TextView;
    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public configureActionBar()V
    .locals 5

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 119
    .local v1, "mActionBar":Landroid/app/ActionBar;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 120
    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 122
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "customView":Landroid/view/View;
    const v4, 0x7f10010b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 124
    .local v3, "mcancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewStyleClock$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewStyleClock$1;-><init>(Lcom/android/settings/SViewStyleClock;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v4, 0x7f10010c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 131
    .local v2, "mSaveButton":Landroid/widget/Button;
    const v4, 0x7f0a1ad4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 132
    new-instance v4, Lcom/android/settings/SViewStyleClock$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewStyleClock$2;-><init>(Lcom/android/settings/SViewStyleClock;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method protected getItemIndex()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "clockkey":I
    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    .line 218
    :goto_0
    const-string v1, "SViewStyleClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemIndex STYLIZED_CLOCK_STYLE_KEY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mItemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 206
    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    .line 212
    :pswitch_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f040212

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->configureActionBar()V

    .line 88
    new-instance v0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;-><init>(Lcom/android/settings/SViewStyleClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    .line 89
    const v0, 0x7f100093

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    .line 91
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    .line 92
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    .line 96
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v4

    .line 100
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewStyleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v5

    .line 104
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getItemIndex()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->setfocusButton()V

    .line 115
    return-void
.end method

.method protected saveDB()V
    .locals 4

    .prologue
    .line 241
    iget v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    packed-switch v1, :pswitch_data_0

    .line 252
    const/4 v0, -0x1

    .line 255
    .local v0, "clockkey":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    const-string v1, "SViewStyleClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveDB  STYLIZED_CLOCK_STYLE_KEY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mItemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 243
    .end local v0    # "clockkey":I
    :pswitch_0
    const/4 v0, 0x0

    .line 244
    .restart local v0    # "clockkey":I
    goto :goto_0

    .line 246
    .end local v0    # "clockkey":I
    :pswitch_1
    const/4 v0, 0x1

    .line 247
    .restart local v0    # "clockkey":I
    goto :goto_0

    .line 249
    .end local v0    # "clockkey":I
    :pswitch_2
    const/4 v0, 0x2

    .line 250
    .restart local v0    # "clockkey":I
    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setPreview()V
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    packed-switch v0, :pswitch_data_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 237
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f020390

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f020391

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f020392

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
