.class public Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeBlackGrey.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mCheck:I

.field private mIsFromHelp:Z

.field private mPowerSaving2014Observer:Landroid/database/ContentObserver;

.field private mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 63
    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 67
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method private isAutoEnable()Z
    .locals 5

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "autoEnableState":I
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 175
    const/4 v1, 0x1

    .line 177
    :cond_0
    const-string v2, "PowerSavingModeBlackGrey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v1
.end method

.method private showPowerSavingHelpComplateDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 279
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 281
    iput-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 283
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    .line 284
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v3, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400d7

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1001dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    .local v0, "bubble_summary":Landroid/widget/TextView;
    const v3, 0x7f0a1111

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 290
    const v3, 0x7f10013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 291
    .local v1, "closeBtn":Landroid/widget/ImageView;
    new-instance v3, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$2;

    invoke-direct {v3, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v3, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 301
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 302
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 303
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 304
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 308
    .end local v0    # "bubble_summary":Landroid/widget/TextView;
    .end local v1    # "closeBtn":Landroid/widget/ImageView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showPowerSavingHelpDialog()V
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1001dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, "bubble_summary":Landroid/widget/TextView;
    const v2, 0x7f0a1110

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 270
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 271
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 272
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 273
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 277
    .end local v0    # "bubble_summary":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method initswitchBtn()V
    .locals 10

    .prologue
    const v9, 0x800015

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v7, -0x2

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 217
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    .line 220
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 221
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v3, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 222
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 227
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 232
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    .line 246
    .end local v3    # "padding":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    return-void

    .line 234
    :cond_1
    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 235
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 237
    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 238
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 243
    const v4, 0x7f10010e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    .line 244
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 252
    .local v3, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "basic_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 254
    .local v2, "data_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, "black_grey_powersaving":I
    const-string v5, "PowerSavingModeBlackGrey"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", basic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", black_grey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 258
    .local v4, "retVal":Z
    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    const-string v3, "PowerSavingModeBlackGrey"

    const-string v4, "onCheckedChanged"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 187
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 189
    .local v2, "isLowLevel":I
    if-eqz p2, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_contrast"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_blind"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->isAutoEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v2, v6, :cond_1

    .line 195
    :cond_0
    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    if-eqz v3, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->showPowerSavingHelpComplateDialog()V

    .line 213
    :cond_2
    :goto_1
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 324
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->showPowerSavingHelpDialog()V

    .line 331
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    .line 87
    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 90
    :cond_0
    const-string v1, "PowerSavingModeBlackGrey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromHelp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 96
    const v2, 0x7f04016e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const v2, 0x7f100358

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->initswitchBtn()V

    .line 106
    return-object v1

    .line 102
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f100357

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .restart local v0    # "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpComplateDialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 318
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PowerSavingModeBlackGrey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v1, "PowerSavingModeBlackGrey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Black grey mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mCheck:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blackgrey_powersaving_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 145
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 147
    :cond_1
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    const-string v0, "PowerSavingModeBlackGrey"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaving_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mIsFromHelp:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->showPowerSavingHelpComplateDialog()V

    .line 130
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blackgrey_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mCheck:I

    .line 131
    return-void

    :cond_2
    move v0, v2

    .line 117
    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->showPowerSavingHelpDialog()V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeBlackGrey;->mPowerSavingHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 158
    :cond_0
    return-void
.end method
