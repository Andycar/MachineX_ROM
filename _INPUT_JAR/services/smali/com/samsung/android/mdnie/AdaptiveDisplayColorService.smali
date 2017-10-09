.class public Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final EAD_ON:Ljava/lang/String; = "sys.adaptivedisplay.eadon"

.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumCCT:I

.field private mSumLux:I

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    .line 74
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    .line 75
    const/high16 v11, 0x437f0000    # 255.0f

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    .line 77
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    .line 78
    const/4 v11, 0x1

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 79
    const/4 v11, 0x2

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 80
    const/4 v11, 0x3

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    .line 81
    const/4 v11, 0x4

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    .line 82
    const/4 v11, 0x5

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    .line 83
    const/4 v11, 0x6

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    .line 84
    const/4 v11, 0x7

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    .line 86
    const/high16 v11, 0x41a00000    # 20.0f

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    .line 87
    const v11, 0x989680

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 88
    const/4 v11, 0x2

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    .line 89
    const/16 v11, 0x14

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    .line 90
    const/16 v11, 0x24

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    .line 92
    const-wide/16 v12, 0x1770

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 93
    const-wide/16 v12, 0xfa

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    .line 94
    const-wide/16 v12, 0x12c

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    .line 95
    const-wide/16 v12, 0x1f4

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 96
    const-wide/16 v12, 0x12c

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 97
    const-wide/16 v12, 0x2bc

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    .line 98
    const-wide/16 v12, 0x3e8

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 100
    const-string/jumbo v11, "screen_mode_automatic_setting"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 101
    const-string/jumbo v11, "screen_mode_setting"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 102
    const-string v11, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 103
    const-string v11, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 104
    const-string v11, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

    .line 105
    const-string v11, "1"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    .line 106
    const-string v11, "8"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 107
    const-string v11, "9"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 109
    const-string v11, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 110
    const-string v11, "/sys/class/mdnie/mdnie/scenario"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 111
    const-string v11, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 112
    const-string v11, "com.sec.android.app.SecSetupWizard"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 113
    const-string v11, "com.android.systemui"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    .line 114
    const-string v11, "com.sec.android.app.sbrowser"

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    .line 115
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "com.sec.android.app.sbrowser"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "com.android.chrome"

    aput-object v13, v11, v12

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    .line 120
    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "com.zgz.supervideo"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "com.kmplayer"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "com.pg.gom"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "com.gretech.gomplayer"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "com.mxtech.videoplayer"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "com.nhn.android.naverplayer"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "com.inisoft.mediaplayer"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, "com.google.android.youtube"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "com.google.android.videos"

    aput-object v13, v11, v12

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 134
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 135
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 136
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 137
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 138
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 148
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 149
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 150
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 151
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    .line 152
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 153
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 154
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 156
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    .line 158
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 159
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 160
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 161
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 162
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 163
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    .line 164
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 165
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 166
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 168
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 169
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 170
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    .line 172
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenMode:I

    .line 174
    const/4 v11, -0x1

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 176
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 184
    const/4 v11, 0x1

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    .line 185
    const/4 v11, 0x1

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    .line 186
    const/4 v11, 0x1

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    .line 193
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    .line 194
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    .line 195
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    .line 196
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 197
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 198
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 199
    const v11, 0x3d8f5c29    # 0.07f

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    .line 201
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    .line 202
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    .line 204
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 205
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 206
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 208
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 209
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 210
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 212
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 213
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 214
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 216
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    .line 217
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    .line 218
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    .line 220
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 221
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 222
    const/16 v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 224
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 225
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 226
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 228
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 229
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 230
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 232
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 234
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 238
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 405
    new-instance v11, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 577
    new-instance v11, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;

    invoke-direct {v11, p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 608
    new-instance v11, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;

    invoke-direct {v11, p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 241
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 243
    new-instance v11, Landroid/os/HandlerThread;

    const-string v12, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 244
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v11, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    .line 247
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x112009f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 251
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11200a0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 254
    const-string/jumbo v11, "sys.adaptivedisplay.eadon"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v11, Landroid/hardware/SystemSensorManager;

    iget-object v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v13}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 257
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 259
    new-instance v11, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    .line 261
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 263
    .local v9, "resolver":Landroid/content/ContentResolver;
    new-instance v11, Lcom/samsung/android/cover/CoverManager;

    iget-object v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 265
    const-string v11, "lcd_curtain"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    const-string v11, "high_contrast"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    const-string v11, "color_blind"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    const-string/jumbo v11, "psm_switch"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    const-string/jumbo v11, "ultra_powersaving_mode"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    const-string/jumbo v11, "screen_mode_automatic_setting"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v11, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v11, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v11, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 294
    iget-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v11, :cond_383

    .line 295
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070058

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 296
    .local v0, "adj_rgb":[I
    const/4 v11, 0x0

    aget v11, v0, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 297
    const/4 v11, 0x1

    aget v11, v0, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 298
    const/4 v11, 0x2

    aget v11, v0, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 300
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070059

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 301
    .local v10, "test_rgb":[I
    const/4 v11, 0x0

    aget v11, v10, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    .line 302
    const/4 v11, 0x1

    aget v11, v10, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    .line 303
    const/4 v11, 0x2

    aget v11, v10, v11

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    .line 305
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e00a9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 306
    .local v5, "foregroundDelay":I
    const-wide/16 v12, 0x12c

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 307
    if-eqz v5, :cond_30a

    .line 308
    int-to-long v12, v5

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 310
    :cond_30a
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e00aa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 311
    .local v3, "exitHomeDelay":I
    const-wide/16 v12, 0x12c

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 312
    if-eqz v3, :cond_320

    .line 313
    int-to-long v12, v3

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 315
    :cond_320
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e00ab

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 316
    .local v4, "exitMenuDelay":I
    const-wide/16 v12, 0x2bc

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 317
    if-eqz v4, :cond_336

    .line 318
    int-to-long v12, v4

    iput-wide v12, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 320
    :cond_336
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x107005a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "coefficientStringArray":[Ljava/lang/String;
    const/16 v11, 0x24

    new-array v11, v11, [F

    iput-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    .line 324
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_34a
    array-length v11, v1

    if-ge v6, v11, :cond_362

    .line 325
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v12, v1, v6

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v11, v6

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_34a

    .line 327
    :cond_362
    const-string/jumbo v11, "sys.adaptivedisplay.eadon"

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 330
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 332
    iget v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v11, v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 333
    iget v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v11, v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 334
    iget v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v11, v11, 0xff

    iput v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 337
    .end local v0    # "adj_rgb":[I
    .end local v1    # "coefficientStringArray":[Ljava/lang/String;
    .end local v3    # "exitHomeDelay":I
    .end local v4    # "exitMenuDelay":I
    .end local v5    # "foregroundDelay":I
    .end local v6    # "i":I
    .end local v10    # "test_rgb":[I
    :cond_383
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 340
    :try_start_386
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 341
    .local v8, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v8, v11}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_38f
    .catch Landroid/os/RemoteException; {:try_start_386 .. :try_end_38f} :catch_390

    .line 347
    .end local v8    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_38f
    :goto_38f
    return-void

    .line 342
    :catch_390
    move-exception v2

    .line 343
    .local v2, "e":Landroid/os/RemoteException;
    iget-boolean v11, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v11, :cond_38f

    .line 344
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "failed to registerProcessObserver"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38f
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;JIIIII)V
    .registers 9
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIIII)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method private animateScrRGB()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    .line 1085
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    .line 1086
    .local v4, "state":I
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1088
    if-lez v4, :cond_61

    .line 1090
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v7, v10, :cond_62

    .line 1092
    iget v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1093
    .local v3, "r":I
    iget v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1094
    .local v1, "g":I
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1096
    .local v0, "b":I
    if-lez v3, :cond_61

    if-gt v3, v11, :cond_61

    if-lez v1, :cond_61

    if-gt v1, v11, :cond_61

    if-lez v0, :cond_61

    if-gt v0, v11, :cond_61

    .line 1097
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_35

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v7, :cond_35

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_61

    .line 1098
    :cond_35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1099
    .local v6, "str":Ljava/lang/String;
    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1101
    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1102
    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1137
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_61
    :goto_61
    return-void

    .line 1108
    :cond_62
    const/4 v2, 0x0

    .line 1109
    .local v2, "gap":I
    const/4 v5, 0x0

    .line 1110
    .local v5, "step":F
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v7, v10

    .line 1111
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1112
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v7, v10

    .line 1114
    .restart local v3    # "r":I
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v7, v10

    .line 1115
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1116
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v7, v10

    .line 1118
    .restart local v1    # "g":I
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v7, v10

    .line 1119
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1120
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v7, v10

    .line 1122
    .restart local v0    # "b":I
    if-lez v3, :cond_de

    if-gt v3, v11, :cond_de

    if-lez v1, :cond_de

    if-gt v1, v11, :cond_de

    if-lez v0, :cond_de

    if-gt v0, v11, :cond_de

    .line 1123
    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_b2

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v7, :cond_b2

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_de

    .line 1124
    :cond_b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1125
    .restart local v6    # "str":Ljava/lang/String;
    const-string v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1127
    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1128
    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1132
    .end local v6    # "str":Ljava/lang/String;
    :cond_de
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1133
    .local v8, "time":J
    iget-object v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v13}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 1134
    iget-object v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v7, v13, v10, v11}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_61
