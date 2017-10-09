.class public Lcom/android/settings/SettingsTextSwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SettingsTextSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mFragment:Landroid/preference/PreferenceFragment;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0401fa

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTextSwitchPreference;->setLayoutResource(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/preference/TwoStatePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f100065

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "widget":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/Switch;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 72
    check-cast v0, Landroid/widget/Switch;

    .line 73
    .local v0, "rb":Landroid/widget/Switch;
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 76
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    .line 79
    .end local v0    # "rb":Landroid/widget/Switch;
    :cond_0
    const v4, 0x7f100485

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "textLayout":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_1
    return-object v2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTextSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    const v1, 0x7f100485

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public setFragment(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    .line 101
    return-void
.end method
