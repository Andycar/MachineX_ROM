.class public Lcom/android/settings/AccessibilitySettingsSetupWizard;
.super Landroid/preference/PreferenceActivity;
.source "AccessibilitySettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    return-void
.end method


# virtual methods
.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    if-nez p3, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "null"

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v6

    .line 70
    :goto_0
    return-object v6

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    .line 67
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v6

    .line 69
    .local v6, "intent":Landroid/content/Intent;
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->finish()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a08d5

    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 28
    :cond_0
    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setContentView(I)V

    .line 30
    const v4, 0x7f10001a

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 34
    check-cast v2, Landroid/widget/Button;

    .line 35
    .local v2, "nextBtn":Landroid/widget/Button;
    const-string v4, ""

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "original_str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02056b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, -0xa

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v2    # "nextBtn":Landroid/widget/Button;
    .end local v3    # "original_str":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setIndicatorTransparency()V

    .line 47
    return-void

    .line 40
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0a39

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "desc_tts":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    goto :goto_0
.end method
