.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelA7;,
        Landroid/os/DVFSHelper$ModelMSM8916;,
        Landroid/os/DVFSHelper$ModelMSM8916_A3;,
        Landroid/os/DVFSHelper$ModelDegasLTE;,
        Landroid/os/DVFSHelper$ModelKMINI;,
        Landroid/os/DVFSHelper$ModelPXA1088;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelM0;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelPP;,
        Landroid/os/DVFSHelper$ModelSA;,
        Landroid/os/DVFSHelper$ModelSF;,
        Landroid/os/DVFSHelper$ModelZQ;,
        Landroid/os/DVFSHelper$ModelZL;,
        Landroid/os/DVFSHelper$ModelTR3CA;,
        Landroid/os/DVFSHelper$ModelTA;,
        Landroid/os/DVFSHelper$ModelTFJpn;,
        Landroid/os/DVFSHelper$ModelTF;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$Model8930AB;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "Application_launch"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_BROWSER_TOUCH:Ljava/lang/String; = "Browser_touch"

.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String; = "Gallery_touch_tail"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_TYPE_TOUCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_BUS_MAX:J = 0x8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CPU_MAX:J = 0x2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BO_CUSTOM_VALUE:J = 0x20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHIP_NAME:Ljava/lang/String;

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static volatile PWM_ROTATION_BOOST_TIMEOUT:I = 0x0

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_jf_xx_static"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_DISABLE_CSTATE:I = 0x16

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mToken:I

.field static sCfmsService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field private final REGION_JPN:Z

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

.field mAppLaunchBoostTime:I

.field mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mAppLaunchCState:Landroid/os/DVFSHelper;

.field mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

