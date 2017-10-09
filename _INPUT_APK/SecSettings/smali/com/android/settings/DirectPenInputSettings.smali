.class public Lcom/android/settings/DirectPenInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# static fields
.field private static mActionBarLayout:Landroid/view/View;


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_INPUT_LANGUAGE:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private isTryButtonPressed:Z

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const-string v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    .line 53
    const-string v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    .line 54
    const-string v0, "pen_writing_buddy_input_language"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    .line 55
    const-string v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    .line 56
    const-string v0, "accessibility_magnifier"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    .line 59
    const-string v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    .line 60
    const-string v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 64
    iput-boolean v2, p0, Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z

    .line 65
    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    .line 67
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 68
    iput-boolean v2, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 69
    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 272
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$3;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 303
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$4;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$5;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 450
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$8;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 468
    new-instance v0, Lcom/android/settings/DirectPenInputSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$9;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/DirectPenInputSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->isTalkbackAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/DirectPenInputSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DirectPenInputSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setPreferenceEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 196
    .local v2, "writingBuddyOn":Z
    :cond_0
    const-string v3, "input_language"

    invoke-virtual {p0, v3}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 197
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    :cond_1
    const-string v3, "predictive_text"

    invoke-virtual {p0, v3}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 202
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 205
    :cond_2
    return-void
.end method

.method private startTryIt()V
    .locals 3

    .prologue
    .line 339
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.contacts.action.WRITINGBUDDY_SEARCH_INPUT_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/settings/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startWritingBuddyService()V
    .locals 5

    .prologue
    .line 493
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 494
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.writingbuddyservice"

    const-string v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DirectPenInputSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 7

    .prologue
    .line 367
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v5, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 368
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 371
    const-string v3, ""

    .line 374
    :cond_0
    move-object v0, v4

    .line 375
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 377
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 380
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 381
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    const/4 v5, 0x1

    .line 386
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f070045

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v2, 0x7f1000bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 152
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    .line 179
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$2;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$1;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 86
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->setHasOptionsMenu(Z)V

    .line 87
    const v10, 0x7f070044

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->addPreferencesFromResource(I)V

    .line 89
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    .line 90
    .local v9, "writingBuddyOn":Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "inputMethodId":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 95
    :cond_0
    const-string v10, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 96
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 97
    .local v6, "pf":Landroid/preference/Preference;
    if-eqz v6, :cond_1

    .line 98
    const-string v10, "settings_main"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 99
    .local v5, "pc":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    .end local v5    # "pc":Landroid/preference/PreferenceScreen;
    .end local v6    # "pf":Landroid/preference/Preference;
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 115
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 116
    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "deviceType":Ljava/lang/String;
    const-string v10, "tablet"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 118
    .local v4, "isTablet":Z
    if-nez v4, :cond_7

    .line 119
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    :goto_2
    new-instance v10, Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0058

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 125
    .local v7, "rightPadding":I
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v7, v13}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 126
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 129
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const v14, 0x800015

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 133
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v10

    sput-object v10, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    .line 134
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    .end local v2    # "deviceType":Ljava/lang/String;
    .end local v4    # "isTablet":Z
    .end local v7    # "rightPadding":I
    :cond_2
    const-string v10, "predictive_text"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 138
    .local v1, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_4

    .line 139
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x1

    .line 140
    .local v8, "textSuggestion":Z
    :goto_3
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eq v10, v8, :cond_3

    .line 141
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    :cond_3
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    .end local v8    # "textSuggestion":Z
    :cond_4
    return-void

    .line 89
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v3    # "inputMethodId":Ljava/lang/String;
    .end local v9    # "writingBuddyOn":Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v3    # "inputMethodId":Ljava/lang/String;
    .restart local v9    # "writingBuddyOn":Z
    :cond_6
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 106
    .restart local v6    # "pf":Landroid/preference/Preference;
    if-eqz v6, :cond_1

    .line 107
    const-string v10, "settings_main"

    invoke-virtual {p0, v10}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 108
    .restart local v5    # "pc":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 121
    .end local v5    # "pc":Landroid/preference/PreferenceScreen;
    .end local v6    # "pf":Landroid/preference/Preference;
    .restart local v0    # "bar":Landroid/app/ActionBar;
    .restart local v2    # "deviceType":Ljava/lang/String;
    .restart local v4    # "isTablet":Z
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_2

    .line 139
    .end local v2    # "deviceType":Ljava/lang/String;
    .end local v4    # "isTablet":Z
    .restart local v1    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    const v1, 0x7f0a16b9

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 243
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 260
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/settings/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 212
    const-string v5, "writingbuddymanagerservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startWritingBuddyService()V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 216
    .local v2, "writingBuddyOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_1

    .line 217
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    .line 220
    const-string v5, "input_language"

    invoke-virtual {p0, v5}, Lcom/android/settings/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 221
    .local v0, "pf":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 222
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    .end local v1    # "summary":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 226
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 229
    :cond_3
    return-void

    .end local v0    # "pf":Landroid/preference/Preference;
    .end local v2    # "writingBuddyOn":Z
    :cond_4
    move v2, v4

    .line 215
    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 234
    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "withOffFunctions"    # Z

    .prologue
    const v4, 0x7f0a11b8

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a11bc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a11b9

    new-instance v3, Lcom/android/settings/DirectPenInputSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/DirectPenInputSettings$7;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$6;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 448
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public turnOffTalkBack()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 390
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v7, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 391
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v6

    .line 395
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "builder":Ljava/lang/StringBuilder;
    move-object v1, v4

    .line 400
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 401
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 402
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 404
    iget-char v6, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    :cond_3
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 410
    .end local v2    # "componentNameString":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v5, "talk_back_off":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 413
    const/4 v6, 0x1

    goto :goto_0
.end method
