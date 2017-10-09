.class public Lcom/android/settings/motion2014/SMotionGuideHub2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;
    }
.end annotation


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field private mAdvancedSettingsIsTop:Z

.field private mAirBrowseDialog:Landroid/app/AlertDialog;

.field private final mAirBrowseObserver:Landroid/database/ContentObserver;

.field private mAirBrowsePreference:Landroid/preference/Preference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mEmailBody:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mFunctionTitleID1:I

.field private mFunctionTitleID2:I

.field private mFunctionTitleID3:I

.field private mFunctionTitleView1:Landroid/widget/TextView;

.field private mFunctionTitleView2:Landroid/widget/TextView;

.field private mFunctionTitleView3:Landroid/widget/TextView;

.field private mGuideAniResID1:I

.field private mGuideAniResID2:I

.field private mGuideAniResID3:I

.field private mGuideContent1:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mGuideContent3:Ljava/lang/String;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHeadMessageID:I

.field private mHeadMessageView:Landroid/widget/TextView;

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mIsTurningOverOnly:Z

.field private mListView:Landroid/widget/ListView;

.field private mMessageView1:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mMessageView3:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mNumOfTutorial:I

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private final mQuickApplicationObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

.field private mSupportFolderType:Z

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;

.field private mTutorialTitleID1:I

.field private mTutorialTitleID2:I

.field private mTutorialTitleID3:I

.field private mTutorialTitleView1:Landroid/widget/TextView;

.field private mTutorialTitleView2:Landroid/widget/TextView;