.field mBUSFrequencyTable:[I

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field mGPUFrequencyTable:[I

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/DVFSHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mIsHintNotifier:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mPkgName:Ljava/lang/String;

.field mRotationBUSBooster:Landroid/os/DVFSHelper;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedGPUFrequencyForSSRM:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sput v1, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 135
    sput v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 137
    sput v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 143
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    .line 185
    sput v1, Landroid/os/DVFSHelper;->mToken:I

    .line 1015
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 1905
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0x1f4

    const/4 v2, 0x1

    const/16 v5, 0x7d0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v4, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 151
    iput-object v4, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 153
    iput-object v4, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 155
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 157
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 159
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 161
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 163
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 165
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 167
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 169
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 171
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 173
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 175
    iput-object v4, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 177
    iput-object v4, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 179
    iput-object v4, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 181
    iput-object v4, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 183
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 187
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 191
    const-string/jumbo v0, "ssrm_jf_xx_static"

    if-eqz v0, :cond_42

    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string v3, "jpn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_42
    const-string v0, "DCM"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "KDI"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_60
    move v0, v2

    :goto_61
    iput-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1062
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1064
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1066
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1068
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1070
    iput-object v4, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1072
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1074
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1076
    iput-object v4, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1078
    iput-object v4, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1080
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1082
    iput v5, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1084
    iput v6, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1086
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1088
    iput v5, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1209
    iput v6, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1211
    iput v5, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1213
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1215
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1217
    iput-object v4, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 2090
    iput-object v4, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 2092
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 2094
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 2098
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 2099
    return-void

    :cond_9e
    move v0, v1

    .line 191
    goto :goto_61
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 204
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 217
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, 0x7d0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v3, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 151
    iput-object v3, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 153
    iput-object v3, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 155
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 157
    iput-object v3, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 159
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 161
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 163
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 165
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 167
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 169
    iput-object v3, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 171
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 173
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 175
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 177
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 179
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 181
    iput-object v3, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 183
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 187
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 191
    const-string/jumbo v0, "ssrm_jf_xx_static"

    if-eqz v0, :cond_41

    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string v2, "jpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_41
    const-string v0, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "KDI"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_5f
    const/4 v0, 0x1

    :goto_60
    iput-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    .line 1062
    iput-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1064
    iput-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1066
    iput-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1068
    iput-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1070
    iput-object v3, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1072
    iput-object v3, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1074
    iput-object v3, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1076
    iput-object v3, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1078
    iput-object v3, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1080
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 1082
    iput v4, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 1084
    iput v5, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 1086
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 1088
    iput v4, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1209
    iput v5, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 1211
    iput v4, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 1213
    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1215
    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1217
    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 2090
    iput-object v3, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    .line 2092
    iput-boolean v1, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    .line 2094
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    .line 232
    if-nez p1, :cond_9f

    .line 233
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_9c
    return-void

    :cond_9d
    move v0, v1

    .line 191
    goto :goto_60

    .line 236
    :cond_9f
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 239
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 241
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_bf

    .line 242
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 246
    :cond_bf
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 249
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 250
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 251
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 252
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 253
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    .line 254
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 255
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 257
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 258
    if-eqz p2, :cond_134

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 264
    :goto_130
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    goto/16 :goto_9c

    .line 261
    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_130
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 21
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/DVFSHelper;)[I
    .registers 2
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method private acquireImpl(I)V
    .registers 39
    .param p1, "timeout"    # I

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v3, :cond_7

    .line 763
    :goto_6
    return-void

    .line 536
    :cond_7
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquire:: timeout = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mIsAcquired = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v3, :cond_3f

    .line 539
    const-string v3, "DVFSHelper"

    const-string v4, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 545
    :cond_3f
    const/4 v2, 0x0

    .line 546
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v3, :cond_4e

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 550
    :cond_4e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v3, :pswitch_data_32e

    .line 739
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_71
    :goto_71
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_7e

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 747
    :cond_7e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_8b

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 750
    :cond_8b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_98

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 753
    :cond_98
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_a5

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 756
    :cond_a5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_b2

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 759
    :cond_b2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_bf

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 762
    :cond_bf
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_6

    .line 552
    :pswitch_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v3, :cond_71

    .line 553
    const/4 v5, 0x0

    .line 554
    .local v5, "coreNum":I
    const/16 v36, 0x0

    .line 557
    .local v36, "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_d8

    .line 558
    :try_start_d1
    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_d7} :catch_fa

    move-result-object v36

    .line 563
    :cond_d8
    :goto_d8
    if-eqz v36, :cond_de

    .line 564
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 567
    :cond_de
    if-lez v5, :cond_71

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v4, 0x4

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 560
    :catch_fa
    move-exception v32

    .line 561
    .local v32, "e1":Ljava/lang/NullPointerException;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d8

    .line 575
    .end local v5    # "coreNum":I
    .end local v32    # "e1":Ljava/lang/NullPointerException;
    .end local v36    # "stringCoreNum":Ljava/lang/String;
    :pswitch_ff
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v3, :cond_71

    .line 576
    const/4 v5, 0x0

    .line 577
    .restart local v5    # "coreNum":I
    const/16 v36, 0x0

    .line 579
    .restart local v36    # "stringCoreNum":Ljava/lang/String;
    if-eqz v2, :cond_111

    .line 580
    :try_start_10a
    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/NullPointerException; {:try_start_10a .. :try_end_110} :catch_133

    move-result-object v36

    .line 585
    :cond_111
    :goto_111
    if-eqz v36, :cond_117

    .line 586
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 589
    :cond_117
    if-lez v5, :cond_71

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v4, 0x5

    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v3 .. v9}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 582
    :catch_133
    move-exception v33

    .line 583
    .local v33, "e2":Ljava/lang/NullPointerException;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_111

    .line 597
    .end local v5    # "coreNum":I
    .end local v33    # "e2":Ljava/lang/NullPointerException;
    .end local v36    # "stringCoreNum":Ljava/lang/String;
    :pswitch_138
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_71

    .line 598
    const/4 v9, -0x1

    .line 600
    .local v9, "freq":I
    if-eqz v2, :cond_14e

    .line 601
    const-string v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 602
    .local v31, "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_14e

    .line 603
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 607
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_14e
    const-string v3, "ja"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    const v3, 0x186a00

    if-le v9, v3, :cond_166

    .line 608
    const v3, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v9

    .line 611
    :cond_166
    const/4 v3, -0x1

    if-eq v9, v3, :cond_71

    .line 612
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x6

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 619
    .end local v9    # "freq":I
    :pswitch_183
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v3, :cond_71

    .line 620
    const/4 v9, -0x1

    .line 621
    .restart local v9    # "freq":I
    if-eqz v2, :cond_199

    .line 622
    const-string v3, "CPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 623
    .restart local v31    # "cpuOption":Ljava/lang/String;
    if-eqz v31, :cond_199

    .line 624
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 628
    .end local v31    # "cpuOption":Ljava/lang/String;
    :cond_199
    const/4 v3, -0x1

    if-eq v9, v3, :cond_71

    .line 629
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x7

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 636
    .end local v9    # "freq":I
    :pswitch_1b6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_71

    .line 637
    const/4 v9, -0x1

    .line 638
    .restart local v9    # "freq":I
    if-eqz v2, :cond_1cc

    .line 639
    const-string v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 640
    .local v35, "gpuOption":Ljava/lang/String;
    if-eqz v35, :cond_1cc

    .line 641
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 645
    .end local v35    # "gpuOption":Ljava/lang/String;
    :cond_1cc
    const/4 v3, -0x1

    if-eq v9, v3, :cond_71

    .line 646
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v8, 0x1

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 653
    .end local v9    # "freq":I
    :pswitch_1e9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v3, :cond_71

    .line 654
    const/4 v9, -0x1

    .line 655
    .restart local v9    # "freq":I
    if-eqz v2, :cond_1ff

    .line 656
    const-string v3, "GPU"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 657
    .restart local v35    # "gpuOption":Ljava/lang/String;
    if-eqz v35, :cond_1ff

    .line 658
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 662
    .end local v35    # "gpuOption":Ljava/lang/String;
    :cond_1ff
    const/4 v3, -0x1

    if-eq v9, v3, :cond_71

    .line 663
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0x9

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 670
    .end local v9    # "freq":I
    :pswitch_21d
    const/4 v9, -0x1

    .line 672
    .restart local v9    # "freq":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_230

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 674
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 677
    :cond_230
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0x8

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_71

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_71

    .line 687
    .end local v9    # "freq":I
    :pswitch_258
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_71

    .line 688
    const/4 v13, -0x1

    .line 690
    .local v13, "busMinfreq":I
    if-eqz v2, :cond_26e

    .line 691
    const-string v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 692
    .local v30, "busOption":Ljava/lang/String;
    if-eqz v30, :cond_26e

    .line 693
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 697
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_26e
    const/4 v3, -0x1

    if-eq v13, v3, :cond_71

    .line 698
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v12, 0xa

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 705
    .end local v13    # "busMinfreq":I
    :pswitch_290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v3, :cond_71

    .line 706
    const/16 v17, -0x1

    .line 707
    .local v17, "busMaxfreq":I
    if-eqz v2, :cond_2a7

    .line 708
    const-string v3, "BUS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 709
    .restart local v30    # "busOption":Ljava/lang/String;
    if-eqz v30, :cond_2a7

    .line 710
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 713
    .end local v30    # "busOption":Ljava/lang/String;
    :cond_2a7
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_71

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v16, 0xb

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 721
    .end local v17    # "busMaxfreq":I
    :pswitch_2cd
    const/16 v21, 0x63

    .line 722
    .local v21, "fpsMax":I
    if-eqz v2, :cond_2de

    .line 723
    const-string v3, "FPS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 724
    .local v34, "fpsOption":Ljava/lang/String;
    if-eqz v34, :cond_2de

    .line 725
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 728
    .end local v34    # "fpsOption":Ljava/lang/String;
    :cond_2de
    if-ltz v21, :cond_71

    const/16 v3, 0x63

    move/from16 v0, v21

    if-ge v0, v3, :cond_71

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v25}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 735
    .end local v21    # "fpsMax":I
    :pswitch_309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    move-object/from16 v23, v0

    const/16 v24, 0xc

    const/16 v25, 0x0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_71

    .line 550
    :pswitch_data_32e
    .packed-switch 0xc
        :pswitch_138
        :pswitch_183
        :pswitch_c6
        :pswitch_ff
        :pswitch_1b6
        :pswitch_1e9
        :pswitch_21d
        :pswitch_258
        :pswitch_290
        :pswitch_2cd
        :pswitch_309
    .end packed-switch
