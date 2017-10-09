.class Lcom/android/settings/inputmethod/SpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;
    }
.end annotation


# instance fields
.field private final mOnRadioButtonListener:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p3, "onRadioButtonListener"    # Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, v3, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setPersistent(Z)V

    .line 66
    const v2, 0x7f0401a7

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setLayoutResource(I)V

    .line 67
    const v2, 0x7f0401a8

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    .line 68
    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 69
    iput-object p3, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mOnRadioButtonListener:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

    .line 70
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setKey(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setIntent(Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private enableSettingsButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private onSettingsButtonClicked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0a098b

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->enableSettingsButton(Z)V

    .line 134
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSci:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 85
    const v0, 0x7f1003b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 86
    const v0, 0x7f1003b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f1003b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->updateSelectedState(Z)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mOnRadioButtonListener:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;->onRadioButtonClicked(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->onSettingsButtonClicked()V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mSelected:Z

    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->updateSelectedState(Z)V

    .line 127
    return-void
.end method