.end method

.method private enableRgbSensor(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 548
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 550
    .local v1, "white_scr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 551
    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "StatFs returns null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1a
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 554
    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_36
    if-eqz p1, :cond_56

    .line 557
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 558
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 559
    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 560
    iput v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 561
    iput v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 562
    iput v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 563
    iput v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 564
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v3, v4, v8, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 574
    :goto_53
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 575
    return-void

    .line 566
    :cond_56
    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 567
    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 568
    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 569
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 570
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 571
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 572
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_53
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1156
    const/4 v2, 0x0

    .line 1157
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_27

    .line 1158
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_27
    :try_start_27
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_31} :catch_3d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_57

    .line 1168
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_31
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_64

    move-object v2, v3

    .line 1178
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3c
    return-void

    .line 1163
    :catch_3d
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3e
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_3c

    .line 1170
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_57
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/io/IOException;
    :goto_58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1173
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_3c

    .line 1174
    :catch_5f
    move-exception v1

    .line 1175
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 1170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_64
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_58
.end method

.method private getRgbFromLightSensor()V
    .registers 6

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 708
    .local v1, "raw":Ljava/lang/String;
    :try_start_1
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_3e

    .line 710
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, "rawDatas":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 712
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 713
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 714
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 721
    .end local v2    # "rawDatas":[Ljava/lang/String;
    :goto_3d
    return-void

    .line 717
    :cond_3e
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_3d

    .line 718
    :catch_42
    move-exception v0

    .line 719
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    .line 724
    const/4 v5, 0x0

    .line 725
    .local v5, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 726
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v11, [B

    .line 727
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 728
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 730
    .local v7, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v11, :cond_12

    .line 731
    aput-byte v10, v1, v4

    .line 730
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 734
    :cond_12
    :try_start_12
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_41
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_51
    .catchall {:try_start_12 .. :try_end_1c} :catchall_7c

    .line 735
    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    if-eqz v6, :cond_30

    .line 736
    :try_start_1e
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 737
    if-eqz v7, :cond_2d

    .line 738
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move-object v8, v9

    .line 740
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_30} :catch_92
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_8f
    .catchall {:try_start_1e .. :try_end_30} :catchall_8c

    .line 749
    :cond_30
    if-eqz v6, :cond_95

    .line 751
    :try_start_32
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v5, v6

    .line 757
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_36
    :goto_36
    return-object v8

    .line 752
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_37
    move-exception v3

    .line 753
    .local v3, "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 754
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_36

    .line 742
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_41
    move-exception v10

    .line 749
    :goto_42
    if-eqz v5, :cond_36

    .line 751
    :try_start_44
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_36

    .line 752
    :catch_48
    move-exception v3

    .line 753
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 745
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_51
    move-exception v2

    .line 746
    .local v2, "e":Ljava/io/IOException;
    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 747
    const-string v10, "AdaptiveDisplayColorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_7c

    .line 749
    if-eqz v5, :cond_36

    .line 751
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_36

    .line 752
    :catch_73
    move-exception v3

    .line 753
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 749
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_7c
    move-exception v10

    :goto_7d
    if-eqz v5, :cond_82

    .line 751
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 754
    :cond_82
    :goto_82
    throw v10

    .line 752
    :catch_83
    move-exception v3

    .line 753
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 749
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_8c
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_7d

    .line 745
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_8f
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_52

    .line 742
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_92
    move-exception v10

    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_42

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_95
    move-object v5, v6

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_36
.end method

