.class public Lcom/samsung/android/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
.field public static final ABNORMAL_PRESSURE_MONITOR:I

.field public static final ABNORMAL_SHOCK_SERVICE:I

.field public static final ACCELEROMETER_SENSOR_SERVICE:I

.field public static final ACTIVE_TIME_SERVICE:I

.field public static final ACTIVITY_TRACKER_BATCH_SERVICE:I

.field public static final ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_SERVICE:I

.field public static final APDR_SERVICE:I

.field public static final AUTO_BRIGHTNESS_SERVICE:I

.field public static final AUTO_ROTATION_SERVICE:I

.field public static final BEST_LOCATION_SERVICE:I

.field public static final BOTTOM_FLAT_DETECTOR_SERVICE:I

.field public static final BOUNCE_LONG_MOTION_SERVICE:I

.field public static final BOUNCE_SHORT_MOTION_SERVICE:I

.field public static final CALL_MOTION_SERVICE:I

.field public static final CALL_POSE_SERVICE:I

.field public static final CAPTURE_MOTION_SERVICE:I

.field public static final CARE_GIVER_SERVICE:I

.field public static final CARRYING_STATUS_MONITOR_SERVICE:I

.field public static final CMD_PROCESS_FAULT_DETECTION:I

.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

.field public static final DEFAULT_VERSION:I = 0x1

.field public static final DIRECT_CALL_SERVICE:I

.field public static final EXERCISE_SERVICE:I

.field public static final FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

.field public static final FLAT_MOTION_SERVICE:I

.field public static final FLIP_COVER_ACTION_SERVICE:I

.field public static final GESTURE_APPROACH_SERVICE:I

.field public static final GYROSCOPE_SENSOR_SERVICE:I

.field public static final GYRO_TEMPERATURE_SERVICE:I

.field public static final LIFE_LOG_COMPONENT_SERVICE:I

.field public static final LIFE_LOG_SERVICE:I

.field public static final LOCATION_SERVICE:I

.field public static final LOG_LEVEL_DEBUG:I

.field public static final LOG_LEVEL_ERROR:I

.field public static final LOG_LEVEL_INFO:I

.field public static final LOG_LEVEL_TRACE:I

.field public static final LOG_LEVEL_WARN:I

.field public static final LPP_SERVICE:I

.field public static final MAGNETIC_SENSOR_SERVICE:I

.field public static final MOTION_SERVICE:I

.field public static final MOVEMENT_ALERT_SERVICE:I

.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I

.field public static final MOVEMENT_SERVICE:I

.field public static final MOVING_SERVICE:I

.field public static final ORIENTATION_SENSOR_SERVICE:I

.field public static final OTHER_VERSION:I = 0x2

.field public static final PEDOMETER_SERVICE:I

.field public static final POWER_NOTI_SERVICE:I

.field public static final PROPERTY_ABNORMAL_SHOCK_DURATION:I = 0x2d

.field public static final PROPERTY_ABNORMAL_SHOCK_STRENGTH:I = 0x2c

.field public static final PROPERTY_ABNORMAL_SHOCK_USER_ACTION:I = 0x2e

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_ACTIVITY:I = 0x26

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_PERIOD:I = 0x27

.field public static final PROPERTY_ACTIVITY_TRACKER_INTTERUPT_MODE_ACTIVITY:I = 0x25

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_AUTO_BRIGHTNESS_DEVICE_MODE:I = 0x40

.field public static final PROPERTY_AUTO_BRIGHTNESS_EBOOK_CONFIG_DATA:I = 0x41

.field public static final PROPERTY_CARE_GIVER_DURATION:I = 0x29

.field public static final PROPERTY_CARE_GIVER_STRENGTH:I = 0x28

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_EXERCISE_DATA_TYPE:I = 0x3f

.field public static final PROPERTY_FLAT_MOTION_FOR_TABLE_MODE:I = 0x3d

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_COMPONENT_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LIFE_LOG_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_LIFE_LOG_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_STAYING_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_STAYING_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_CURRENT_INFO_COLLECTION_TIME:I = 0x13

.field public static final PROPERTY_PEDOMETER_DELIVERY_COUNT:I = 0x11

.field public static final PROPERTY_PEDOMETER_EXERCISE_MODE:I = 0x3e

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_POI_CREATION_DB_SETTING:I = 0x1b

.field public static final PROPERTY_SENSORHUB_TIMER_COUNT:I = 0x1a

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x2b

.field public static final PROPERTY_SLEEP_MONITOR_SENSIBILITY:I = 0x2a

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x23

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MINUMUM_ANGLE:I = 0x22

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x24

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x21

