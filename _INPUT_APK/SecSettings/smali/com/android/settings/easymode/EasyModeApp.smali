.class public Lcom/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field private static mModeItem:[Ljava/lang/String;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private RootList:Landroid/widget/ListView;

.field private easy_mode_apps:Landroid/preference/PreferenceScreen;

.field private easy_mode_apps_category:Landroid/preference/PreferenceCategory;

.field private easy_mode_camera:Landroid/preference/CheckBoxPreference;

.field private easy_mode_clock:Landroid/preference/CheckBoxPreference;

.field private easy_mode_email:Landroid/preference/CheckBoxPreference;

.field private easy_mode_gallery:Landroid/preference/CheckBoxPreference;

.field private easy_mode_home:Landroid/preference/CheckBoxPreference;

.field private easy_mode_internet:Landroid/preference/CheckBoxPreference;

.field private easy_mode_messages:Landroid/preference/CheckBoxPreference;

.field private easy_mode_music:Landroid/preference/CheckBoxPreference;

.field private easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

.field private easy_mode_phone:Landroid/preference/CheckBoxPreference;

.field private easy_mode_select_all:Landroid/preference/CheckBoxPreference;

.field private easy_mode_splanner:Landroid/preference/CheckBoxPreference;

.field private easy_mode_video:Landroid/preference/CheckBoxPreference;

.field private easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentEsayModeState:I

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

.field private mFontCategory:Landroid/preference/PreferenceCategory;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mHomeCategory:Landroid/preference/PreferenceCategory;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mModeState:I

.field private mOldEsayModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSaveButton:Landroid/widget/Button;

.field private mTempView:Landroid/view/View;

.field private mcancelButton:Landroid/widget/Button;

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I

.field private selected_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    .line 134
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.easylauncher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    .line 111
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mOldEsayModeState:I

    .line 112
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurrentEsayModeState:I

    .line 114
    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/easymode/EasyModeApp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/easymode/EasyModeApp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/easymode/EasyModeApp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private checkAllEasyModeApps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 698
    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkAllEasyModeApps"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    :cond_9
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    :cond_a
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    :cond_b
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    :cond_c
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkAllEasyModeApps return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private checkLeastOnEasyMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 729
    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkLeastOnEasyMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :cond_9
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :cond_a
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    :cond_b
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    :cond_c
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkLeastOnEasyMode return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private goToPersonal()V
    .locals 4

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1188
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1189
    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 1190
    .local v1, "mPersona":Landroid/os/PersonaManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->launchPersonaHome(I)Z

    .line 1191
    const-string v2, "EasyModeApp"

    const-string v3, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 358
    const-string v3, "EasyModeApp"

    const-string v4, "KKK initPreference"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v3, "easy_mode_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    .line 360
    const-string v3, "easy_mode_app_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a4

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 376
    :goto_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 378
    .local v0, "build_model":Ljava/lang/String;
    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FontSizeListPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    const-string v3, "font_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontCategory:Landroid/preference/PreferenceCategory;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mFontCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    const-string v3, "home_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mHomeCategory:Landroid/preference/PreferenceCategory;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHomeCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    const-string v3, "easy_mode_home"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_home:Landroid/preference/CheckBoxPreference;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_home:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    const-string v3, "easy_mode_select_all"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    .line 388
    const-string v3, "easy_mode_camera"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    .line 389
    const-string v3, "SM-C115"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_0
    const-string v3, "easy_mode_clock"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    .line 393
    const-string v3, "easy_mode_email"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    .line 394
    const-string v3, "easy_mode_gallery"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    .line 395
    const-string v3, "easy_mode_internet"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    .line 396
    const-string v3, "easy_mode_messages"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    .line 397
    const-string v3, "easy_mode_myfiles"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    .line 398
    const-string v3, "easy_mode_music"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    .line 399
    const-string v3, "easy_mode_phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    .line 400
    const-string v3, "easy_mode_splanner"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    .line 401
    const-string v3, "easy_mode_video"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    .line 402
    const-string v3, "easy_mode_voicerecorder"

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    .line 403
    invoke-static {}, Lcom/android/settings/Utils;->isJ_Device()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    :cond_1
    return-void

    .line 364
    .end local v0    # "build_model":Ljava/lang/String;
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve orientation"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a5

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    .prologue
    .line 417
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.easylauncher"

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v1, "easyLauncerCN":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 421
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    const/4 v3, 0x1

    .line 424
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKnoxmode(Landroid/content/Context;)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1227
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1231
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1232
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    const/4 v3, 0x1

    .line 1235
    :cond_0
    return v3
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1065
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1067
    .local v0, "isVzwSetupRunning":Z
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    .end local v0    # "isVzwSetupRunning":Z
    :cond_0
    return v0
.end method

.method private saveEasyModeApps()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 598
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_camera"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v2

    .line 601
    .local v0, "currentValue":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_camera"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 602
    if-eq v1, v0, :cond_0

    .line 603
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeCameraIntent(Z)V

    .line 606
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 607
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_clock"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 609
    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 610
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_email"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    :goto_3
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 612
    :cond_2
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 613
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_gallery"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v2

    :goto_4
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 615
    :cond_3
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    .line 616
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_internet"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    :goto_5
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 618
    :cond_4
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 619
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_messages"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 620
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v0, v2

    .line 621
    .restart local v0    # "currentValue":I
    :goto_6
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_messages"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v2

    :goto_7
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 622
    if-eq v1, v0, :cond_5

    .line 623
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMessageIntent(Z)V

    .line 626
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_5
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 627
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_myfiles"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    :goto_8
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 629
    :cond_6
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 630
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_music"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 631
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v2

    .line 632
    .restart local v0    # "currentValue":I
    :goto_9
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_music"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    :goto_a
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 633
    if-eq v1, v0, :cond_7

    .line 634
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMusicIntent(Z)V

    .line 637
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    .line 638
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_contacts"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v2

    :goto_b
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 639
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeContactIntent(Z)V

    .line 641
    :cond_8
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    .line 642
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_splanner"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v2

    :goto_c
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 644
    :cond_9
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_a

    .line 645
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_video"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v2

    :goto_d
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 647
    :cond_a
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_b

    .line 648
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_voicerecorder"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 649
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v2

    .line 650
    .restart local v0    # "currentValue":I
    :goto_e
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_voicerecorder"

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1b

    :goto_f
    invoke-virtual {v4, v5, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 651
    if-eq v1, v0, :cond_b

    .line 652
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeVoiceNotentent(Z)V

    .line 655
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_b
    return-void

    .restart local v1    # "prevValue":I
    :cond_c
    move v0, v3

    .line 600
    goto/16 :goto_0

    .restart local v0    # "currentValue":I
    :cond_d
    move v4, v3

    .line 601
    goto/16 :goto_1

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_e
    move v4, v3

    .line 607
    goto/16 :goto_2

    :cond_f
    move v4, v3

    .line 610
    goto/16 :goto_3

    :cond_10
    move v4, v3

    .line 613
    goto/16 :goto_4

    :cond_11
    move v4, v3

    .line 616
    goto/16 :goto_5

    .restart local v1    # "prevValue":I
    :cond_12
    move v0, v3

    .line 620
    goto/16 :goto_6

    .restart local v0    # "currentValue":I
    :cond_13
    move v4, v3

    .line 621
    goto/16 :goto_7

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_14
    move v4, v3

    .line 627
    goto/16 :goto_8

    .restart local v1    # "prevValue":I
    :cond_15
    move v0, v3

    .line 631
    goto/16 :goto_9

    .restart local v0    # "currentValue":I
    :cond_16
    move v4, v3

    .line 632
    goto/16 :goto_a

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_17
    move v4, v3

    .line 638
    goto/16 :goto_b

    :cond_18
    move v4, v3

    .line 642
    goto :goto_c

    :cond_19
    move v4, v3

    .line 645
    goto :goto_d

    .restart local v1    # "prevValue":I
    :cond_1a
    move v0, v3

    .line 649
    goto :goto_e

    .restart local v0    # "currentValue":I
    :cond_1b
    move v2, v3

    .line 650
    goto :goto_f
.end method

.method private startLauncher(Z)V
    .locals 1
    .param p1, "isTurnToEasy"    # Z

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isVzwSetupRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    .line 1062
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher(Z)V

    goto :goto_0
.end method

.method private updateCheckBoxState(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 760
    const-string v0, "EasyModeApp"

    const-string v3, "KKK updateCheckBoxState"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 762
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 765
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_clock"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 768
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 771
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 774
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 777
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 779
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 780
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_myfiles"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 782
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 783
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 785
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 786
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 788
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 789
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 791
    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 792
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 795
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_voicerecorder"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 797
    :cond_b
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 798
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 802
    :cond_c
    :goto_c
    return-void

    :cond_d
    move v0, v2

    .line 762
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 765
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 768
    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 771
    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 774
    goto/16 :goto_4

    :cond_12
    move v0, v2

    .line 777
    goto/16 :goto_5

    :cond_13
    move v0, v2

    .line 780
    goto/16 :goto_6

    :cond_14
    move v0, v2

    .line 783
    goto :goto_7

    :cond_15
    move v0, v2

    .line 786
    goto :goto_8

    :cond_16
    move v0, v2

    .line 789
    goto :goto_9

    :cond_17
    move v0, v2

    .line 792
    goto :goto_a

    :cond_18
    move v0, v2

    .line 795
    goto :goto_b

    .line 799
    :cond_19
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 800
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_c
.end method

.method private updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "ainfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 581
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 582
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 583
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 585
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updatePreperenceStatus()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 428
    const-string v9, "EasyModeApp"

    const-string v10, "KKK updatePreperenceStatus"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 430
    .local v8, "ps":Landroid/preference/PreferenceScreen;
    sget-object v9, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    array-length v6, v9

    .line 431
    .local v6, "length":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 432
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 433
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1f

    .line 435
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 436
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 437
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/ComponentName;

    const-string v9, "com.android.contacts"

    const-string v10, "com.android.dialer.DialtactsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .local v1, "cm":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 439
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    const-string v9, "com.android.incallui"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 499
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 433
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cm":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "cm":Landroid/content/ComponentName;
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 442
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 500
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cm":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 502
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 503
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    goto :goto_2

    .line 443
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "cm":Landroid/content/ComponentName;
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_1
    const-string v9, "com.sec.android.app.clockpackage"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 444
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_4
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 446
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 447
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x20

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 448
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    .line 449
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    :cond_5
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 452
    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    :goto_3
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 455
    :cond_6
    const/16 v9, 0x80

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 461
    :cond_7
    const-string v9, "com.samsung.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 462
    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cm":Landroid/content/ComponentName;
    const-string v9, "com.samsung.contacts"

    const-string v10, "com.android.dialer.DialtactsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .restart local v1    # "cm":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 465
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x20

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 466
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_8

    .line 467
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    :cond_8
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 470
    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 478
    :goto_4
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 473
    :cond_9
    const/16 v9, 0x80

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 480
    :cond_a
    const-string v9, "com.android.email"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 481
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 482
    :cond_b
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 483
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    :cond_c
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 485
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 486
    :cond_d
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 487
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 488
    :cond_e
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 489
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    :cond_f
    const-string v9, "com.sec.android.app.myfiles"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 491
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 492
    :cond_10
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 493
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    :cond_11
    const-string v9, "com.samsung.everglades.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 495
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 496
    :cond_12
    const-string v9, "com.sec.android.app.voicenote"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 497
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 506
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cm":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_13
    const-string v9, "com.sec.android.app.clockpackage"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 507
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 508
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 511
    :cond_14
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 512
    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 513
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 514
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 515
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 518
    :cond_15
    const-string v9, "com.samsung.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 519
    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 520
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 521
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 525
    :cond_16
    const-string v9, "com.android.email"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 526
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 527
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 530
    :cond_17
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 531
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 532
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 535
    :cond_18
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 536
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 537
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 540
    :cond_19
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 541
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 542
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 545
    :cond_1a
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 546
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 547
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 548
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 550
    :cond_1b
    const-string v9, "com.sec.android.app.myfiles"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 551
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 552
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 555
    :cond_1c
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 556
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 557
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 560
    :cond_1d
    const-string v9, "com.samsung.everglades.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 561
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 562
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 563
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 565
    :cond_1e
    const-string v9, "com.sec.android.app.voicenote"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 566
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 567
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 573
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 883
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v2, "easy_mode_switch"

    invoke-virtual {v1, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    .line 884
    .local v0, "saved_value":I
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK updateState mEasyModeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    if-ne v0, v4, :cond_0

    .line 886
    const/4 v0, 0x0

    .line 891
    :goto_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 892
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , selected_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-ne v0, v1, :cond_1

    move v1, v0

    :goto_1
    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 895
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 896
    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-ne v1, v4, :cond_2

    .line 897
    iput v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 898
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 899
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 905
    :goto_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 906
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mModeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 888
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 894
    :cond_1
    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    goto :goto_1

    .line 901
    :cond_2
    iput v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 902
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 903
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method initswitchBtn()V
    .locals 4

    .prologue
    .line 956
    const-string v1, "EasyModeApp"

    const-string v2, "KKK initswitchBtn"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 958
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 959
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    .line 960
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 965
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040064

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 966
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 967
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarLayout:Landroid/view/View;

    .line 968
    new-instance v1, Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    .line 969
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 207
    const-string v1, "EasyModeApp"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 215
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 216
    const-string v1, "EasyModeApp"

    const-string v2, "horizontal"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a5

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    :goto_0
    const v1, 0x7f100093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    .line 224
    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    .line 226
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0a21

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 232
    :goto_1
    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 236
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    .line 237
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a165a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 242
    :goto_2
    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 244
    const v1, 0x7f100174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400a7

    sget-object v5, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 249
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onConfigurationChanged selected_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-nez v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    :goto_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 264
    return-void

    .line 219
    :cond_0
    const-string v1, "EasyModeApp"

    const-string v2, "vertical"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a4

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0a20

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 240
    :cond_2
    sget-object v1, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a174c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    goto/16 :goto_2

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 181
    const-string v1, "EasyModeApp"

    const-string v2, "KKK onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    .line 188
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->initPreference()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_easy_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_flag_for_talkback"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "state":I
    if-ne v0, v4, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a174c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_flag_for_talkback"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    .end local v0    # "state":I
    :cond_0
    return-void

    .line 186
    :cond_1
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 199
    .restart local v0    # "state":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a1738

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-object v7

    .line 1200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1201
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1202
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040181

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1203
    .local v2, "layout":Landroid/view/View;
    const v8, 0x7f04017f

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1204
    .local v3, "layout_flash":Landroid/view/View;
    const v8, 0x7f100167

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1205
    .local v5, "mcheck":Landroid/widget/CheckBox;
    const v8, 0x7f10037e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1206
    .local v6, "mcheck_flash":Landroid/widget/CheckBox;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1207
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    .line 1208
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0085

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v9, p0, v0, v5}, Lcom/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/android/settings/easymode/EasyModeApp;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 973
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 975
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 976
    const v2, 0x7f10010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    .line 977
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    const v2, 0x7f10010c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    .line 985
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a04f8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 986
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    .line 1046
    .local v1, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1054
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 270
    .local v3, "v":Landroid/view/View;
    const-string v4, "EasyModeApp"

    const-string v5, "KKK onCreateView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "header":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a5

    invoke-static {v4, v5, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 287
    :goto_1
    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    .line 288
    const v4, 0x7f100093

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    .line 289
    const v4, 0x7f100094

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    .line 291
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0a21

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 299
    :goto_2
    new-array v4, v7, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    .line 300
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a165a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 305
    :goto_3
    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1738

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 306
    const v4, 0x7f100174

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    .line 307
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400a7

    sget-object v8, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    .line 310
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v10, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 311
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 313
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_switch"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, "mEasyModeState":I
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK onCreateView mEasyModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-ne v2, v9, :cond_3

    .line 316
    const/4 v2, 0x0

    .line 317
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 318
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0200c3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 319
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 326
    :goto_4
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK onCreateView mModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 328
    invoke-direct {p0, v9}, Lcom/android/settings/easymode/EasyModeApp;->updateCheckBoxState(Z)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-object v3

    .line 274
    .end local v1    # "header":Landroid/view/View;
    .end local v2    # "mEasyModeState":I
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "EasyModeApp"

    const-string v5, "Unable to retrieve orientation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "header":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a4

    invoke-static {v4, v5, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 294
    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0a20

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 303
    :cond_2
    sget-object v4, Lcom/android/settings/easymode/EasyModeApp;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a174c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    goto/16 :goto_3

    .line 321
    .restart local v2    # "mEasyModeState":I
    :cond_3
    const/4 v2, 0x1

    .line 322
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 323
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0200c2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onItemClick position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez p3, :cond_1

    .line 338
    iput v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 339
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    .line 349
    iput p3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 350
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 352
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->RootList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 354
    :cond_0
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK onItemClick mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 343
    :cond_1
    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 344
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 941
    const-string v0, "EasyModeApp"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 943
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->pause()V

    .line 944
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 659
    const-string v4, "EasyModeApp"

    const-string v5, "KKK onPreferenceTreeClick"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 662
    sget v4, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 663
    sget v4, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, "value":Z
    :goto_0
    move-object v0, p2

    .line 664
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 665
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 671
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v1    # "value":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 672
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 673
    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    .line 678
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 679
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 683
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    move v1, v3

    .line 663
    goto :goto_0

    .line 675
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto :goto_1

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 681
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 910
    const-string v6, "EasyModeApp"

    const-string v7, "KKK onResume"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v2, 0x0

    .line 913
    .local v2, "super_mOpenDetailMenu":Z
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 914
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 916
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 917
    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v6}, Lcom/android/settings/easymode/EasyModeEnabler;->resume()V

    .line 918
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "com.intent.action.easy_mode_switch_change"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 920
    .local v1, "filter":Landroid/content/IntentFilter;
    iput-boolean v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    .line 921
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updateState()V

    .line 922
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    .line 924
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 925
    iget-boolean v6, p0, Lcom/android/settings/easymode/EasyModeApp;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    .line 926
    sget v6, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 928
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v6, "extra_parent_preference_key"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "targetKey":Ljava/lang/String;
    sget v6, Lcom/android/settings/easymode/EasyModeApp;->mSettingValue:I

    if-ne v6, v4, :cond_2

    .line 930
    .local v4, "value":Z
    :goto_0
    const-string v5, "easy_mode_select_all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 931
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/easymode/EasyModeApp;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 935
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 938
    :cond_1
    return-void

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 929
    goto :goto_0
.end method

.method public setAllOptionCheck(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 843
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllOptionCheck state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_clock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 854
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 856
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 860
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 862
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 863
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_myfiles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 866
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 868
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 869
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 871
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 872
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 874
    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 875
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 877
    :cond_a
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 878
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_voicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 880
    :cond_b
    return-void
.end method

.method public setDefaultLauncher(Z)V
    .locals 14
    .param p1, "isEasy"    # Z

    .prologue
    const/4 v13, 0x2

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1147
    .local v2, "context":Landroid/content/Context;
    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK setDefaultLauncher isEasy : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v9, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1150
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1154
    .local v3, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Landroid/content/ComponentName;

    .line 1156
    .local v8, "mHomeComponentSet":[Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v10, v13, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1158
    new-array v8, v13, [Landroid/content/ComponentName;

    .line 1159
    const/4 v10, 0x0

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.easylauncher"

    const-string v13, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    .line 1160
    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.android.launcher2.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    .line 1171
    :cond_0
    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.android.launcher2.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .local v7, "mDefaultCN":Landroid/content/ComponentName;
    if-eqz p1, :cond_3

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.launcher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1175
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.sec.android.app.easylauncher"

    const-string v11, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x100000

    invoke-virtual {v10, v9, v11, v8, v7}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1183
    return-void

    .line 1163
    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 1164
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1165
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1166
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v8, v5

    .line 1168
    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "make mHomeComponentSet ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1177
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.easylauncher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1178
    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1179
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.nttdocomo.android.dhome"

    const-string v11, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public setLargeFont()V
    .locals 6

    .prologue
    .line 806
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    const-wide v4, 0x3ff30a3d70a3d70aL    # 1.19

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 813
    .local v2, "previousIndex":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    sget v3, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_0

    .line 815
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    const-string v3, "EasyModeApp"

    const-string v4, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 822
    return-void

    .line 807
    .end local v2    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStandardFont()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "STANDARD_FONT_SIZE"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 827
    .local v1, "fontIndex":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "indices":[Ljava/lang/String;
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 829
    .local v0, "configValue":F
    const-string v5, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KKK setStandardFont fontIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " configValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    .line 831
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 833
    .local v4, "previousIndex":I
    sget v5, Lcom/android/settings/easymode/EasyModeApp;->HUGE_FONT_INDEX:I

    if-ne v4, v5, :cond_0

    .line 834
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "large_font"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 837
    const-string v5, "EasyModeApp"

    const-string v6, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    return-void
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1107
    const-string v2, "EasyModeApp"

    const-string v3, "KKK writeFontSizePreference"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1110
    .local v1, "fontScale":F
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1112
    sget v1, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 1113
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1116
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1118
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "EasyModeApp"

    const-string v3, "KKK Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