.method private handleRgbSensorEvent(JIIIII)V
    .registers 15
    .param p1, "time"    # J
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "lux"    # I
    .param p7, "cct"    # I

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v6

    .line 762
    .local v6, "isInControlZone":I
    iget v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v0, v6, :cond_15

    .line 763
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 764
    iput-wide p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastChangedRgbTime:J

    .line 765
    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 766
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 769
    :cond_15
    if-lez v6, :cond_20

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 770
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setAverageValue(IIIII)V

    .line 772
    :cond_20
    return-void
.end method

.method private initRgbAverage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    .line 788
    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    .line 789
    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    .line 790
    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 791
    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    .line 792
    return-void
.end method

.method private isInBoundary()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 776
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v1, :cond_6

    .line 783
    :cond_5
    :goto_5
    return v0

    .line 778
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v1, :cond_c

    .line 779
    const/4 v0, 0x2

    goto :goto_5

    .line 780
    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v1, :cond_5

    .line 781
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private max_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1190
    if-lt p1, p2, :cond_3

    .line 1193
    .end local p1    # "a":I
    :goto_2
    return p1

    .restart local p1    # "a":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method private min_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1182
    if-ge p1, p2, :cond_3

    .line 1185
    .end local p1    # "a":I
    :goto_2
    return p1

    .restart local p1    # "a":I
    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 617
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez v6, :cond_28

    .line 618
    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_27

    .line 619
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 620
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_17

    .line 621
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 622
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 623
    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 624
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 703
    .end local v4    # "time":J
    :cond_27
    :goto_27
    return-void

    .line 628
    :cond_28
    const/4 v1, 0x0

    .line 629
    .local v1, "isBrowser":Z
    const/4 v2, 0x0

    .line 630
    .local v2, "isReading":Z
    const/4 v3, 0x0

    .line 632
    .local v3, "isVideo":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_3c

    .line 633
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 634
    const/4 v3, 0x1

    .line 639
    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_53

    .line 640
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 641
    const/4 v1, 0x1

    .line 639
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 632
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 645
    :cond_53
    const-string/jumbo v6, "sys.ssrm.mdnie"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 646
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    or-int/2addr v2, v6

    .line 648
    if-eqz v2, :cond_8e

    .line 649
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 650
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 651
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_8c

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_8c

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_7c

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_8c

    :cond_7c
    const/4 v6, 0x1

    :goto_7d
    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 652
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_27

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_27

    .line 653
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_27

    .line 651
    :cond_8c
    const/4 v6, 0x0

    goto :goto_7d

    .line 657
    :cond_8e
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v6, :cond_9e

    .line 658
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 659
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_27

    .line 660
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_27

    .line 662
    :cond_9e
    if-eqz v3, :cond_bc

    .line 663
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 664
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 666
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 667
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_27

    .line 669
    .end local v4    # "time":J
    :cond_bc
    if-eqz v1, :cond_ed

    .line 670
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v6, :cond_27

    .line 671
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 672
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_eb

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_eb

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_d5

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_eb

    :cond_d5
    const/4 v6, 0x1

    :goto_d6
    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 674
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_e4

    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v6, :cond_e4

    .line 675
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 677
    :cond_e4
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    goto/16 :goto_27

    .line 672
    :cond_eb
    const/4 v6, 0x0

    goto :goto_d6

    .line 680
    :cond_ed
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v6, :cond_10e

    .line 681
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 683
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 684
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 697
    .end local v4    # "time":J
    :cond_104
    :goto_104
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_27

    .line 698
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_27

    .line 685
    :cond_10e
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_104

    .line 686
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 687
    const-string v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 689
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 690
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_104

    .line 692
    .end local v4    # "time":J
    :cond_131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 693
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 694
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    iget-wide v8, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_104
.end method