.field public static final PROPERTY_STAYING_ALERT_STOP_PERIOD:I = 0x17

.field public static final PROPERTY_STAYING_ALERT_WAIT_PERIOD:I = 0x18

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

.field public static final PROPERTY_STEP_COUNT_TIMER_STEPCOUNT:I = 0x19

.field public static final PROPERTY_STEP_LEVEL_MONITOR_DEVICE_TYPE:I = 0x39

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_COUNT:I = 0x3c

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_END_TIME:I = 0x38

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_START_TIME:I = 0x37

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_DURATION:I = 0x3b

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_TYPE:I = 0x3a

.field public static final PROPERTY_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x15

.field public static final PROPERTY_TEMPERATURE_ALERT_IS_INCLUDING:I = 0x16

.field public static final PROPERTY_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x14

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_WAKE_UP_VOICE_MODE:I = 0x35

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_AM:I = 0x10

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_GRAMMER:I = 0x12

.field public static final PUT_DOWN_MOTION_SERVICE:I

.field public static final RAW_BAROMETER_SENSOR_SERVICE:I

.field public static final RAW_GPS_SERVICE:I

.field public static final RAW_SATELLITE_SERVICE:I

.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

.field public static final RAW_WPS_SERVICE:I

.field public static final REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

.field public static final REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

.field public static final REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

.field public static final REQUEST_PEDOMETER_CURRENT_INFO:I

.field public static final REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

.field public static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field public static final SHAKE_MOTION_SERVICE:I

.field public static final SLEEP_MONITOR_SERVICE:I

.field public static final SPECIFIC_POSE_ALERT_SERVICE:I

.field public static final STAYING_ALERT_SERVICE:I

.field public static final STEP_COUNT_ALERT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_SERVICE:I

.field public static final STOP_ALERT_SERVICE:I

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_ALERT_SERVICE:I

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I

.field public static final TEST_FLAT_MOTION_SERVICE:I

.field public static final WAKE_UP_VOICE_SERVICE:I

.field public static final WRIST_UP_MOTION_SERVICE:I


# instance fields
.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOCATION_SERVICE:I

    .line 56
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVING_SERVICE:I

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LPP_SERVICE:I

    .line 63
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    .line 67
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    .line 71
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    .line 75
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_GPS_SERVICE:I

    .line 79
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_SATELLITE_SERVICE:I

    .line 83
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_WPS_SERVICE:I

    .line 87
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BEST_LOCATION_SERVICE:I

    .line 91
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACCELEROMETER_SENSOR_SERVICE:I

    .line 95
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ORIENTATION_SENSOR_SERVICE:I

    .line 99
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MAGNETIC_SENSOR_SERVICE:I

    .line 103
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYROSCOPE_SENSOR_SERVICE:I

    .line 107
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    .line 111
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    .line 115
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    .line 119
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    .line 127
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:I

    .line 131
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->APDR_SERVICE:I

    .line 135
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    .line 139
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->DIRECT_CALL_SERVICE:I

    .line 143
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STOP_ALERT_SERVICE:I

    .line 147
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    .line 151
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->RAW_BAROMETER_SENSOR_SERVICE:I

    .line 155
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    .line 159
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    .line 163
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARE_GIVER_SERVICE:I

    .line 167
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_SHOCK_SERVICE:I

    .line 171
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    .line 175
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    .line 179
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    .line 183
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    .line 187
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_SHORT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    .line 191
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_LONG_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    .line 195
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WRIST_UP_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    .line 199
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    .line 203
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    .line 207
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEST_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    .line 211
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    .line 215
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STAYING_ALERT_SERVICE:I

    .line 219
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_COMPONENT_SERVICE:I

    .line 223
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    .line 227
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    .line 231
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    .line 235
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    .line 239
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SPECIFIC_POSE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    .line 243
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    .line 247
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    .line 251
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    .line 255
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    .line 259
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    .line 263
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    .line 267
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION_FOR_TABLE_MODE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    .line 271
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CARRYING_STATUS_MONITOR_SERVICE:I

    .line 275
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOTTOM_FLAT_DETECTOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOTTOM_FLAT_DETECTOR_SERVICE:I

    .line 279
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    .line 283
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    .line 287
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    .line 291
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    .line 295
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

    .line 299
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    .line 303
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    .line 307
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    .line 311
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    .line 513
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    .line 516
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    .line 519
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    .line 522
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    .line 525
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1195
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/ContextAwareManager$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 554
    const-string v0, "context_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    .line 557
    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/ContextAwareManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .prologue
    .line 651
    if-nez p1, :cond_4

    .line 652
    const/4 v0, 0x0

    .line 666
    :cond_3
    :goto_3
    return-object v0

    .line 655
    :cond_4
    const/4 v0, 0x0

    .line 657
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 658
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 659
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 660
    .local v1, "delegate":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 661
    move-object v0, v1

    .line 662
    goto :goto_3
