.class public Lcom/android/settings/inputmethod/MouseOverFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MouseOverFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

.field private mListScrolling:Landroid/preference/CheckBoxPreference;

.field private mMouseHoveringObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/inputmethod/MouseOverFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/MouseOverFragment$1;-><init>(Lcom/android/settings/inputmethod/MouseOverFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/inputmethod/MouseOverFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/MouseOverFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/MouseOverFragment;->broadcastMouseHoveringChanged(Z)V

    return-void
.end method

.method private broadcastMouseHoveringChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1187

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1186

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/MouseOverFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/MouseOverFragment$3;-><init>(Lcom/android/settings/inputmethod/MouseOverFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/inputmethod/MouseOverFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/MouseOverFragment$2;-><init>(Lcom/android/settings/inputmethod/MouseOverFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 309
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    .line 314
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_information_preview"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 315
    .local v3, "informationPreview":I
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_icon_label"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 317
    .local v2, "iconLabels":I
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_full_text"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 318
    .local v1, "fullText":I
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_progress_bar_preview"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "progressBarPreview":I
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_magnetic_ui"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 320
    .local v4, "magneticUI":I
    iget-object v8, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "mouse_hovering_list_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, "ListScroll":I
    or-int v8, v3, v2

    or-int/2addr v8, v1

    or-int/2addr v8, v5

    or-int/2addr v8, v4

    or-int/2addr v8, v0

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 224
    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->makeTalkBackDisablePopup()V

    .line 252
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/MouseOverFragment;->broadcastMouseHoveringChanged(Z)V

    .line 234
    const-string v0, "MouseOverFragment"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 245
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/MouseOverFragment;->broadcastMouseHoveringChanged(Z)V

    .line 247
    const-string v0, "MouseOverFragment"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x0

    const/16 v6, 0x10

    const/4 v7, -0x2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v4, 0x7f07007b

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/MouseOverFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    .line 102
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 106
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 108
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    invoke-static {}, Lcom/android/settings/Utils;->isMouseHoveringSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 112
    .local v2, "padding":I
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v2, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    .line 142
    .end local v2    # "padding":I
    .end local v3    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    .line 146
    const-string v4, "key_preview_and_icon_labels"

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/MouseOverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0a13d3

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 150
    :cond_1
    const-string v4, "key_list_scrolling"

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/MouseOverFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    .line 152
    return-void

    .line 126
    :cond_2
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 127
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    .local v0, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 131
    .restart local v3    # "sa":Lcom/android/settings/SettingsActivity;
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 137
    const v4, 0x7f10010e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 138
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1393

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 205
    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/MouseOverFragment;->broadcastMouseHoveringChanged(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 258
    sget v4, Lcom/android/settings/inputmethod/MouseOverFragment;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 259
    sget v4, Lcom/android/settings/inputmethod/MouseOverFragment;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 260
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 261
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-static {v5, v4}, Lcom/android/settings/Utils;->setMouseHoveringValExceptListScroll(Landroid/content/ContentResolver;I)V

    .line 275
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 279
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 259
    goto :goto_0

    :cond_4
    move v4, v3

    .line 268
    goto :goto_1

    .line 270
    :cond_5
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mouse_hovering_list_scroll"

    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "super_mOpenDetailMenu":Z
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 161
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 162
    const-string v4, "MouseOverFragment"

    const-string v5, "onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    .line 171
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 174
    .local v0, "MouseHoveringViewState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/android/settings/Utils;->isMouseHoveringEnabledExceptListscrolling(Landroid/content/ContentResolver;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "mouse_hovering_list_scroll"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mouse_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 190
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 192
    return-void

    .end local v0    # "MouseHoveringViewState":Z
    :cond_2
    move v0, v3

    .line 171
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/MouseOverFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/MouseOverFragment;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    return-void
.end method