.method private receive_multi_window_on_intent()V
    .registers 6

    .prologue
    .line 482
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v1, :cond_c

    .line 484
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 491
    :cond_c
    :goto_c
    return-void

    .line 485
    :catch_d
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 487
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private receive_screen_off_intent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 507
    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 508
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 509
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_15

    .line 510
    invoke-direct {p0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 512
    :cond_15
    return-void

    :cond_16
    move v0, v1

    .line 508
    goto :goto_c
.end method

.method private receive_screen_on_intent()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 495
    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 496
    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_19

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v3, :cond_19

    :goto_e
    iput-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 498
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_1b

    .line 504
    :cond_18
    :goto_18
    return-void

    :cond_19
    move v1, v2

    .line 496
    goto :goto_e

    .line 499
    :catch_1b
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 501
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private sendForcedRGB(IIIII)V
    .registers 9
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 795
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 797
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    .line 798
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    .line 799
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    .line 800
    iput p4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    .line 801
    iput p5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    .line 802
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 804
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V

    .line 805
    return-void
.end method

.method private sendRgbAverage()V
    .registers 33

    .prologue
    .line 890
    const/16 v23, 0x0

    .local v23, "scrR":I
    const/16 v22, 0x0

    .local v22, "scrG":I
    const/16 v20, 0x0

    .line 891
    .local v20, "scrB":I
    const/16 v19, 0x0

    .local v19, "scr400LuxR":I
    const/16 v18, 0x0

    .local v18, "scr400LuxG":I
    const/16 v17, 0x0

    .line 893
    .local v17, "scr400LuxB":I
    const/4 v5, 0x0

    .local v5, "adjustR":I
    const/4 v4, 0x0

    .local v4, "adjustG":I
    const/4 v3, 0x0

    .line 895
    .local v3, "adjustB":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 896
    .local v12, "isEbookmode":Z
    const/16 v28, 0x0

    .line 898
    .local v28, "white_scr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v29, v0

    if-lez v29, :cond_220

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 899
    .local v9, "count":I
    :goto_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v29, v0

    int-to-float v0, v9

    move/from16 v30, v0

    div-float v16, v29, v30

    .line 900
    .local v16, "r":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v29, v0

    int-to-float v0, v9

    move/from16 v30, v0

    div-float v11, v29, v30

    .line 901
    .local v11, "g":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v29, v0

    int-to-float v0, v9

    move/from16 v30, v0

    div-float v8, v29, v30

    .line 902
    .local v8, "b":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 903
    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 904
    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    move/from16 v29, v0

    div-int v7, v29, v9

    .line 906
    .local v7, "avgLux":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    move/from16 v29, v0

    div-int v6, v29, v9

    .line 908
    .local v6, "avgCCT":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b2

    .line 909
    const-string v29, "AdaptiveDisplayColorService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "AvgR : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", AvgG : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", AvgB : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", avg lux : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_b2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 915
    :try_start_b5
    const-string v29, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 916
    if-eqz v28, :cond_101

    .line 917
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 918
    .local v21, "scrDatas":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v21, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 919
    const/16 v29, 0x1

    aget-object v29, v21, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 920
    const/16 v29, 0x2

    aget-object v29, v21, v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_101} :catch_223
    .catchall {:try_start_b5 .. :try_end_101} :catchall_249

    .line 925
    .end local v21    # "scrDatas":[Ljava/lang/String;
    :cond_101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_121

    .line 926
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    .line 927
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    .line 928
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    .line 932
    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_157

    .line 933
    if-eqz v12, :cond_26b

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 942
    :goto_14f
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 945
    :cond_157
    move v14, v7

    .line 946
    .local v14, "luxValue":I
    const/4 v13, -0x1

    .line 948
    .local v13, "log2Lux":I
    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v14, v0, :cond_2a5

    .line 949
    if-eqz v12, :cond_291

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v23, v0

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v22, v0

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v20, v0

    .line 1064
    :goto_173
    if-eqz v23, :cond_21f

    if-eqz v22, :cond_21f

    if-eqz v20, :cond_21f

    .line 1066
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1067
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1068
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1069
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1d4

    .line 1072
    const-string v29, "AdaptiveDisplayColorService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "scrR : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", scrG : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", scrB : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_1d4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_21f

    .line 1075
    :cond_1f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 1077
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 1078
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V

    .line 1081
    :cond_21f
    return-void

    .line 898
    .end local v6    # "avgCCT":I
    .end local v7    # "avgLux":I
    .end local v8    # "b":F
    .end local v9    # "count":I
    .end local v11    # "g":F
    .end local v13    # "log2Lux":I
    .end local v14    # "luxValue":I
    .end local v16    # "r":F
    :cond_220
    const/4 v9, 0x1

    goto/16 :goto_21

    .line 922
    .restart local v6    # "avgCCT":I
    .restart local v7    # "avgLux":I
    .restart local v8    # "b":F
    .restart local v9    # "count":I
    .restart local v11    # "g":F
    .restart local v16    # "r":F
    :catch_223
    move-exception v10

    .line 923
    .local v10, "e":Ljava/io/IOException;
    :try_start_224
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_227
    .catchall {:try_start_224 .. :try_end_227} :catchall_249

    .line 925
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_121

    .line 926
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    .line 927
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    .line 928
    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_121

    .line 925
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_249
    move-exception v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v30, v0

    if-eqz v30, :cond_26a

    .line 926
    const/16 v30, 0xff

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    .line 927
    const/16 v30, 0xff

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    .line 928
    const/16 v30, 0xff

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_26a
    throw v29

    .line 938
    :cond_26b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_14f

    .line 954
    .restart local v13    # "log2Lux":I
    .restart local v14    # "luxValue":I
    :cond_291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v23, v0

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v22, v0

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v20, v0

    goto/16 :goto_173

    .line 960
    :cond_2a5
    :goto_2a5
    if-eqz v14, :cond_2ac

    .line 961
    shr-int/lit8 v14, v14, 0x1

    .line 962
    add-int/lit8 v13, v13, 0x1

    goto :goto_2a5

    .line 965
    :cond_2ac
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v29, v0

    if-nez v29, :cond_2bc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_72a

    .line 966
    :cond_2bc
    if-eqz v12, :cond_49a

    .line 967
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 968
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 969
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 976
    :goto_2ca
    const v29, 0x4b189680    # 1.0E7f

    mul-float v29, v29, v16

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v30, v0

    div-int v27, v29, v30

    .line 977
    .local v27, "testR":I
    const v29, 0x4b189680    # 1.0E7f

    mul-float v29, v29, v11

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v30, v0

    div-int v26, v29, v30

    .line 978
    .local v26, "testG":I
    const v29, 0x4b189680    # 1.0E7f

    mul-float v29, v29, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v30, v0

    div-int v25, v29, v30

    .line 980
    .local v25, "testB":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v15

    .line 981
    .local v15, "maxValue":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v15

    .line 983
    move/from16 v0, v27

    if-ne v15, v0, :cond_4ba

    .line 984
    const/16 v23, 0xff

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    mul-float v29, v29, v16

    mul-float v29, v29, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    mul-float v30, v30, v11

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x2

    aget v30, v30, v31

    mul-float v30, v30, v16

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x3

    aget v30, v30, v31

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x4

    aget v30, v30, v31

    mul-float v30, v30, v16

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x5

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 988
    .local v24, "temp":F
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v22, v0

    .line 989
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x6

    aget v29, v29, v30

    mul-float v29, v29, v16

    mul-float v29, v29, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x7

    aget v30, v30, v31

    mul-float v30, v30, v8

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x8

    aget v30, v30, v31

    mul-float v30, v30, v16

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x9

    aget v30, v30, v31

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0xa

    aget v30, v30, v31

    mul-float v30, v30, v16

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0xb

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 993
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v20, v0

    .line 994
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v20

    .line 1023
    :goto_406
    add-int v19, v23, v5

    .line 1024
    add-int v18, v22, v4

    .line 1025
    add-int v17, v20, v3

    .line 1027
    const/16 v29, 0x190

    move/from16 v0, v29

    if-ge v7, v0, :cond_722

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6a2

    .line 1030
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v19

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v23, v29, 0x8

    .line 1031
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v23

    .line 1033
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v18

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v22, v29, 0x8

    .line 1034
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 1036
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v17

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v20, v29, 0x8

    .line 1037
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v20

    goto/16 :goto_173

    .line 971
    .end local v15    # "maxValue":I
    .end local v24    # "temp":F
    .end local v25    # "testB":I
    .end local v26    # "testG":I
    .end local v27    # "testR":I
    :cond_49a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v5, v0, -0xff

    .line 972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v4, v0, -0xff

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v3, v0, -0xff

    goto/16 :goto_2ca

    .line 996
    .restart local v15    # "maxValue":I
    .restart local v25    # "testB":I
    .restart local v26    # "testG":I
    .restart local v27    # "testR":I
    :cond_4ba
    move/from16 v0, v25

    if-ne v15, v0, :cond_5b0

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xc

    aget v29, v29, v30

    mul-float v29, v29, v16

    mul-float v29, v29, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0xd

    aget v30, v30, v31

    mul-float v30, v30, v8

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0xe

    aget v30, v30, v31

    mul-float v30, v30, v16

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0xf

    aget v30, v30, v31

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x10

    aget v30, v30, v31

    mul-float v30, v30, v16

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x11

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 999
    .restart local v24    # "temp":F
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1000
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v23

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x12

    aget v29, v29, v30

    mul-float v29, v29, v11

    mul-float v29, v29, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x13

    aget v30, v30, v31

    mul-float v30, v30, v8

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x14

    aget v30, v30, v31

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x15

    aget v30, v30, v31

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x16

    aget v30, v30, v31

    mul-float v30, v30, v11

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x17

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 1004
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1005
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 1007
    const/16 v20, 0xff

    goto/16 :goto_406

    .line 1010
    .end local v24    # "temp":F
    :cond_5b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x18

    aget v29, v29, v30

    mul-float v29, v29, v16

    mul-float v29, v29, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x19

    aget v30, v30, v31

    mul-float v30, v30, v11

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1a

    aget v30, v30, v31

    mul-float v30, v30, v16

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1b

    aget v30, v30, v31

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1c

    aget v30, v30, v31

    mul-float v30, v30, v16

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1d

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 1012
    .restart local v24    # "temp":F
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1013
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v23

    .line 1015
    const/16 v22, 0xff

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1e

    aget v29, v29, v30

    mul-float v29, v29, v11

    mul-float v29, v29, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x1f

    aget v30, v30, v31

    mul-float v30, v30, v8

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x20

    aget v30, v30, v31

    mul-float v30, v30, v11

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x21

    aget v30, v30, v31

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x22

    aget v30, v30, v31

    mul-float v30, v30, v11

    mul-float v30, v30, v8

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v30, v0

    const/16 v31, 0x23

    aget v30, v30, v31

    add-float v24, v29, v30

    .line 1019
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1020
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v20

    goto/16 :goto_406

    .line 1039
    :cond_6a2
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v19

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v23, v29, 0x8

    .line 1040
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v23

    .line 1042
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v18

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v22, v29, 0x8

    .line 1043
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    .line 1045
    rsub-int/lit8 v29, v13, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v30, v0

    mul-int v29, v29, v30

    mul-int v30, v13, v17

    add-int v29, v29, v30

    add-int/lit8 v29, v29, 0x4

    div-int/lit8 v20, v29, 0x8

    .line 1046
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->max_num(II)I

    move-result v29

    const/16 v30, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->min_num(II)I

    move-result v20

    goto/16 :goto_173

    .line 1051
    :cond_722
    move/from16 v23, v19

    .line 1052
    move/from16 v22, v18

    .line 1053
    move/from16 v20, v17

    goto/16 :goto_173

    .line 1058
    .end local v15    # "maxValue":I
    .end local v24    # "temp":F
    .end local v25    # "testB":I
    .end local v26    # "testG":I
    .end local v27    # "testR":I
    :cond_72a
    const/16 v23, 0x0

    .line 1059
    const/16 v22, 0x0

    .line 1060
    const/16 v20, 0x0

    goto/16 :goto_173