.end method

.method private setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "propertyObj"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 953
    const/4 v1, 0x0

    .line 956
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 962
    :goto_7
    return v1

    .line 958
    :catch_8
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "askInfo"    # I

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 631
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_c

    .line 632
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 636
    .restart local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getContextInfo(Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 640
    :goto_11
    return-void

    .line 637
    :catch_12
    move-exception v1

    .line 638
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in getContextInfo: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public final getVersion()I
    .registers 4

    .prologue
    .line 1228
    const/4 v1, 0x0

    .line 1230
    .local v1, "version":I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getVersion()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1234
    :goto_7
    return v1

    .line 1231
    :catch_8
    move-exception v0

    .line 1232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public final initializeAutoTest()V
    .registers 3

    .prologue
    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->initializeAutoTest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1106
    :goto_5
    return-void

    .line 1103
    :catch_6
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 571
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_11

    .line 572
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 573
    .restart local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 581
    :goto_16
    return-void

    .line 578
    :catch_17
    move-exception v1

    .line 579
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public final resetCAService(I)V
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->resetCAService(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 977
    :goto_5
    return-void

    .line 974
    :catch_6
    move-exception v0

    .line 975
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final setCALogger(ZZIZ)V
    .registers 7
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 1090
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCALogger(ZZIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1095
    :goto_5
    return-void

    .line 1092
    :catch_6
    move-exception v0

    .line 1093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final setCAProperty(IID)Z
    .registers 8
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # D

    .prologue
    .line 754
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 755
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 756
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIF)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F

    .prologue
    .line 736
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 737
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 738
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(III)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    .prologue
    .line 700
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 701
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 702
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIJ)Z
    .registers 8
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # J

    .prologue
    .line 718
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 719
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 720
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/lang/String;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 772
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 773
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 774
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/ArrayList;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 917
    .local p3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 918
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayListTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 919
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/HashSet;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 935
    .local p3, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 936
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerHashSetTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 937
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIZ)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .prologue
    .line 682
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 683
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 684
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[B)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [B

    .prologue
    .line 790
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 791
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-static {p3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 793
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[C)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [C

    .prologue
    .line 809
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 810
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getCharArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 811
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[D)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [D

    .prologue
    .line 881
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 882
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 883
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[F)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [F

    .prologue
    .line 863
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 864
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 865
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[I)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [I

    .prologue
    .line 827
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 828
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 829
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[J)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [J

    .prologue
    .line 845
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 846
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 847
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[Ljava/lang/String;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [Ljava/lang/String;

    .prologue
    .line 899
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 900
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 901
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .registers 11
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 1168
    .local p3, "enableService":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "packet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x1

    .line 1170
    .local v3, "result":Z
    if-eqz p3, :cond_1d

    .line 1171
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1172
    .local v1, "i":I
    iget-object v4, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_7

    .line 1177
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    :try_start_1e
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 1178
    iget-object v5, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, p1, p2, v4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForDebugging(II[B)Z

    move-result v3

    .line 1180
    if-nez v3, :cond_3c

    .line 1181
    const-string v4, "CAE"

    const-string/jumbo v5, "setScenarioForDebugging error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3a} :catch_3f

    .line 1182
    const/4 v3, 0x0

    .line 1191
    :cond_3b
    :goto_3b
    return v3

    .line 1177
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1186
    :catch_3f
    move-exception v0

    .line 1187
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 1188
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3b
.end method

.method public final setScenarioForTest(II)Z
    .registers 6
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 1142
    const/4 v1, 0x0

    .line 1144
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForTest(II)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1149
    :goto_7
    return v1

    .line 1146
    :catch_8
    move-exception v0

    .line 1147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public final setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setVersion(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1220
    :goto_5
    return-void

    .line 1217
    :catch_6
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final startAutoTest()V
    .registers 3

    .prologue
    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->startAutoTest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1117
    :goto_5
    return-void

    .line 1114
    :catch_6
    move-exception v0

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final stopAutoTest()V
    .registers 3

    .prologue
    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->stopAutoTest()V

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1129
    :goto_a
    return-void

    .line 1126
    :catch_b
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .prologue
    .line 590
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 591
    .local v1, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 593
    .end local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_14
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 606
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_7

    .line 617
    :cond_6
    :goto_6
    return-void

    .line 611
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_6

    .line 614
    :catch_15
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