.field private mTutorialTitleView3:Landroid/widget/TextView;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 114
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 115
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 116
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 117
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    .line 118
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    .line 120
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    .line 121
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    .line 122
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    .line 123
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    .line 124
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    .line 125
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    .line 126
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    .line 127
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 128
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    .line 129
    iput v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    .line 147
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 171
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 172
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    .line 173
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 174
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    .line 175
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    .line 176
    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 183
    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$1;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseObserver:Landroid/database/ContentObserver;

    .line 1547
    new-instance v0, Lcom/android/settings/motion2014/SMotionGuideHub2014$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$15;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/SMotionGuideHub2014;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastAirBrowseAndScrollChanged(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    .prologue
    .line 1495
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v1, "motion_changed_scroll":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1497
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1498
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v0, "motion_changed_browse":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1500
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1501
    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1492
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1493
    return-void
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "intent_type"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .prologue
    .line 1503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1504
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1506
    return-void
.end method

.method private isAllAirTurnAndScrollOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 1458
    const/4 v4, 0x0

    .line 1459
    .local v4, "scrollemailbody":I
    const/4 v5, 0x0

    .line 1461
    .local v5, "scrollwebpage":I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_single_photo_view"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1462
    .local v6, "singlephotoview":I
    const/4 v1, 0x0

    .line 1463
    .local v1, "internetwindow":I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_now_playing_on_music"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1464
    .local v3, "nowplayingmusic":I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1465
    .local v0, "bgmonlockscreen":I
    iget-object v9, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_turn_note_page_view"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1466
    .local v2, "notepageview":I
    or-int/lit8 v9, v6, 0x0

    or-int/2addr v9, v1

    or-int/2addr v9, v3

    or-int/2addr v9, v0

    or-int/2addr v9, v2

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1469
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 1470
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1472
    .local v2, "turnOver":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1474
    .local v0, "palmTouch":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_pause"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1476
    .local v1, "smartPause":I
    or-int v5, v2, v0

    or-int/2addr v5, v1

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    .end local v0    # "palmTouch":I
    .end local v1    # "smartPause":I
    .end local v2    # "turnOver":I
    :cond_1
    move v2, v3

    .line 1470
    goto :goto_0

    .restart local v2    # "turnOver":I
    :cond_2
    move v0, v3

    .line 1472
    goto :goto_1
.end method

.method private isAllMutePauseOptionunCkecked()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1479
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 1480
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 1482
    .local v2, "turnOver":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 1484
    .local v0, "palmTouch":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 1487
    .local v1, "smartPause":I
    :goto_2
    or-int v5, v2, v0

    or-int/2addr v5, v1

    if-ge v5, v3, :cond_5

    :goto_3
    return v3

    .end local v0    # "palmTouch":I
    .end local v1    # "smartPause":I
    .end local v2    # "turnOver":I
    :cond_0
    move v2, v4

    .line 1480
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .restart local v2    # "turnOver":I
    :cond_2
    move v0, v4

    .line 1482
    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_1

    .restart local v0    # "palmTouch":I
    :cond_4
    move v1, v4

    .line 1484
    goto :goto_2

    .restart local v1    # "smartPause":I
    :cond_5
    move v3, v4

    .line 1487
    goto :goto_3
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x2

    const/4 v6, 0x0

    const v5, 0x7f0a1c3f

    const/4 v4, 0x1

    .line 995
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "air_wake_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 998
    iput-boolean v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 999
    const-string v2, "air_motion_wake_up"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1001
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a129a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1002
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_0

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1005
    :cond_0
    const v2, 0x7f02001e

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1006
    iput v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    .line 1118
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1007
    :cond_1
    const-string v2, "air_turn_and_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1008
    iput-boolean v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasListView:Z

    .line 1009
    const-string v2, "air_motion_turn"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1011
    .restart local v0    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    const v2, 0x7f0a129d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1015
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_2

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1018
    :cond_2
    const v2, 0x7f020021

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1019
    iput v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    .line 1014
    :cond_3
    const v2, 0x7f0a129c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_1

    .line 1022
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_4
    const-string v2, "pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1023
    const-string v2, "motion_pick_up"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1024
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1025
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1031
    :goto_2
    const v2, 0x7f020409

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1032
    iput v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto :goto_0

    .line 1028
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1235    # 1.83528E38f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    .line 1030
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_2

    .line 1033
    :cond_7
    const-string v2, "pick_up_to_call_out"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1034
    const-string v2, "motion_pick_up_to_call_out"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1035
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1036
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a124c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1043
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_8

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1046
    :cond_8
    const v2, 0x7f0203eb

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1047
    iput v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 1039
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a124b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    .line 1042
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a124a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_3

    .line 1048
    :cond_b
    const-string v2, "merged_mute_or_pause"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1049
    const-string v2, "motion_merged_mute_pause"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1050
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v2, :cond_c

    .line 1052
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1053
    const v2, 0x7f0a12a6

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    .line 1057
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1064
    :cond_d
    :goto_5
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1065
    const v2, 0x7f020108

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1066
    const v2, 0x7f0a12a5

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    .line 1069
    :cond_e
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ge v2, v8, :cond_10

    .line 1070
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    .line 1072
    :cond_f
    const v2, 0x7f02041f

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    .line 1073
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v2, :cond_13

    .line 1074
    const v2, 0x7f0a12a4

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    .line 1079
    :cond_10
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a12ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    .line 1083
    :goto_7
    const v2, 0x7f0205ad

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    .line 1084
    const v2, 0x7f0a12aa

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    .line 1087
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ge v2, v8, :cond_15

    .line 1088
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 1055
    :cond_11
    const v2, 0x7f0a12a7

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    goto/16 :goto_4

    .line 1061
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1261

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto/16 :goto_5

    .line 1076
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a12a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    goto :goto_6

    .line 1082
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a12ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    goto :goto_7

    .line 1090
    :cond_15
    iput v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 1100
    :cond_16
    const-string v2, "quick_application_access"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1101
    const-string v2, "quick_application_access"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1102
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1e79

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1104
    iput v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 1105
    :cond_17
    const-string v2, "palm_swipe"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1106
    const-string v2, "surface_palm_swipe"

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    .line 1107
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a125e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    .line 1111
    :goto_8
    const v2, 0x7f020107

    iput v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    .line 1112
    iput v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNumOfTutorial:I

    goto/16 :goto_0

    .line 1110
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a125d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    goto :goto_8

    .line 1114
    :cond_19
    const-string v2, "SMotionGuideHub"

    const-string v3, "Cannot get correct motion information"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showAirbrowseDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1316
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1317
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f040183

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1319
    .local v1, "layout":Landroid/view/View;
    const v10, 0x7f100382

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1321
    .local v7, "tv1":Landroid/widget/TextView;
    const v10, 0x7f0a12af

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    const v10, 0x7f100383

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1325
    .local v8, "tv2":Landroid/widget/TextView;
    const v10, 0x7f0e0010

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1326
    .local v4, "proper_distance":I
    const v10, 0x7f0a12b0

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    .local v2, "part2":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 1328
    .local v6, "salesCode":Ljava/lang/String;
    const-string v10, "ATT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "SPR"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "VZW"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "TMB"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "USC"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CRI"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "VMU"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "BST"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "XAS"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "TFN"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "XAR"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CSP"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1331
    :cond_0
    const v10, 0x7f0e0011

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1332
    const v10, 0x7f0a12b1

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1335
    :cond_1
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    const v10, 0x7f100384

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1338
    .local v9, "tv3":Landroid/widget/TextView;
    const v10, 0x7f0a12b2

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1339
    .local v3, "part3":Ljava/lang/String;
    const v10, 0x7f02001f

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a12b3

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;

    invoke-direct {v12, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$12;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;

    invoke-direct {v11, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$11;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    .line 1353
    return-void
.end method

.method private showFolderDialog()V
    .locals 3

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1c40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a091f

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$10;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1309
    return-void
.end method

.method private showTalkBackDisableDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0a1300

    .line 831
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 835
    move-object v1, p1

    .line 837
    .local v1, "motion_type":Ljava/lang/String;
    const-string v3, "air_motion_turn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    invoke-virtual {p0, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "title":Ljava/lang/String;
    const v0, 0x7f0a12ff

    .line 852
    .local v0, "messageId":I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a08fc

    new-instance v5, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 903
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 905
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/motion2014/SMotionGuideHub2014$4;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$4;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 917
    return-void

    .line 841
    .end local v0    # "messageId":I
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    const-string v3, "surface_palm_swipe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    const v3, 0x7f0a1254

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 843
    .restart local v2    # "title":Ljava/lang/String;
    const v0, 0x7f0a1255

    .restart local v0    # "messageId":I
    goto :goto_0

    .line 844
    .end local v0    # "messageId":I
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    const-string v3, "motion_merged_mute_pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 845
    const v3, 0x7f0a1380

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0a14f8

    invoke-virtual {p0, v6}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .restart local v2    # "title":Ljava/lang/String;
    const v0, 0x7f0a1301

    .restart local v0    # "messageId":I
    goto :goto_0

    .line 848
    .end local v0    # "messageId":I
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 849
    .restart local v2    # "title":Ljava/lang/String;
    const v0, 0x7f0a12ff

    .restart local v0    # "messageId":I
    goto :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 1277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1242

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a091f

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1244

    new-instance v2, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014$7;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1291
    return-void
.end method

.method private startTryActually(Ljava/lang/String;I)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tutorial_type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/16 v4, 0xa

    .line 1120
    const-string v2, "air_wake_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v2, :cond_0

    .line 1122
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    const-string v2, "air_turn_and_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1129
    if-ne p2, v6, :cond_3

    .line 1134
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v2, :cond_2

    .line 1135
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    .line 1138
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AirScrollTry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1142
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    if-ne p2, v5, :cond_0

    .line 1143
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v2, :cond_4

    .line 1144
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto :goto_0

    .line 1147
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1149
    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1152
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v2, "MotionTest"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1156
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1159
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v2, "pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1160
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1162
    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1165
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1166
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1168
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v2, "pick_up_to_call_out"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1170
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "KDI"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1171
    const-string v2, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1174
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v2, :cond_a

    .line 1175
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showFolderDialog()V

    goto/16 :goto_0

    .line 1178
    :cond_a
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1182
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v2, "merged_mute_or_pause"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1183
    if-ne p2, v6, :cond_d

    .line 1184
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1186
    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1189
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1190
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1192
    const-string v2, "SMotionGuideHub"

    const-string v3, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1193
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_d
    if-ne p2, v5, :cond_f

    .line 1194
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1195
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_e

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1196
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showUseRingDialog()V

    goto/16 :goto_0

    .line 1198
    :cond_e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 1200
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_f
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 1201
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1203
    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1206
    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_HELP_VIDEO_SMART_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "file:///system/media/video/video_help.mp4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    invoke-virtual {p0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1210
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_11
    const-string v2, "palm_swipe"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1213
    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1216
    :cond_12
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1217
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.palmswiptutorial.AUTO_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string v2, "PalmMotionTest"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1219
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1220
    const-string v2, "SMotionGuideHub"

    const-string v3, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .param p1, "useRing"    # Z

    .prologue
    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startActivity(Landroid/content/Intent;)V

    .line 1232
    return-void

    .line 1229
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 720
    .local v1, "motionEngineState":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 721
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 723
    const-string v5, "air_turn_and_scroll"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 726
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll_email_body"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 727
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_single_photo_view"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 728
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_internet_window"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 729
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_now_playing_on_music"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_4
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 730
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_5
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 731
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_turn_note_page_view"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    :goto_6
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 732
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 733
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 734
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 735
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 736
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 737
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 767
    :cond_0
    :goto_7
    return-void

    .end local v1    # "motionEngineState":Z
    :cond_1
    move v1, v4

    .line 719
    goto/16 :goto_0

    .restart local v1    # "motionEngineState":Z
    :cond_2
    move v5, v4

    .line 726
    goto :goto_1

    :cond_3
    move v5, v4

    .line 727
    goto :goto_2

    :cond_4
    move v5, v4

    .line 728
    goto :goto_3

    :cond_5
    move v5, v4

    .line 729
    goto :goto_4

    :cond_6
    move v5, v4

    .line 730
    goto :goto_5

    :cond_7
    move v3, v4

    .line 731
    goto :goto_6

    .line 738
    :cond_8
    const-string v5, "merged_mute_or_pause"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-nez v5, :cond_c

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 741
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "surface_palm_touch"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 742
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_overturn"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v3

    :goto_9
    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 743
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_pause"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    :goto_a
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 744
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 745
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 746
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_9
    move v5, v4

    .line 741
    goto :goto_8

    :cond_a
    move v5, v4

    .line 742
    goto :goto_9

    :cond_b
    move v3, v4

    .line 743
    goto :goto_a

    .line 753
    :cond_c
    const-string v5, "palm_swipe"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 755
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v2, v4

    .line 756
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isScreenCaptureEnabled"

    invoke-static {v5, v6, v7, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 757
    .local v0, "isScreenCaptureEnabled":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_d

    if-eq v0, v3, :cond_d

    .line 758
    const-string v3, "SMotionGuideHub"

    const-string v5, "MDM: Screen Capture Disabled"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 760
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_7

    .line 762
    :cond_d
    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1432
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1436
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1440
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1443
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1444
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1446
    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1448
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;

    .line 1450
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1451
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1452
    iput-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1454
    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 455
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 456
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401dc

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, "guideView":Landroid/view/View;
    const v3, 0x7f10042e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    .line 458
    const v3, 0x7f10042f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    .line 459
    const v3, 0x7f100433

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    .line 460
    const v3, 0x7f100437

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    .line 461
    const v3, 0x7f100430

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    .line 462
    const v3, 0x7f100434

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    .line 463
    const v3, 0x7f100438

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    .line 464
    const v3, 0x7f100431

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    .line 465
    const v3, 0x7f100435

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    .line 466
    const v3, 0x7f100439

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    .line 467
    const v3, 0x7f100432

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    .line 468
    const v3, 0x7f100436

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    .line 469
    const v3, 0x7f10043a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    .line 482
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    if-nez v3, :cond_5

    .line 483
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :goto_0
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 489
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :goto_1
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 495
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    :goto_2
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 501
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    :goto_3
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    if-nez v3, :cond_9

    .line 507
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    :goto_4
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    if-nez v3, :cond_a

    .line 514
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :goto_5
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    if-nez v3, :cond_b

    .line 520
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    :goto_6
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    if-nez v3, :cond_c

    .line 526
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    :goto_7
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    if-nez v3, :cond_d

    .line 532
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    :goto_8
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    if-nez v3, :cond_e

    .line 538
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :goto_9
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    if-nez v3, :cond_f

    .line 545
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :cond_0
    :goto_a
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    if-nez v3, :cond_10

    .line 555
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :cond_1
    :goto_b
    iget v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    if-nez v3, :cond_11

    .line 565
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :cond_2
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    .line 588
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 589
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 620
    iget-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    if-eqz v3, :cond_3

    const-string v3, "merged_mute_or_pause"

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    :cond_3
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 623
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    if-eqz v3, :cond_12

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 628
    :goto_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 629
    return-void

    .line 485
    :cond_5
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHeadMessageID:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 491
    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 497
    :cond_7
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 503
    :cond_8
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMessageView3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideContent3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 509
    :cond_9
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 516
    :cond_a
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 522
    :cond_b
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFunctionTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 528
    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView1:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID1:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 534
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView2:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID2:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 540
    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleView3:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTutorialTitleID3:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 547
    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 550
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_a

    .line 557
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_10
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 560
    .restart local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_b

    .line 567
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_11
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideAniResID3:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 570
    .restart local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_c

    .line 626
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_d
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 770
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    const-string v2, "air_motion_wake_up"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirWakeupChanged(Z)V

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 826
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 773
    goto :goto_0

    .line 775
    :cond_2
    const-string v2, "air_motion_turn"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 778
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 782
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_4

    move v2, v0

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll"

    if-eqz p2, :cond_5

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 785
    invoke-direct {p0, p2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v2, v1

    .line 782
    goto :goto_3

    :cond_5
    move v0, v1

    .line 783
    goto :goto_4

    .line 792
    :cond_6
    const-string v2, "motion_merged_mute_pause"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 793
    iget-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    if-eqz v2, :cond_8

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    if-eqz p2, :cond_7

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto :goto_5

    .line 797
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 798
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 801
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_a

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 802
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 801
    goto :goto_6

    .line 805
    :cond_b
    const-string v2, "surface_palm_swipe"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_c

    .line 807
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 810
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7

    .line 812
    :cond_e
    const-string v2, "quick_application_access"

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 813
    const-string v2, "SMotionGuideHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK onCheckChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-eqz p2, :cond_f

    .line 815
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_application_access"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 817
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "quick_application_access"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 823
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_11

    :goto_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 1509
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1510
    iget-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 1511
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 1514
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1517
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->startTryActually(Ljava/lang/String;I)V

    .line 1528
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1529
    return-void

    .line 1522
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1524
    iput-boolean v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 258
    .local v5, "arguments":Landroid/os/Bundle;
    if-eqz v5, :cond_7

    .line 259
    const-string v19, "type"

    const-string v20, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 260
    const-string v19, "hasAdvancedSettings"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    .line 261
    const-string v19, "AdvancedSettingsIsTop"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSettingsIsTop:Z

    .line 262
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0a1295

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->setTitle(I)V

    .line 272
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSupportFolderType:Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 274
    .local v6, "config":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 275
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    .line 279
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->setArgument(Ljava/lang/String;)V

    .line 280
    const v19, 0x7f0700ac

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 284
    new-instance v19, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0058

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 288
    .local v13, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x10

    const/16 v21, 0x10

    invoke-virtual/range {v19 .. v21}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v20, v0

    new-instance v21, Landroid/app/ActionBar$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    const v24, 0x800015

    invoke-direct/range {v21 .. v24}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    .line 313
    .end local v13    # "padding":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    const-string v19, "advanced_air_call_accept_auto_start_speaker"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    .line 317
    const-string v19, "advanced_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 318
    const-string v19, "advanced_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    .line 319
    const-string v19, "learn_about_the_sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    .line 321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mIsTurningOverOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 323
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 324
    .local v15, "ps":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 410
    .local v9, "extra_bundle":Landroid/os/Bundle;
    const-string v19, "extra_parent_preference_key"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 412
    .local v17, "targetKey":Ljava/lang/String;
    sget v19, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1b

    .line 413
    sget v19, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    .line 414
    .local v18, "value":Z
    :goto_5
    const-string v19, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 415
    const-string v19, "email_body"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 440
    :cond_5
    :goto_6
    const/16 v19, -0x1

    sput v19, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    .line 451
    .end local v9    # "extra_bundle":Landroid/os/Bundle;
    .end local v17    # "targetKey":Ljava/lang/String;
    .end local v18    # "value":Z
    :cond_6
    :goto_7
    new-instance v19, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    .line 452
    return-void

    .line 266
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v15    # "ps":Landroid/preference/PreferenceScreen;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 267
    .local v11, "intent":Landroid/content/Intent;
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 268
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    .line 270
    :cond_8
    const-string v19, "hasAdvancedSettings"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mHasAdvancedSettings:Z

    goto/16 :goto_0

    .line 272
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 277
    .restart local v6    # "config":Landroid/content/res/Configuration;
    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mFlipCloseStatus:Z

    goto/16 :goto_2

    .line 298
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 299
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f040065

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 301
    .local v4, "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    check-cast v14, Landroid/preference/PreferenceActivity;

    .line 303
    .local v14, "preferenceActivity":Landroid/preference/PreferenceActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x10

    const/16 v21, 0x10

    invoke-virtual/range {v19 .. v21}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    new-instance v20, Landroid/app/ActionBar$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    const v23, 0x800015

    invoke-direct/range {v20 .. v23}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 309
    const v19, 0x7f10010e

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    goto/16 :goto_3

    .line 328
    .end local v4    # "CustomActionBarSwitchLayout":Landroid/widget/LinearLayout;
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 329
    .restart local v15    # "ps":Landroid/preference/PreferenceScreen;
    const-string v19, "air_turn_and_scroll"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    const v20, 0x7f0a132b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 335
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    const v19, 0x7f070015

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    .line 337
    const-string v19, "email_body"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    .line 338
    const-string v19, "email_body"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    .line 339
    const-string v19, "single_photo_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 340
    const-string v19, "internet_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v19, "internet_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    .line 342
    const-string v19, "now_playing_on_music"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 343
    const-string v19, "bgm_on_lock_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 344
    const-string v19, "note_page_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 345
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 349
    const-string v16, "com.samsung.android.snote"

    .line 351
    .local v16, "samsungbackupPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 352
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 354
    if-eqz v12, :cond_f

    .line 355
    const-string v19, "SMotionGuideHub"

    const-string v20, "S note is Installed."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a133b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 360
    :catch_0
    move-exception v8

    .line 361
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 362
    const-string v19, "SMotionGuideHub"

    const-string v20, "S note is NOT Installed"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "air_motion_turn_note_page_view"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 358
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0a1339

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 371
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "samsungbackupPackage":Ljava/lang/String;
    :cond_10
    const-string v19, "merged_mute_or_pause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 372
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const v20, 0x7f0a1295

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->setTitle(I)V

    .line 375
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    const v20, 0x7f0a12a3

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 377
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAdvancedSetting:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    const v19, 0x7f070077

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->addPreferencesFromResource(I)V

    .line 380
    const-string v19, "palm_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 381
    const-string v19, "turn_over"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    .line 382
    const-string v19, "mute_pause_divider_line"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DividerLinePreference;

    .line 383
    .local v7, "dividerLine":Lcom/android/settings/DividerLinePreference;
    const-string v19, "smart_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 389
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 390
    const-string v19, "palm_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    .line 394
    :cond_13
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 395
    :cond_14
    const-string v19, "turn_over"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 413
    .end local v7    # "dividerLine":Lcom/android/settings/DividerLinePreference;
    .restart local v9    # "extra_bundle":Landroid/os/Bundle;
    .restart local v17    # "targetKey":Ljava/lang/String;
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 419
    .restart local v18    # "value":Z
    :cond_16
    const-string v19, "single_photo_view"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 423
    :cond_17
    const-string v19, "internet_window"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 427
    :cond_18
    const-string v19, "now_playing_on_music"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 431
    :cond_19
    const-string v19, "bgm_on_lock_screen"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 435
    :cond_1a
    const-string v19, "note_page_view"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 443
    .end local v18    # "value":Z
    :cond_1b
    const-string v19, "learn_about_the_sensor"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 715
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 716
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f0a11ff

    const/4 v2, 0x0

    .line 672
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 673
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    invoke-direct {p0, v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastAirBrowseAndScrollChanged(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 691
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 696
    const-string v0, "palm_swipe"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 700
    :cond_2
    const-string v0, "air_turn_and_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 703
    :cond_3
    return-void

    .line 682
    :cond_4
    const-string v0, "merged_mute_or_pause"

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mResolver:Landroid/content/ContentResolver;

    .line 684
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 922
    iget-boolean v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 923
    sget v6, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 924
    sget v6, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSettingValue:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 925
    .local v3, "value":Z
    :goto_0
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 926
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 927
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 928
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 934
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "value":Z
    :cond_0
    if-nez p2, :cond_3

    .line 992
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v3, v5

    .line 924
    goto :goto_0

    .line 936
    :cond_3
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_scroll_email_body"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 980
    :cond_4
    :goto_3
    const-string v6, "air_turn_and_scroll"

    iget-object v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 981
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllAirTurnAndScrollOptionDisabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 982
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v6, v5

    .line 937
    goto :goto_2

    .line 938
    :cond_6
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_turn_single_photo_view"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v6, v5

    goto :goto_4

    .line 940
    :cond_8
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_b

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_turn_internet_window"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    :goto_5
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_scroll_web_page"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_6
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    move v6, v5

    .line 941
    goto :goto_5

    :cond_a
    move v6, v5

    .line 942
    goto :goto_6

    .line 943
    :cond_b
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_d

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_turn_now_playing_on_music"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v4

    :goto_7
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_c
    move v6, v5

    goto :goto_7

    .line 945
    :cond_d
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_f

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    :goto_8
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v6, v5

    goto :goto_8

    .line 947
    :cond_f
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_11

    .line 948
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_turn_note_page_view"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v4

    :goto_9
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_10
    move v6, v5

    goto :goto_9

    .line 949
    :cond_11
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_13

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "surface_palm_touch"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v4

    :goto_a
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_12
    move v6, v5

    goto :goto_a

    .line 951
    :cond_13
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_16

    .line 952
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 957
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "motion_overturn"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    move v6, v4

    :goto_c
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 955
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_b

    :cond_15
    move v6, v5

    .line 957
    goto :goto_c

    .line 958
    :cond_16
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_19

    .line 959
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 961
    iget-object v5, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 965
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "smart_pause"

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v4

    :goto_d
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    const-string v6, "com.sec.SMART_PAUSE_CHANGED"

    iget-object v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->broadcastStatusChanged(Ljava/lang/String;Z)V

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 969
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "pref_smart_pause_noti"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 970
    .local v1, "do_not_show_again":Z
    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showSmartPauseDialog()V

    goto/16 :goto_3

    .end local v1    # "do_not_show_again":Z
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_18
    move v6, v5

    .line 965
    goto :goto_d

    .line 976
    :cond_19
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowsePreference:Landroid/preference/Preference;

    if-ne p2, v6, :cond_4

    .line 978
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->showAirbrowseDialog()V

    goto/16 :goto_3

    .line 985
    :cond_1a
    const-string v6, "merged_mute_or_pause"

    iget-object v7, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 987
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->isAllMutePauseOptionunCkecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 988
    iget-object v6, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 992
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "super_mOpenDetailMenu":Z
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 635
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 638
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 640
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->updateStatus()V

    .line 649
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 650
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 653
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mSmartPauseObserver:Lcom/android/settings/motion2014/SMotionGuideHub2014$SmartPauseObserver;

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_application_access"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mQuickApplicationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 662
    const-string v1, "palm_swipe"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_swipe"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 666
    :cond_2
    const-string v1, "air_turn_and_scroll"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_turn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 669
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 706
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 707
    return-void
.end method

.method public showSmartPauseDialog()V
    .locals 19

    .prologue
    .line 1356
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1357
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1358
    .local v9, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1359
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->allDialogDismiss()V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1361
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f04020a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1362
    .local v8, "layout":Landroid/view/View;
    const v17, 0x7f10049f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1363
    .local v14, "tv0":Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    const v17, 0x7f10016f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1365
    .local v6, "imageview":Landroid/widget/ImageView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1366
    const v17, 0x7f1004a0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1367
    .local v15, "tv1":Landroid/widget/TextView;
    const v17, 0x7f100167

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 1368
    .local v10, "mcheck":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1369
    const v17, 0x7f1004a1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1370
    .local v4, "divideLineView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1371
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    .end local v4    # "divideLineView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1375
    .local v11, "res":Landroid/content/res/Resources;
    const v17, 0x7f0a12b4

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1376
    .local v12, "strDesc":Ljava/lang/String;
    const-string v17, "%s"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1377
    const-string v17, "%s"

    const v18, 0x7f0a12aa

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1382
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.multiwindow"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 1383
    .local v16, "useMultiWindow":Z
    const v17, 0x7f0a12b7

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1384
    .local v13, "strDesc2":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 1385
    const v17, 0x7f0a12b8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1388
    :cond_1
    const-string v17, "%s"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1389
    const-string v17, "%s"

    const v18, 0x7f0a12aa

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1394
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a12b5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a12b6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1399
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1401
    const v17, 0x7f0a12aa

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1402
    const v17, 0x104000a

    new-instance v18, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v10}, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1413
    new-instance v17, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v10}, Lcom/android/settings/motion2014/SMotionGuideHub2014$14;-><init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1426
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2014/SMotionGuideHub2014;->mGuideDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 1428
    return-void

    .line 1379
    .end local v3    # "description":Ljava/lang/String;
    .end local v13    # "strDesc2":Ljava/lang/String;
    .end local v16    # "useMultiWindow":Z
    :cond_2
    const-string v17, "SMotionGuideHub"

    const-string v18, "1)There is no %s."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1391
    .restart local v13    # "strDesc2":Ljava/lang/String;
    .restart local v16    # "useMultiWindow":Z
    :cond_3
    const-string v17, "SMotionGuideHub"

    const-string v18, "2)There is no %s."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
