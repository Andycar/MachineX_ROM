.class public Lcom/android/settings/powersavingmode/PowerSavingMode2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingMode2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private isInPowerSavingOption:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mBasicPowerSaving:Landroid/preference/PreferenceScreen;

.field private mBasicPowerSavingObserver:Landroid/database/ContentObserver;

.field private mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

.field private mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

.field private mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

.field private mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

.field private mEnableSettings:Landroid/preference/ListPreference;

.field private mPowerSaving2014Observer:Landroid/database/ContentObserver;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    .line 85
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$3;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Lcom/android/settings/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private isBackGrayAutoEnable()Z
    .locals 5

    .prologue
    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "autoEnableState":I
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 489
    const/4 v1, 0x1

    .line 491
    :cond_0
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v1
.end method

.method private updateUIPowerSaving()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 388
    :cond_0
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "powersavingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 390
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_3

    .line 392
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 393
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 394
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 409
    :cond_2
    :goto_0
    return-void

    .line 401
    :cond_3
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v6}, Lcom/android/settings/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 404
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4

    .line 405
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 406
    :cond_4
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v2, v6}, Lcom/android/settings/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getEntryByValue(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 281
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 282
    .local v3, "values":[Ljava/lang/CharSequence;
    const-string v2, ""

    .line 283
    .local v2, "ret":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 284
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 285
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    move v1, v0

    .line 290
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initPowersavingswitchBtn()V
    .locals 11

    .prologue
    const v10, 0x800015

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 498
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 500
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 502
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v3, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 503
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-nez v4, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 509
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 513
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    .line 526
    .end local v3    # "padding":I
    :goto_0
    new-instance v4, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v1, v5, v8}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    .line 528
    return-void

    .line 515
    :cond_1
    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 516
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 517
    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 518
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 523
    const v4, 0x7f10010e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 524
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 414
    .local v3, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 415
    .local v0, "basic_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 416
    .local v2, "data_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 418
    .local v1, "black_grey_powersaving":I
    const-string v5, "PowerSavingMode2014"

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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 420
    .local v4, "retVal":Z
    :cond_0
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mOpenDetailMenu:Z

    if-eqz v7, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, "ArrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "preKey":Ljava/lang/String;
    const-string v7, "power_saving_mode_battery"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->removeOneDepthArrayLinkKey()V

    .line 127
    .end local v0    # "ArrayLinkKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "preKey":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0700a1

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->addPreferencesFromResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 129
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->initPowersavingswitchBtn()V

    .line 131
    const-string v7, "basic_powersaving"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v7, "basic_powersaving_tablet"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    .line 134
    const-string v7, "data_powersaving_check"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v7, "black_grey_powersaving"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    .line 136
    const-string v7, "black_grey_powersaving_tablet"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/SwitchPreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    .line 138
    const-string v7, "enable_settings_new"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    .line 139
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    const-string v7, "power_saving_mode_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->removePreference(Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_0
    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_2
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 160
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5}, Landroid/os/UserManager;->getUserHandle()I

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 166
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_4
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v7, :cond_5

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mOpenDetailMenu:Z

    if-eqz v7, :cond_6

    .line 174
    sget v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 176
    .local v2, "extra_bundle":Landroid/os/Bundle;
    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "targetKey":Ljava/lang/String;
    sget v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    if-ne v7, v6, :cond_8

    .line 178
    .local v6, "value":Z
    :goto_1
    const-string v7, "basic_powersaving_tablet"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 179
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v7, :cond_6

    .line 180
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7}, Lcom/android/settings/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 181
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 182
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "extra_bundle":Landroid/os/Bundle;
    .end local v4    # "targetKey":Ljava/lang/String;
    .end local v6    # "value":Z
    :cond_6
    :goto_2
    return-void

    .line 150
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 177
    .restart local v2    # "extra_bundle":Landroid/os/Bundle;
    .restart local v4    # "targetKey":Ljava/lang/String;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 185
    .restart local v6    # "value":Z
    :cond_9
    const-string v7, "black_grey_powersaving_tablet"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 187
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v7, :cond_6

    .line 188
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7}, Lcom/android/settings/SwitchPreferenceScreen;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 189
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v7, v6}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 190
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 209
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 379
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 376
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->finish()V

    .line 377
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    const-string v0, "PowerSavingMode2014"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->pause()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 427
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "key":Ljava/lang/String;
    const-string v6, "enable_settings_new"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p2

    .line 430
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 431
    .local v5, "value":I
    const-string v6, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_auto_turn_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 433
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v6}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->changeAutoEnable()V

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_auto_turn_on"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 438
    .local v1, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    if-ne v5, v7, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 444
    .end local v1    # "entry":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 445
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 446
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 447
    .local v5, "value":Z
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 449
    const-string v6, "accessibility"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 451
    .local v2, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "isLowLevel"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 452
    .local v3, "isLowLevel":I
    if-eqz v5, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "blackgrey_powersaving_mode"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "high_contrast"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "color_blind"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isBackGrayAutoEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v3, v7, :cond_3

    .line 458
    :cond_2
    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v2    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "isLowLevel":I
    .end local v5    # "value":Z
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "powersaving_switch"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    :cond_4
    return v8

    .line 460
    .restart local v2    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v3    # "isLowLevel":I
    .restart local v5    # "value":Z
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "blackgrey_powersaving_mode"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v2, v6, v7}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 467
    :catch_1
    move-exception v0

    .line 468
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "isLowLevel":I
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 473
    .restart local v5    # "value":Z
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_switch"

    if-eqz v5, :cond_7

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    const-string v6, "PowerSavingMode2014"

    const-string v7, "onPreferenceChange() - mBasicPowerSaving"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v6, v8

    .line 474
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mOpenDetailMenu:Z

    if-eqz v7, :cond_0

    .line 319
    sget v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 320
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v1, "intent":Landroid/content/Intent;
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    .local v2, "linkArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, "targetKey":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v7, "extra_setting_value"

    sget v8, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mSettingValue:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "linkArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "targetKey":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 332
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v7, v5, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0048

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 335
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0d40

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a091f

    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;

    invoke-direct {v7, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0920

    new-instance v7, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;

    invoke-direct {v7, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;

    invoke-direct {v6, p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;-><init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 363
    .end local v3    # "message":Ljava/lang/CharSequence;
    :goto_0
    const-string v5, "PowerSavingMode2014"

    const-string v6, "onPreferenceTreeClick() - mDataPowerSavingCheck"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_2

    .line 366
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v5, 0x7f0a0a91

    const v4, 0x7f0a0a90

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    const-string v3, "PowerSavingMode2014"

    const-string v8, "onResume() "

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, "super_mOpenDetailMenu":Z
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 226
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 229
    iput-boolean v7, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    .line 232
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->updateUIPowerSaving()V

    .line 233
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    invoke-virtual {v3}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->resume()V

    .line 234
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 235
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "powersaving_switch"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v3, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 245
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "psm_switch"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "blackgrey_powersaving_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 260
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_powersaving_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_auto_turn_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "curEnableValue":I
    const-string v3, "PowerSavingMode2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curEnableValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getEntryByValue(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mEnableSettings:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 275
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 277
    return-void

    .end local v0    # "curEnableValue":I
    .end local v1    # "entry":Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 245
    goto :goto_0

    :cond_4
    move v4, v5

    .line 248
    goto :goto_1

    .line 251
    :cond_5
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_switch"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Lcom/android/settings/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBasicPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    if-eqz v3, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    :goto_5
    invoke-virtual {v4, v3}, Lcom/android/settings/SwitchPreferenceScreen;->setChecked(Z)V

    .line 256
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGreyPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Lcom/android/settings/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blackgrey_powersaving_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mBlackGrayPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_2

    :cond_6
    move v3, v7

    .line 251
    goto :goto_4

    :cond_7
    move v3, v7

    .line 255
    goto :goto_5

    :cond_8
    move v6, v7

    .line 260
    goto/16 :goto_3
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 309
    const-string v1, "PowerSavingMode2014"

    const-string v2, "onStop() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->isInPowerSavingOption:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    :cond_0
    return-void
.end method