.end method

.method private setAverageValue(IIIII)V
    .registers 16
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 808
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 809
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 811
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 812
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 813
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 815
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3d

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3d

    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_98

    .line 816
    :cond_3d
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    .line 817
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    .line 818
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    .line 819
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:I

    .line 820
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    add-int/2addr v6, p5

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I

    .line 821
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 823
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_7d

    .line 824
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 825
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 826
    iget v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 828
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 831
    :cond_7d
    iget-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_97

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 833
    .local v4, "time":J
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mValidZone:Z

    .line 834
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 835
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1770

    add-long/2addr v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 842
    .end local v4    # "time":J
    :cond_97
    :goto_97
    return-void

    .line 839
    :cond_98
    invoke-direct {p0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 840
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_97
.end method

.method private setBrowserMode()V
    .registers 2

    .prologue
    .line 1144
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1145
    return-void
.end method

.method private setVideoMode()V
    .registers 2

    .prologue
    .line 1140
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1141
    return-void
.end method

.method private setting_is_changed()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 515
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 517
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8a

    move v2, v3

    :goto_11
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 518
    const-string v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8c

    move v2, v3

    :goto_1c
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 519
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8e

    move v2, v3

    :goto_27
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 523
    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_90

    move v2, v3

    :goto_33
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 525
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_92

    move v2, v3

    :goto_3f
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 526
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_94

    move v2, v3

    :goto_4b
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 527
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_96

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_96

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_96

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_96

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v2, :cond_96

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_96

    move v2, v3

    :goto_66
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 529
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_98

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_98

    :goto_70
    iput-boolean v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 531
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_a7

    .line 532
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_81

    .line 533
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 535
    :cond_81
    :try_start_81
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_89} :catch_9a

    .line 545
    :cond_89
    :goto_89
    return-void

    :cond_8a
    move v2, v4

    .line 517
    goto :goto_11

    :cond_8c
    move v2, v4

    .line 518
    goto :goto_1c

    :cond_8e
    move v2, v4

    .line 519
    goto :goto_27

    :cond_90
    move v2, v4

    .line 523
    goto :goto_33

    :cond_92
    move v2, v4

    .line 525
    goto :goto_3f

    :cond_94
    move v2, v4

    .line 526
    goto :goto_4b

    :cond_96
    move v2, v4

    .line 527
    goto :goto_66

    :cond_98
    move v3, v4

    .line 529
    goto :goto_70

    .line 536
    :catch_9a
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_89

    .line 538
    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 542
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a7
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_89

    .line 543
    iget-object v2, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_89
.end method

.method private terminateScrRGB()V
    .registers 2

    .prologue
    .line 1152
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1153
    return-void
.end method

.method private terminateVideoMode()V
    .registers 2

    .prologue
    .line 1148
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1149
    return-void
.end method