.end method

.method private addHelper(Landroid/os/DVFSHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/os/DVFSHelper;

    .prologue
    .line 2102
    iget-object v0, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    return-void
.end method

.method private adjustCPUFreqTable()V
    .registers 6

    .prologue
    .line 269
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_5

    .line 303
    :cond_4
    :goto_4
    return-void

    .line 273
    :cond_5
    const/4 v0, 0x0

    .line 274
    .local v0, "SHIFT_STEPS":I
    const-string v3, "hf"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_11
    const-string v3, "kf"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "ka"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "tr3ca"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "zl"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "zq"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 279
    :cond_46
    const/4 v0, 0x2

    .line 281
    :cond_47
    const-string/jumbo v3, "tf"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 282
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x286e00

    if-ne v3, v4, :cond_aa

    .line 283
    const/4 v0, 0x5

    .line 288
    :cond_5d
    :goto_5d
    const-string/jumbo v3, "ssrm_jf_xx_static"

    const-string v4, "lentis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string/jumbo v3, "ssrm_jf_xx_static"

    const-string v4, "kcat6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    const-string/jumbo v3, "ta"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 290
    :cond_7e
    const/4 v0, 0x2

    .line 292
    :cond_7f
    const-string/jumbo v3, "ssrm_jf_xx_static"

    const-string v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 293
    const/4 v0, 0x3

    .line 296
    :cond_8b
    if-lez v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 297
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 298
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_99
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_ac

    .line 299
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 285
    .end local v1    # "i":I
    .end local v2    # "newCPUFreqTable":[I
    :cond_aa
    const/4 v0, 0x2

    goto :goto_5d

    .line 301
    .restart local v1    # "i":I
    .restart local v2    # "newCPUFreqTable":[I
    :cond_ac
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto/16 :goto_4
.end method

.method private adjustGPUFreqTable()V
    .registers 6

    .prologue
    .line 307
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v3, :cond_5

    .line 326
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    const/4 v0, 0x0

    .line 312
    .local v0, "SHIFT_STEPS":I
    const-string v3, "ha"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "ka"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string/jumbo v3, "sa"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string/jumbo v3, "ta"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 314
    :cond_30
    const/4 v0, 0x2

    .line 319
    :cond_31
    :goto_31
    if-lez v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 320
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 321
    .local v2, "newGPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3f
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_5d

    .line 322
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 315
    .end local v1    # "i":I
    .end local v2    # "newGPUFreqTable":[I
    :cond_50
    const-string/jumbo v3, "zl"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 316
    const/4 v0, 0x3

    goto :goto_31

    .line 324
    .restart local v1    # "i":I
    .restart local v2    # "newGPUFreqTable":[I
    :cond_5d
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_4
.end method

.method public static createBusBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1979
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1980
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v6

    .line 1981
    .local v6, "table":[I
    if-eqz v6, :cond_1a

    .line 1982
    const-string v1, "BUS"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1984
    :cond_1a
    return-object v0
.end method

.method public static createBusLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1989
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x14

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1990
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1931
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1932
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 1933
    .local v6, "table":[I
    if-eqz v6, :cond_1a

    .line 1934
    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1936
    :cond_1a
    return-object v0
.end method

.method public static createCpuCoreBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1963
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1964
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 1965
    .local v6, "table":[I
    if-eqz v6, :cond_1a

    .line 1966
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1968
    :cond_1a
    return-object v0
.end method

.method public static createCpuCoreLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1973
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1974
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createCpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1941
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1942
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createGpuBooster(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1947
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1948
    .local v0, "instance":Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v6

    .line 1949
    .local v6, "table":[I
    if-eqz v6, :cond_1a

    .line 1950
    const-string v1, "GPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1952
    :cond_1a
    return-object v0
.end method

.method public static createGpuLimiter(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 1957
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1958
    .local v0, "instance":Landroid/os/DVFSHelper;
    return-object v0
.end method

.method public static createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 2113
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2c

    .line 2115
    :try_start_4
    const-string v3, "CustomFrequencyManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 2116
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v3

    sput-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_24

    .line 2120
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2c

    .line 2121
    const/4 v15, 0x0

    .line 2187
    .end local v8    # "b":Landroid/os/IBinder;
    :cond_15
    :goto_15
    return-object v15

    .line 2117
    :catch_16
    move-exception v10

    .line 2118
    .local v10, "e":Ljava/lang/Exception;
    :try_start_17
    const-string v3, "DVFSHelper"

    const-string v4, "createHintNotifier:: failed to get cfms service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_24

    .line 2120
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v3, :cond_2c

    .line 2121
    const/4 v15, 0x0

    goto :goto_15

    .line 2120
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_24
    move-exception v3

    sget-object v4, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v4, :cond_2b

    .line 2121
    const/4 v15, 0x0

    goto :goto_15

    :cond_2b
    throw v3

    .line 2126
    :cond_2c
    new-instance v15, Landroid/os/DVFSHelper;

    invoke-direct {v15}, Landroid/os/DVFSHelper;-><init>()V

    .line 2128
    .local v15, "notifier":Landroid/os/DVFSHelper;
    const/16 v16, 0x0

    .line 2130
    .local v16, "policyIntent":Landroid/content/Intent;
    :try_start_33
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_db

    move-result-object v16

    .line 2135
    :goto_3b
    if-eqz v16, :cond_15

    .line 2136
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 2137
    .local v9, "bundle":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2138
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2139
    .local v17, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2141
    .local v2, "newHelper":Landroid/os/DVFSHelper;
    const-string v14, ""

    .line 2142
    .local v14, "moduleName":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v11, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v11, v3

    .line 2146
    .local v11, "freqTable":[I
    const-string v3, "CPU_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 2147
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@CPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 2149
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "CPU"

    .line 2150
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v11

    .line 2170
    :cond_91
    :goto_91
    if-eqz v2, :cond_49

    .line 2171
    const-string/jumbo v3, "max"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 2172
    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2174
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :goto_d6
    invoke-direct {v15, v2}, Landroid/os/DVFSHelper;->addHelper(Landroid/os/DVFSHelper;)V

    goto/16 :goto_49

    .line 2131
    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "freqTable":[I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "moduleName":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :catch_db
    move-exception v10

    .line 2132
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v3, "DVFSHelper"

    const-string v4, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2151
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "freqTable":[I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "moduleName":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_e5
    const-string v3, "GPU_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 2152
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@GPU_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 2154
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "GPU"

    .line 2155
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequencyForSSRM()[I

    move-result-object v11

    goto/16 :goto_91

    .line 2156
    :cond_115
    const-string v3, "BUS_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 2157
    const-string v14, "BUS"

    .line 2158
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@BUS_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 2160
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v11

    goto/16 :goto_91

    .line 2161
    :cond_145
    const-string v3, "CORE_NUM_MIN"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_175

    .line 2162
    new-instance v2, Landroid/os/DVFSHelper;

    .end local v2    # "newHelper":Landroid/os/DVFSHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@CORE_NUM_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 2164
    .restart local v2    # "newHelper":Landroid/os/DVFSHelper;
    const-string v14, "CORE_NUM"

    .line 2165
    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v11

    goto/16 :goto_91

    .line 2166
    :cond_175
    const-string/jumbo v3, "timeout"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2167
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v15, Landroid/os/DVFSHelper;->mHintTimeout:I

    goto/16 :goto_91

    .line 2177
    :cond_186
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v14, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2179
    const-string v3, "DVFSHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", moduleName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d6
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .registers 3

    .prologue
    .line 1825
    const-string/jumbo v0, "zl"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1826
    new-instance v0, Landroid/os/DVFSHelper$ModelZL;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelZL;-><init>(Landroid/os/DVFSHelper;)V

    .line 1901
    :goto_10
    return-object v0

    .line 1827
    :cond_11
    const-string/jumbo v0, "zq"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1828
    new-instance v0, Landroid/os/DVFSHelper$ModelZQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelZQ;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1829
    :cond_22
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1830
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1831
    :cond_32
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1832
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1833
    :cond_42
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1834
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1835
    :cond_52
    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1836
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1837
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1838
    :cond_6e
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1839
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_10

    .line 1840
    :cond_80
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1841
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1843
    :cond_93
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1845
    :cond_9a
    const-string v0, "kf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1846
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1847
    :cond_ab
    const-string v0, "ka"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1848
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1849
    :cond_bc
    const-string v0, "kq"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1850
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1851
    :cond_cd
    const-string/jumbo v0, "tf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1852
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->REGION_JPN:Z

    if-eqz v0, :cond_e3

    .line 1853
    new-instance v0, Landroid/os/DVFSHelper$ModelTFJpn;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTFJpn;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1855
    :cond_e3
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1857
    :cond_ea
    const-string/jumbo v0, "ta"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1858
    new-instance v0, Landroid/os/DVFSHelper$ModelTA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1859
    :cond_fc
    const-string/jumbo v0, "sf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1860
    new-instance v0, Landroid/os/DVFSHelper$ModelSF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1861
    :cond_10e
    const-string/jumbo v0, "sa"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 1862
    new-instance v0, Landroid/os/DVFSHelper$ModelSA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1863
    :cond_120
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 1864
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1865
    :cond_131
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 1866
    const-string/jumbo v0, "pp"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 1867
    new-instance v0, Landroid/os/DVFSHelper$ModelPP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1868
    :cond_14d
    const-string v0, "m0"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1869
    new-instance v0, Landroid/os/DVFSHelper$ModelM0;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelM0;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1871
    :cond_15e
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1873
    :cond_165
    const-string v0, "kam"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 1874
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1875
    :cond_176
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 1876
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1877
    :cond_188
    const-string v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1878
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1879
    :cond_199
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 1880
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1881
    :cond_1ab
    const-string/jumbo v0, "pxa1088"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 1882
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1883
    :cond_1bd
    const-string v0, "kmini"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 1884
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 1885
    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1887
    :cond_1d9
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1888
    :cond_1e0
    const-string v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 1889
    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1890
    :cond_1f1
    const-string/jumbo v0, "msm8916"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 1891
    const-string/jumbo v0, "ssrm_jf_xx_static"

    const-string v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 1892
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916_A3;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916_A3;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1893
    :cond_20e
    const-string v0, "MSM8939"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 1894
    new-instance v0, Landroid/os/DVFSHelper$ModelA7;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelA7;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1896
    :cond_21f
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8916;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1898
    :cond_226
    const-string/jumbo v0, "tr3ca"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 1899
    new-instance v0, Landroid/os/DVFSHelper$ModelTR3CA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTR3CA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10

    .line 1901
    :cond_238
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_10
.end method

.method public static getStandbyTimeInUltraPowerSavingMode()I
    .registers 3

    .prologue
    .line 2051
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_12

    .line 2052
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2053
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 2054
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 2057
    :cond_12
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_21

    .line 2058
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v2

    .line 2063
    :goto_1c
    return v2

    .line 2060
    :catch_1d
    move-exception v1

    .line 2061
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2063
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1019
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_7

    .line 1020
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_7
    return-void
.end method

.method public static onScrollEvent(Z)V
    .registers 6
    .param p0, "isScroll"    # Z

    .prologue
    .line 1910
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_12

    .line 1911
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1912
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 1913
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 1916
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_21

    .line 1917
    sget-object v3, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v4, "TYPE_SCROLL"

    if-eqz p0, :cond_22

    const-string v2, "TRUE"

    :goto_1e
    invoke-interface {v3, v4, v2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_21
    :goto_21
    return-void

    .line 1917
    :cond_22
    const-string v2, "FALSE"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_1e

    .line 1919
    :catch_25
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private releaseImpl()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_6

    .line 828
    :cond_5
    :goto_5
    return-void

    .line 786
    :cond_6
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_5

    .line 792
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_38

    .line 793
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 794
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 797
    :cond_38
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4b

    .line 798
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 799
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 802
    :cond_4b
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5e

    .line 803
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 804
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 807
    :cond_5e
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_71

    .line 808
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 809
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 812
    :cond_71
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_84

    .line 813
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 814
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 817
    :cond_84
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_97

    .line 818
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 819
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: fpsRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iput-object v3, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 822
    :cond_97
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_aa

    .line 823
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 824
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuDisCStateRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuDisCStateRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 827
    :cond_aa
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_5
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2076
    :try_start_0
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_12

    .line 2077
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2078
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 2079
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 2082
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1b

    .line 2083
    sget-object v2, Landroid/os/DVFSHelper;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 2088
    :cond_1b
    :goto_1b
    return-void

    .line 2085
    :catch_1c
    move-exception v1

    .line 2086
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method


# virtual methods
.method public acquire()V
    .registers 2

    .prologue
    .line 510
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 511
    return-void
.end method

.method public acquire(I)V
    .registers 5
    .param p1, "timeout"    # I

    .prologue
    .line 522
    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_1c

    .line 523
    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    .line 524
    .local v0, "helper":Landroid/os/DVFSHelper;
    iget v2, p0, Landroid/os/DVFSHelper;->mHintTimeout:I

    invoke-direct {v0, v2}, Landroid/os/DVFSHelper;->acquireImpl(I)V

    goto :goto_a

    .line 527
    .end local v0    # "helper":Landroid/os/DVFSHelper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper;->acquireImpl(I)V

    .line 529
    :cond_1f
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .registers 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, "timeout":I
    if-lez v0, :cond_b

    .line 498
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 500
    :cond_b
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 857
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 858
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 860
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 840
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 843
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .registers 9
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x10

    const/16 v4, 0x13

    const/16 v3, 0xc

    .line 881
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_d

    .line 1013
    :cond_c
    :goto_c
    return-void

    .line 886
    :cond_d
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 887
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_2c

    .line 888
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 889
    .local v1, "freq":I
    if-lez v1, :cond_c

    .line 890
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_c

    .line 892
    .end local v1    # "freq":I
    :cond_2c
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_3f

    .line 893
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 894
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 895
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_c

    .line 897
    .end local v1    # "freq":I
    :cond_3f
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_52

    .line 898
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    .line 899
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 900
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_c

    .line 902
    .end local v1    # "freq":I
    :cond_52
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_c

    .line 903
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 904
    .local v0, "coreNum":I
    if-lez v0, :cond_c

    .line 905
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_c

    .line 908
    .end local v0    # "coreNum":I
    :cond_65
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 909
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_84

    .line 910
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 911
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 912
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_c

    .line 914
    .end local v1    # "freq":I
    :cond_84
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_c

    .line 915
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchBUSFreq()I

    move-result v1

    .line 916
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 917
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 920
    .end local v1    # "freq":I
    :cond_98
    const-string v2, "Browser_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 921
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_b8

    .line 922
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchCPUFreq()I

    move-result v1

    .line 923
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 924
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 926
    .end local v1    # "freq":I
    :cond_b8
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_c

    .line 927
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserTouchBUSFreq()I

    move-result v1

    .line 928
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 929
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 932
    .end local v1    # "freq":I
    :cond_cc
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 933
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_ec

    .line 934
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 935
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 936
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 938
    .end local v1    # "freq":I
    :cond_ec
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_100

    .line 939
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchBUSFreq()I

    move-result v1

    .line 940
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 941
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 943
    .end local v1    # "freq":I
    :cond_100
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_114

    .line 944
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 945
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 946
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 948
    .end local v1    # "freq":I
    :cond_114
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v6, :cond_c

    .line 949
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUCore()I

    move-result v0

    .line 950
    .restart local v0    # "coreNum":I
    if-lez v0, :cond_c

    .line 951
    const-string v2, "CORE_NUM"

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 954
    .end local v0    # "coreNum":I
    :cond_128
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 955
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_148

    .line 956
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 957
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 958
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 960
    .end local v1    # "freq":I
    :cond_148
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_15c

    .line 961
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    .line 962
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 963
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 965
    .end local v1    # "freq":I
    :cond_15c
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_c

    .line 966
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    .line 967
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 968
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 971
    .end local v1    # "freq":I
    :cond_170
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 972
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 973
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 974
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 976
    .end local v1    # "freq":I
    :cond_18c
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 977
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_c

    .line 978
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 979
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 980
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 983
    .end local v1    # "freq":I
    :cond_1a8
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 984
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 985
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 986
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 988
    .end local v1    # "freq":I
    :cond_1c4
    const-string v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 989
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 990
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 991
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 993
    .end local v1    # "freq":I
    :cond_1e0
    const-string v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_210

    .line 994
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_1fc

    .line 995
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    .line 996
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 997
    const-string v2, "GPU"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 999
    .end local v1    # "freq":I
    :cond_1fc
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_c

    .line 1000
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    .line 1001
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 1002
    const-string v2, "BUS"

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 1005
    .end local v1    # "freq":I
    :cond_210
    const-string v2, "Device_wakeup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1006
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_c

    .line 1007
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getDeviceWakeupCPUFreq()I

    move-result v1

    .line 1008
    .restart local v1    # "freq":I
    if-lez v1, :cond_c

    .line 1009
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_c
.end method

.method public cancelExtraOptions()V
    .registers 2

    .prologue
    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 871
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .registers 6
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 360
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_6

    .line 377
    :cond_5
    :goto_5
    return v1

    .line 363
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 364
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 368
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 369
    .local v1, "realFreq":I
    :goto_10
    if-lez v0, :cond_5

    .line 370
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_21

    .line 371
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 372
    goto :goto_5

    .line 374
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .registers 8
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 390
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_6

    .line 398
    :cond_5
    :goto_5
    return v1

    .line 393
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 394
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 398
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_5
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .registers 8
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 435
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_6

    .line 443
    :cond_5
    :goto_5
    return v1

    .line 438
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 439
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 443
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    goto :goto_5
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .registers 6
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 411
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_6

    .line 428
    :cond_5
    :goto_5
    return v1

    .line 414
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 415
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 419
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 420
    .local v1, "realFreq":I
    :goto_10
    if-lez v0, :cond_5

    .line 421
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_21

    .line 422
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 423
    goto :goto_5

    .line 425
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method public getSupportedBUSFrequency()[I
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequencyForSSRM()[I
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public isAquired()Z
    .registers 2

    .prologue
    .line 1926
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d0

    const/16 v7, 0x1f4

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1099
    if-nez p2, :cond_a

    .line 1207
    :cond_9
    :goto_9
    return-void

    .line 1105
    :cond_a
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_36

    .line 1106
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    .line 1108
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 1109
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_148

    .line 1110
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1119
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5e

    .line 1120
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1122
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 1123
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_152

    .line 1124
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1132
    :cond_5e
    :goto_5e
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_81

    .line 1133
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    .line 1135
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 1136
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_15c

    .line 1137
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1145
    :cond_81
    :goto_81
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_a4

    .line 1146
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    .line 1148
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 1149
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_166

    .line 1150
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1156
    :cond_a4
    :goto_a4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    if-nez v0, :cond_b4

    .line 1157
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CSTATE"

    const/16 v3, 0x16

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    .line 1161
    :cond_b4
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    const-string v0, "kam"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1162
    :cond_d2
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    .line 1187
    :goto_d4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_df

    .line 1188
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1190
    :cond_df
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_ea

    .line 1191
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCPUCoreNumBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1193
    :cond_ea
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_100

    .line 1194
    const-string/jumbo v0, "pxa1088"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1195
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchGPUBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1198
    :cond_100
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_135

    .line 1199
    const-string/jumbo v0, "pxa1088"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    const-string v0, "kmini"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    const-string/jumbo v0, "tf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    const-string v0, "kf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1201
    :cond_12e
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBUSBooster:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1204
    :cond_135
    const-string v0, "kf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1205
    iget-object v0, p0, Landroid/os/DVFSHelper;->mAppLaunchCState:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_9

    .line 1113
    :cond_148
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 1126
    :cond_152
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 1139
    :cond_15c
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1152
    :cond_166
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 1163
    :cond_170
    const-string/jumbo v0, "zl"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "zq"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "tr3ca"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string v0, "kf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string v0, "ka"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string v0, "kq"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "tf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "ta"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "sf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    const-string/jumbo v0, "sa"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 1167
    :cond_1db
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 1168
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_d4

    .line 1169
    :cond_1e7
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string v0, "com.google.android.gm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string v0, "com.facebook.katana"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string v0, "com.android.vending"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_217

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 1175
    :cond_217
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_d4

    .line 1177
    :cond_21d
    const-string/jumbo v0, "sf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_233

    const-string/jumbo v0, "sa"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 1178
    :cond_233
    iput v7, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_d4

    .line 1180
    :cond_237
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_d4

    .line 1184
    :cond_23d
    iput v8, p0, Landroid/os/DVFSHelper;->mAppLaunchBoostTime:I

    goto/16 :goto_d4
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x0

    .line 1221
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_22

    .line 1222
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 1223
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1224
    .local v1, "coreTable":[I
    if-eqz v1, :cond_eb

    .line 1225
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v4, "CORE_NUM"

    aget v5, v1, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1230
    .end local v1    # "coreTable":[I
    :cond_22
    :goto_22
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_2d

    .line 1231
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1234
    :cond_2d
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "exynos5"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string/jumbo v3, "universal7420"

    sget-object v4, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    :cond_4c
    const-string v3, "hf"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    :cond_61
    const-string/jumbo v3, "pxa1088"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1237
    :cond_77
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_a3

    .line 1238
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 1239
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    .line 1240
    .local v2, "gpuTable":[I
    if-eqz v2, :cond_122

    .line 1241
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 1242
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1252
    .end local v2    # "gpuTable":[I
    :cond_a3
    :goto_a3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_ac

    .line 1253
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1257
    :cond_ac
    const-string/jumbo v3, "pxa1088"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 1258
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_e1

    .line 1259
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 1260
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    .line 1261
    .local v0, "busTable":[I
    if-eqz v0, :cond_12c

    .line 1262
    const-string/jumbo v3, "pxa1088"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 1263
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string v4, "BUS"

    aget v5, v0, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1269
    .end local v0    # "busTable":[I
    :cond_e1
    :goto_e1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_ea

    .line 1270
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1273
    :cond_ea
    return-void

    .line 1227
    .restart local v1    # "coreTable":[I
    :cond_eb
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 1243
    .end local v1    # "coreTable":[I
    .restart local v2    # "gpuTable":[I
    :cond_f5
    const-string/jumbo v3, "pxa1088"

    const-string v4, "jf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10b

    const-string/jumbo v3, "msm8226"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 1244
    :cond_10b
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    aget v5, v2, v8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a3

    .line 1246
    :cond_116
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a3

    .line 1249
    :cond_122
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 1266
    .end local v2    # "gpuTable":[I
    .restart local v0    # "busTable":[I
    :cond_12c
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1
.end method

.method public release()V
    .registers 4

    .prologue
    .line 772
    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsHintNotifier:Z

    if-eqz v2, :cond_1a

    .line 773
    iget-object v2, p0, Landroid/os/DVFSHelper;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DVFSHelper;

    .line 774
    .local v0, "helper":Landroid/os/DVFSHelper;
    invoke-direct {v0}, Landroid/os/DVFSHelper;->releaseImpl()V

    goto :goto_a

    .line 777
    .end local v0    # "helper":Landroid/os/DVFSHelper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-direct {p0}, Landroid/os/DVFSHelper;->releaseImpl()V

    .line 779
    :cond_1d
    return-void
.end method

.method public setFrequency(J)Landroid/os/DVFSHelper;
    .registers 4
    .param p1, "freq"    # J

    .prologue
    .line 1995
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_1e

    .line 2013
    :goto_5
    :pswitch_5
    return-object p0

    .line 1998
    :pswitch_6
    const-string v0, "CPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_5

    .line 2002
    :pswitch_c
    const-string v0, "GPU"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_5

    .line 2006
    :pswitch_12
    const-string v0, "CORE_NUM"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_5

    .line 2010
    :pswitch_18
    const-string v0, "BUS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_5

    .line 1995
    :pswitch_data_1e
    .packed-switch 0xc
        :pswitch_6
        :pswitch_6
        :pswitch_12
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public setFrequencyByPercent(I)Landroid/os/DVFSHelper;
    .registers 6
    .param p1, "percent"    # I

    .prologue
    .line 2019
    const/4 v0, 0x0

    .line 2020
    .local v0, "freq":I
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v1, :pswitch_data_24

    .line 2038
    :goto_6
    :pswitch_6
    return-object p0

    .line 2023
    :pswitch_7
    const-string v1, "CPU"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_6

    .line 2027
    :pswitch_e
    const-string v1, "GPU"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_6

    .line 2031
    :pswitch_15
    const-string v1, "CORE_NUM"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_6

    .line 2035
    :pswitch_1c
    const-string v1, "BUS"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_6

    .line 2020
    nop

    :pswitch_data_24
    .packed-switch 0xc
        :pswitch_7
        :pswitch_7
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_6
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
