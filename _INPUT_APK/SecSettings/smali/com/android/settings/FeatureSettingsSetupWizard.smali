.class public Lcom/android/settings/FeatureSettingsSetupWizard;
.super Landroid/app/Activity;
.source "FeatureSettingsSetupWizard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettingsSetupWizard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FeatureSettingsSetupWizard;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->setEasyMode()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setEasyMode()V
    .locals 12

    .prologue
    const/high16 v11, 0x100000

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.easylauncher"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "isEasy":I
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 127
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "teasymode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.skt.tmode"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "op_mode_switch"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, "isOperatorMode":I
    const/4 v5, 0x3

    new-array v0, v5, [Landroid/content/ComponentName;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v9

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.easylauncher"

    const-string v7, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v8

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.skt.tmode"

    const-string v7, "com.skt.tmode.TmodeMainActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v10

    .line 136
    .local v0, "components":[Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.launcher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v3, "mDefaultCN":Landroid/content/ComponentName;
    if-ne v2, v8, :cond_1

    .line 138
    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v5, "com.skt.tmode"

    const-string v6, "com.skt.tmode.TmodeMainActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .restart local v3    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v11, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 155
    .end local v2    # "isOperatorMode":I
    :goto_1
    return-void

    .line 140
    .restart local v2    # "isOperatorMode":I
    :cond_1
    if-nez v1, :cond_0

    .line 141
    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "mDefaultCN":Landroid/content/ComponentName;
    goto :goto_0

    .line 146
    .end local v0    # "components":[Landroid/content/ComponentName;
    .end local v2    # "isOperatorMode":I
    .end local v3    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_2
    new-array v0, v10, [Landroid/content/ComponentName;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v9

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.easylauncher"

    const-string v7, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v8

    .line 148
    .restart local v0    # "components":[Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.launcher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v3    # "mDefaultCN":Landroid/content/ComponentName;
    if-nez v1, :cond_3

    .line 150
    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .restart local v3    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v11, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_1
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 114
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a0ca0

    const v6, 0x7f0a08d5

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 51
    :cond_0
    const v4, 0x7f0400b5

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->setIndicatorTransparency()V

    .line 57
    const v4, 0x7f10009d

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "button_next":Landroid/view/View;
    new-instance v4, Lcom/android/settings/FeatureSettingsSetupWizard$1;

    invoke-direct {v4, p0}, Lcom/android/settings/FeatureSettingsSetupWizard$1;-><init>(Lcom/android/settings/FeatureSettingsSetupWizard;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 86
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is Button instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 87
    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "nextBtn":Landroid/widget/Button;
    const-string v4, ""

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "jflteaio"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "original_str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02056b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, -0xa

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v1    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 94
    .restart local v1    # "nextBtn":Landroid/widget/Button;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "original_str":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v1    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is LinearLayout instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v4, 0x7f10001b

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, "nextBtnText":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 102
    const-string v4, "jflteaio"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
