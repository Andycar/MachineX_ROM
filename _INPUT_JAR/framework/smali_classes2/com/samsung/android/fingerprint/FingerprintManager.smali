.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final BUNDLE_ENABLE_PASSWORD:Ljava/lang/String; = "password"

.field public static final BUNDLE_PRIMARY_AUTHORIZATION:Ljava/lang/String; = "primary_authorization"

.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SENSOR_TYPE_SWIPE:I = 0x1

.field public static final SENSOR_TYPE_TOUCH:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field public static final USE_LAST_QUALITY_FEEDBACK:I = -0x1

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mIsLinkedDeathRecipient:Z

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static mWaitLock:Ljava/lang/Object;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsServiceBind:Z

.field private mOwnName:Ljava/lang/String;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 168
    sput-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    .line 173
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 174
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 176
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 177
    sput v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 180
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 183
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 192
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-void

    :cond_30
    move v0, v2

    .line 56
    goto :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    .line 175
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 837
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1400
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$4;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 54
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/fingerprint/FingerprintManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    return p1
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method private addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1101
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1103
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1104
    const-string v2, "addPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1114
    :goto_10
    return v1

    .line 1109
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1110
    :catch_18
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "addPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 507
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 508
    const-string v2, "attachClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 518
    :goto_f
    return-object v1

    .line 513
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 514
    :catch_17
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "attachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private bindFingerprintManagerService()V
    .registers 6

    .prologue
    .line 347
    const-string v2, "FingerprintManager"

    const-string v3, "bindFingerprintManagerService: called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v2, :cond_12

    .line 349
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 364
    :cond_12
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    const-string v2, "com.samsung.android.fingerprint.action.START_BIND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const/4 v0, 0x1

    .line 369
    .local v0, "bindFlag":I
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 370
    or-int/lit8 v0, v0, 0x2

    .line 372
    :cond_2f
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 373
    const-string v2, "FingerprintManager"

    const-string v3, "bindFingerprintManagerService: OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_40
    return-void
.end method

.method private detachClient(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 525
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 526
    const-string v2, "detachClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 536
    :goto_10
    return v1

    .line 531
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->detachClient(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 532
    :catch_18
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "detachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static declared-synchronized ensureServiceConnected()V
    .registers 8

    .prologue
    .line 297
    const-class v5, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v5

    const/4 v2, 0x0

    .line 299
    .local v2, "isStartedServiceInTime":Z
    :try_start_4
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_14

    .line 300
    const-string v4, "fingerprint_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 303
    :cond_14
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_5a

    .line 304
    const-string v4, "FingerprintManager"

    const-string v6, "ensureServiceConnected: mService is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 306
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v2

    .line 307
    if-eqz v2, :cond_3b

    sget-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_57

    if-nez v4, :cond_3b

    .line 309
    :try_start_2c
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 310
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_3d
    .catchall {:try_start_2c .. :try_end_3b} :catchall_57

    .line 344
    :cond_3b
    :goto_3b
    monitor-exit v5

    return-void

    .line 312
    :catch_3d
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v4, "FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureServiceConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_57

    goto :goto_3b

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_57
    move-exception v4

    monitor-exit v5

    throw v4

    .line 317
    :cond_5a
    :try_start_5a
    const-string v4, "FingerprintManager"

    const-string v6, "ensureServiceConnected: mService is not null, Check status....."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_57

    .line 319
    :try_start_61
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 320
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v3

    .line 321
    .local v3, "ret":Z
    const-string v4, "FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureServiceConnected: unlinkToDeath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_92} :catch_93
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_92} :catch_e8
    .catchall {:try_start_61 .. :try_end_92} :catchall_57

    goto :goto_3b

    .line 322
    .end local v3    # "ret":Z
    :catch_93
    move-exception v0

    .line 323
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_94
    instance-of v4, v0, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_df

    .line 324
    const-string v4, "FingerprintManager"

    const-string v6, "===DeadObjectException==="

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 326
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->waitForService()Z

    move-result v2

    .line 327
    if-eqz v2, :cond_3b

    sget-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_57

    if-nez v4, :cond_3b

    .line 329
    :try_start_ac
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 330
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 331
    const-string v4, "FingerprintManager"

    const-string v6, "ensureServiceConnected: linkToDeath"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_c2} :catch_c4
    .catchall {:try_start_ac .. :try_end_c2} :catchall_57

    goto/16 :goto_3b

    .line 332
    :catch_c4
    move-exception v1

    .line 333
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_c5
    const-string v4, "FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureServiceConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 337
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_df
    const-string v4, "FingerprintManager"

    const-string v6, "ensureServiceConnected"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_e8
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FingerprintManager"

    const-string v6, "ensureServiceConnected"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_c5 .. :try_end_f0} :catchall_57

    goto/16 :goto_3b
.end method

.method private finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 563
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 564
    const-string v2, "finishIdentify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 574
    :goto_10
    return v1

    .line 569
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 570
    :catch_18
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "finishIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 965
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 967
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 968
    const-string v2, "getEnrolledPermissions"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 978
    :goto_f
    return-object v1

    .line 973
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 974
    :catch_17
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method private getEnrolledUserCount()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 999
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1001
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1002
    const-string v2, "getEnrolledUserCount"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1012
    :goto_10
    return v1

    .line 1007
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUserCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1008
    :catch_18
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUserCount"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method private getEnrolledUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 982
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 984
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 985
    const-string v2, "getEnrolledUsers"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 995
    :goto_f
    return-object v1

    .line 990
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUsers()Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 991
    :catch_17
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUsers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 10
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1821
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1822
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1823
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1824
    .local v4, "result":I
    const/4 v1, 0x0

    .line 1827
    .local v1, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_7
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_c} :catch_18

    move-result-object v3

    .line 1832
    :goto_d
    if-nez v3, :cond_24

    .line 1833
    const-string v5, "FingerprintManager"

    const-string v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v5, 0x0

    .line 1912
    :goto_17
    return-object v5

    .line 1828
    :catch_18
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FingerprintManager"

    const-string v6, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 1837
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_24
    const/4 v5, -0x1

    if-ne p0, v5, :cond_31

    .line 1839
    :try_start_27
    sget-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_50

    move-result p0

    .line 1844
    :cond_31
    :goto_31
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ce

    .line 1845
    sparse-switch p0, :sswitch_data_126

    .line 1878
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1909
    :cond_46
    :goto_46
    if-eqz v4, :cond_4e

    .line 1910
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4e
    move-object v5, v1

    .line 1912
    goto :goto_17

    .line 1840
    :catch_50
    move-exception v0

    .line 1841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_31

    .line 1847
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_55
    const-string/jumbo v5, "spass_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1848
    goto :goto_46

    .line 1850
    :sswitch_61
    const-string/jumbo v5, "spass_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1851
    goto :goto_46

    .line 1854
    :sswitch_6d
    const-string/jumbo v5, "spass_errimage_speed"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1855
    goto :goto_46

    .line 1857
    :sswitch_79
    const-string/jumbo v5, "spass_errimage_reverse"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1858
    goto :goto_46

    .line 1860
    :sswitch_85
    const-string/jumbo v5, "spass_errimage_left"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1861
    goto :goto_46

    .line 1863
    :sswitch_91
    const-string/jumbo v5, "spass_errimage_right"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1864
    goto :goto_46

    .line 1866
    :sswitch_9d
    const-string/jumbo v5, "spass_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1867
    goto :goto_46

    .line 1869
    :sswitch_a9
    const-string/jumbo v5, "spass_errimage_diagonal"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1870
    goto :goto_46

    .line 1872
    :sswitch_b5
    const-string/jumbo v5, "spass_errimage_homekey"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1873
    goto :goto_46

    .line 1875
    :sswitch_c1
    const-string/jumbo v5, "spass_errimage_same"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1876
    goto/16 :goto_46

    .line 1881
    :cond_ce
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 1882
    sparse-switch p0, :sswitch_data_154

    .line 1905
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_46

    .line 1884
    :sswitch_e5
    const-string/jumbo v5, "spass_touch_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1885
    goto/16 :goto_46

    .line 1889
    :sswitch_f2
    const-string/jumbo v5, "spass_touch_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1890
    goto/16 :goto_46

    .line 1893
    :sswitch_ff
    const-string/jumbo v5, "spass_touch_errimage_whole"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1894
    goto/16 :goto_46

    .line 1897
    :sswitch_10c
    const-string/jumbo v5, "spass_touch_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1898
    goto/16 :goto_46

    .line 1901
    :sswitch_119
    const-string/jumbo v5, "spass_touch_errimage_position"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1902
    goto/16 :goto_46

    .line 1845
    :sswitch_data_126
    .sparse-switch
        0x0 -> :sswitch_55
        0x2 -> :sswitch_6d
        0x3 -> :sswitch_79
        0x4 -> :sswitch_61
        0x10 -> :sswitch_6d
        0x200 -> :sswitch_b5
        0x8000 -> :sswitch_a9
        0x20000 -> :sswitch_85
        0x40000 -> :sswitch_91
        0x1000000 -> :sswitch_9d
        0x30000000 -> :sswitch_c1
    .end sparse-switch

    .line 1882
    :sswitch_data_154
    .sparse-switch
        0x0 -> :sswitch_e5
        0x10000 -> :sswitch_f2
        0x80000 -> :sswitch_f2
        0x1000000 -> :sswitch_10c
        0x30000000 -> :sswitch_119
        0x60000000 -> :sswitch_ff
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_3a

    .line 1782
    :goto_4
    return v0

    .line 1738
    :sswitch_5
    const v0, 0x10407f3

    .line 1739
    goto :goto_4

    .line 1743
    :sswitch_9
    const v0, 0x10407f6

    .line 1744
    goto :goto_4

    .line 1746
    :sswitch_d
    const v0, 0x10407f7

    .line 1747
    goto :goto_4

    .line 1749
    :sswitch_11
    const v0, 0x10407f8

    .line 1750
    goto :goto_4

    .line 1752
    :sswitch_15
    const v0, 0x10407f9

    .line 1753
    goto :goto_4

    .line 1755
    :sswitch_19
    const v0, 0x10407fa

    .line 1756
    goto :goto_4

    .line 1758
    :sswitch_1d
    const v0, 0x10407fb

    .line 1759
    goto :goto_4

    .line 1761
    :sswitch_21
    const v0, 0x10407fc

    .line 1762
    goto :goto_4

    .line 1764
    :sswitch_25
    const v0, 0x10407fd

    .line 1765
    goto :goto_4

    .line 1767
    :sswitch_29
    const v0, 0x10407fe

    .line 1768
    goto :goto_4

    .line 1770
    :sswitch_2d
    const v0, 0x10407ff

    .line 1771
    goto :goto_4

    .line 1774
    :sswitch_31
    const v0, 0x1040800

    .line 1775
    goto :goto_4

    .line 1777
    :sswitch_35
    const v0, 0x1040806

    .line 1778
    goto :goto_4

    .line 1736
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_21
        0x2 -> :sswitch_11
        0x3 -> :sswitch_31
        0x4 -> :sswitch_9
        0x10 -> :sswitch_d
        0x200 -> :sswitch_35
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_31
        0x10000 -> :sswitch_29
        0x20000 -> :sswitch_15
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_25
        0x1000000 -> :sswitch_2d
        0x2000000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_28

    .line 1814
    const v0, 0x1080393

    .line 1817
    :goto_7
    return v0

    .line 1789
    :sswitch_8
    const v0, 0x1080396

    .line 1790
    goto :goto_7

    .line 1792
    :sswitch_c
    const v0, 0x1080397

    .line 1793
    goto :goto_7

    .line 1796
    :sswitch_10
    const v0, 0x108039a

    .line 1797
    goto :goto_7

    .line 1799
    :sswitch_14
    const v0, 0x1080398

    .line 1800
    goto :goto_7

    .line 1802
    :sswitch_18
    const v0, 0x1080399

    .line 1803
    goto :goto_7

    .line 1805
    :sswitch_1c
    const v0, 0x108039b

    .line 1806
    goto :goto_7

    .line 1808
    :sswitch_20
    const v0, 0x1080394

    .line 1809
    goto :goto_7

    .line 1811
    :sswitch_24
    const v0, 0x1080395

    .line 1812
    goto :goto_7

    .line 1787
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_8
        0x2 -> :sswitch_10
        0x4 -> :sswitch_c
        0x10 -> :sswitch_10
        0x200 -> :sswitch_24
        0x8000 -> :sswitch_20
        0x20000 -> :sswitch_14
        0x40000 -> :sswitch_18
        0x1000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    .line 203
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    .line 208
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorType()I
    .registers 2

    .prologue
    .line 1135
    const-string v0, ""

    const-string/jumbo v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1136
    const/4 v0, 0x2

    .line 1138
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1016
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1018
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1019
    const-string v2, "isEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1029
    :goto_10
    return v1

    .line 1024
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1025
    :catch_18
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isEnrolledPermission"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1238
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 1248
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 1249
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_25

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1253
    :goto_24
    return-void

    .line 1249
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1251
    :cond_39
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5a

    const-string v0, ""

    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "extraInfo2"    # Ljava/lang/String;

    .prologue
    .line 1256
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_3d

    .line 1257
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_25

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    :goto_24
    return-void

    .line 1257
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1259
    :cond_3d
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5e

    const-string v0, ""

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method private notifyAuthSessionBegin()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1602
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1604
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1605
    const-string v2, "notifyAuthSessionBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1614
    :goto_10
    return v1

    .line 1610
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionBegin()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1611
    :catch_18
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "notifyAuthSessionBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method private notifyAuthSessionEnd()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1618
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1620
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1621
    const-string v2, "notifyAuthSessionEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1630
    :goto_10
    return v1

    .line 1626
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionEnd()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1627
    :catch_18
    move-exception v0

    .line 1628
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "notifyAuthSessionEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method private reEnroll(Landroid/os/IBinder;I)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 424
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 426
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 427
    const-string/jumbo v2, "reenroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 437
    :goto_11
    return v1

    .line 432
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->reEnroll(Landroid/os/IBinder;I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 433
    :catch_19
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reenroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private registerActivityLifeCallback()V
    .registers 3

    .prologue
    .line 902
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_13

    .line 903
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 906
    :cond_13
    return-void
.end method

.method private removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1052
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1053
    const-string/jumbo v2, "removeEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1063
    :goto_11
    return v1

    .line 1058
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1059
    :catch_19
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1033
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1035
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1036
    const-string/jumbo v2, "removeEnrolledPermissions"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1046
    :goto_11
    return v1

    .line 1041
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1042
    :catch_19
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method private secondaryEnroll(Landroid/os/IBinder;I)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 441
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 443
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 444
    const-string/jumbo v2, "secondaryEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 454
    :goto_11
    return v1

    .line 449
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->secondaryEnroll(Landroid/os/IBinder;I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 450
    :catch_19
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "secondaryEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private setOwnName(Ljava/lang/String;)V
    .registers 5
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1916
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 1919
    return-void
.end method

.method private static startFingerprintManagerService()V
    .registers 5

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v2, "com.samsung.android.fingerprint.action.START_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    sget-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v2, :cond_32

    .line 260
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_32
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 266
    :goto_39
    return-void

    .line 263
    :catch_3a
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private unBindFingerprintManagerService()V
    .registers 4

    .prologue
    .line 379
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "unBindFingerprintManagerService: called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_8
    iget-boolean v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsServiceBind:Z

    if-eqz v1, :cond_13

    .line 382
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 387
    :cond_13
    :goto_13
    return-void

    .line 384
    :catch_14
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unBindFingerprintManagerService"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private unregisterActivityLifeCallback()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 909
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_18

    .line 910
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 912
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 913
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 915
    :cond_18
    return-void
.end method

.method private static waitForService()Z
    .registers 6

    .prologue
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long v0, v2, v4

    .line 232
    .local v0, "endMillis":J
    const-string v2, "FingerprintManager"

    const-string/jumbo v3, "waitForService: called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_10
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_13
    const-string v2, "fingerprint_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 236
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_2e

    .line 237
    const-string v2, "FingerprintManager"

    const-string/jumbo v4, "waitForService: FPMS started"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v2, 0x1

    monitor-exit v3

    .line 242
    :goto_2d
    return v2

    .line 240
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-ltz v2, :cond_44

    .line 241
    const-string v2, "FingerprintManager"

    const-string/jumbo v4, "waitForService: Timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_2d

    .line 249
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_41

    throw v2

    .line 245
    :cond_44
    :try_start_44
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4d
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    .line 249
    :goto_4b
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_41

    goto :goto_10

    .line 246
    :catch_4d
    move-exception v2

    goto :goto_4b
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 270
    const-string v0, "FingerprintManager"

    const-string v1, "binderDied called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIsLinkedDeathRecipient:Z

    .line 273
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz v0, :cond_26

    .line 274
    const-string v0, "FingerprintManager"

    const-string v1, "binderDied: Client is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    .line 276
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_26
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 392
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 393
    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 403
    :cond_10
    :goto_10
    return v1

    .line 398
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1b

    move-result v2

    if-nez v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    .line 399
    :catch_1b
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1213
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1215
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1216
    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1226
    :goto_10
    return v1

    .line 1221
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1222
    :catch_18
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 407
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 409
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 410
    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 420
    :goto_10
    return v1

    .line 415
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 416
    :catch_18
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 458
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 460
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 461
    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 471
    :goto_10
    return v1

    .line 466
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 467
    :catch_18
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getEnrollFinishResult()I
    .registers 2

    .prologue
    .line 1358
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    return v0
.end method

.method public getEnrollRepeatCount()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1995
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1997
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1998
    const-string v2, "getFingerprintId"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2008
    :goto_10
    return v1

    .line 2003
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrollRepeatCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 2004
    :catch_18
    move-exception v0

    .line 2005
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getEnrolledFingers()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 948
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 950
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 951
    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 961
    :goto_10
    return v1

    .line 956
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_10

    .line 957
    :catch_1a
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getFingerprintId(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1978
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1980
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1981
    const-string v2, "getFingerprintId"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1991
    :goto_f
    return-object v1

    .line 1986
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIdByFinger(ILjava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_f

    .line 1987
    :catch_19
    move-exception v0

    .line 1988
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintId"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getFingerprintIds()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1961
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1963
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1964
    const-string v2, "getFingerprintIds"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1974
    :goto_f
    return-object v1

    .line 1969
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getFingerprintIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_f

    .line 1970
    :catch_19
    move-exception v0

    .line 1971
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getFingerprintIds"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getIndexName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1700
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1701
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1702
    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1710
    :goto_f
    return-object v1

    .line 1706
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1707
    :catch_17
    move-exception v0

    .line 1708
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, "imageId":I
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_f

    .line 737
    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 738
    const/4 v2, 0x0

    .line 750
    :goto_e
    return v2

    .line 740
    :cond_f
    if-nez p1, :cond_19

    .line 741
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    :cond_19
    :try_start_19
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_41

    move-result v1

    .line 749
    :goto_27
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 750
    goto :goto_e

    .line 746
    :catch_41
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 718
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_d

    .line 719
    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 730
    :cond_c
    :goto_c
    return-object v1

    .line 722
    :cond_d
    if-eqz p1, :cond_c

    .line 726
    :try_start_f
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_c

    .line 727
    :catch_1a
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public getSensorServiceVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1177
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1179
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_12

    .line 1180
    const-string v1, "getSensorServiceVersion"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1181
    const-string v1, ""

    .line 1190
    :goto_11
    return-object v1

    .line 1185
    :cond_12
    :try_start_12
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorServiceVersion()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_11

    .line 1186
    :catch_19
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getSensorServiceVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1190
    const-string v1, ""

    goto :goto_11
.end method

.method public getVersion()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1143
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1145
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1146
    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1156
    :goto_10
    return v1

    .line 1151
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1152
    :catch_18
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public hasPendingCommand()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1118
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1120
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1121
    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1131
    :goto_10
    return v1

    .line 1126
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1127
    :catch_18
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 612
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 614
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 615
    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 625
    :goto_10
    return v1

    .line 620
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 621
    :catch_18
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 646
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 648
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 649
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 659
    :goto_10
    return v1

    .line 654
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 655
    :catch_18
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 629
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 631
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 632
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 642
    :goto_10
    return v1

    .line 637
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_10

    .line 638
    :catch_19
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 578
    const/4 v2, -0x1

    .line 579
    .local v2, "retVal":I
    if-nez p1, :cond_d

    .line 580
    const-string v4, "identifyWithDialog"

    const-string v5, "Context is null"

    invoke-direct {p0, v4, v6, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 608
    :goto_c
    return v3

    .line 583
    :cond_d
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 584
    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v4, :cond_1c

    .line 585
    const-string v4, "identifyWithDialog"

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v4, v6, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_c

    .line 588
    :cond_1c
    const/4 v0, 0x0

    .line 589
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_4d

    .line 590
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v3, p1

    .line 591
    check-cast v3, Landroid/app/Activity;

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v3, p1

    .line 592
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 593
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v3, p1

    .line 594
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 600
    :goto_3c
    :try_start_3c
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Landroid/content/ComponentName;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v2

    .line 601
    if-eqz v2, :cond_4b

    .line 602
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_52

    :cond_4b
    :goto_4b
    move v3, v2

    .line 608
    goto :goto_c

    .line 596
    :cond_4d
    sput-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 597
    sput-object v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_3c

    .line 604
    :catch_52
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 606
    const-string v3, "identifyWithDialog"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4b
.end method

.method public isEnrolling()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1685
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1686
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1687
    const-string v2, "isEnrolling"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1694
    :goto_10
    return v1

    .line 1691
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrollSession()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1692
    :catch_18
    move-exception v0

    .line 1693
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintManager"

    const-string v3, "isEnrolling: failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public isSensorReady()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1553
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1555
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1556
    const-string v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1566
    :goto_10
    return v1

    .line 1561
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1562
    :catch_18
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public isSupportFingerprintIds()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1161
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1163
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1164
    const-string v2, "isSupportFingerprintIds"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1173
    :goto_10
    return v1

    .line 1169
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSupportFingerprintIds()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1170
    :catch_18
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSupportFingerprintIds"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public isVZWPermissionGranted()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1948
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v2, :cond_d

    .line 1950
    :try_start_5
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isVZWPermissionGranted(Ljava/lang/String;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    move-result v1

    .line 1956
    :cond_d
    :goto_d
    return v1

    .line 1951
    :catch_e
    move-exception v0

    .line 1952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public notifyAlternativePasswordBegin()V
    .registers 5

    .prologue
    .line 1634
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1636
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_f

    .line 1637
    const-string v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1641
    :cond_f
    :try_start_f
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15

    .line 1645
    :goto_14
    return-void

    .line 1642
    :catch_15
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    .line 888
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 889
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_10

    .line 890
    const-string v1, "notifyAppActivityState"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 899
    :goto_f
    return-void

    .line 894
    :cond_10
    :try_start_10
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_f

    .line 896
    :catch_16
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public notifyEnrollBegin()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1570
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1572
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1573
    const-string v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1582
    :goto_10
    return v1

    .line 1578
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1579
    :catch_18
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public notifyEnrollEnd()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1586
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1588
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1589
    const-string v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1598
    :goto_10
    return v1

    .line 1594
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1595
    :catch_18
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1195
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1197
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1198
    const-string v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1208
    :goto_10
    return v1

    .line 1203
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1204
    :catch_18
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 754
    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "processFIDO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    .line 758
    .local v1, "responseData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_18

    .line 759
    const-string/jumbo v3, "processFIDO"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v5, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 778
    .end local v1    # "responseData":[B
    .local v2, "responseData":[B
    :goto_17
    return-object v2

    .line 764
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_18
    if-eqz p4, :cond_1f

    :try_start_1a
    array-length v3, p4

    if-eqz v3, :cond_1f

    if-nez p1, :cond_21

    :cond_1f
    move-object v2, v1

    .line 765
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_17

    .line 768
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_21
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2a

    move-result-object v1

    :cond_28
    :goto_28
    move-object v2, v1

    .line 778
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_17

    .line 769
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :catch_2a
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 772
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_28

    .line 773
    const-string/jumbo v4, "processFIDO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", requestData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_71

    const-string v3, "NULL"

    :goto_65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_28

    :cond_71
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_65
.end method

.method public protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "unprotectedData"    # [B

    .prologue
    .line 664
    const/4 v1, 0x0

    .line 666
    .local v1, "protectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_10

    .line 667
    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 686
    .end local v1    # "protectedData":[B
    .local v2, "protectedData":[B
    :goto_f
    return-object v2

    .line 672
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_10
    if-eqz p3, :cond_15

    :try_start_12
    array-length v3, p3

    if-nez v3, :cond_17

    :cond_15
    move-object v2, v1

    .line 673
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_f

    .line 676
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_17
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    move-result-object v1

    :cond_1d
    :goto_1d
    move-object v2, v1

    .line 686
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_f

    .line 677
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :catch_1f
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "protect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 680
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_1d

    .line 681
    const-string/jumbo v4, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unprotectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_67

    const-string v3, ""

    :goto_5b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1d

    :cond_67
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5b
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 9
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 477
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_12

    .line 478
    const-string/jumbo v3, "registerClient"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v1, v2

    .line 496
    :cond_11
    :goto_11
    return-object v1

    .line 481
    :cond_12
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 482
    const-string/jumbo v3, "securityLevel"

    sget v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string/jumbo v3, "packageName"

    sget-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :try_start_28
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1

    .line 487
    .local v1, "retBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_11

    .line 488
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->bindFingerprintManagerService()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_35} :catch_36

    goto :goto_11

    .line 492
    .end local v1    # "retBinder":Landroid/os/IBinder;
    :catch_36
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "registerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientSpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v1, v2

    .line 496
    goto :goto_11
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public removeAllEnrolledFingers()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1084
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1086
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1087
    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1097
    :goto_11
    return v1

    .line 1092
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1093
    :catch_1b
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public removeEnrolledFinger(I)Z
    .registers 7
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1067
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1069
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1070
    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1080
    :goto_11
    return v1

    .line 1075
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1076
    :catch_1b
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public setEnrollFinishResult(I)V
    .registers 2
    .param p1, "set"    # I

    .prologue
    .line 1352
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 1353
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .registers 8
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1714
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1716
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1717
    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1727
    :cond_11
    :goto_11
    return v1

    .line 1721
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_11

    .line 1722
    :cond_1e
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_11

    .line 1724
    :catch_25
    move-exception v0

    .line 1725
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public setPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1668
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1670
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1671
    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1680
    :goto_11
    return v1

    .line 1676
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1677
    :catch_1b
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v2, 0x0

    .line 919
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 920
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_11

    .line 921
    const-string/jumbo v3, "showIdentifyDialog"

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 944
    :goto_10
    return-object v2

    .line 924
    :cond_11
    const/4 v0, 0x0

    .line 925
    .local v0, "comName":Landroid/content/ComponentName;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_50

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    move-object v2, p1

    .line 927
    check-cast v2, Landroid/app/Activity;

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v2, p1

    .line 928
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    move-object v2, p1

    .line 930
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 935
    :goto_31
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 937
    :try_start_3c
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Landroid/content/ComponentName;Ljava/lang/String;Z)I

    move-result v2

    if-eqz v2, :cond_4d

    .line 938
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_55

    .line 944
    :cond_4d
    :goto_4d
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    goto :goto_10

    .line 932
    :cond_50
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 933
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_31

    .line 940
    :catch_55
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 942
    const-string/jumbo v2, "showIdentifyDialog"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4d
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .registers 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1463
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1467
    const/4 v0, 0x0

    .line 1468
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_d

    .line 1469
    const-string v2, "FingerprintManager"

    const-string v3, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :goto_c
    return v1

    .line 1472
    :cond_d
    if-nez p2, :cond_17

    .line 1473
    const-string v2, "FingerprintManager"

    const-string v3, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1476
    :cond_17
    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 1477
    :cond_1f
    const-string v2, "FingerprintManager"

    const-string v3, "Id parameter is needed. Please give a correct id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1481
    :cond_27
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1482
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1483
    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 1485
    sput p4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1487
    const-string v1, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ownName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    .line 1492
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1493
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1494
    const-string/jumbo v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1496
    const-string/jumbo v1, "ownName"

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_98

    .line 1499
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/fingerprint/FingerprintManager$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$5;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    invoke-virtual {p0, v1, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move v1, v2

    .line 1544
    goto/16 :goto_c

    .line 1547
    :cond_98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v1, v2

    .line 1548
    goto/16 :goto_c
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1448
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1449
    .local v0, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1450
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1453
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1454
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_33

    .line 1456
    const-string/jumbo v3, "ownName"

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    :cond_33
    const-string v3, "index"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1460
    return-void
.end method

.method public unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "protectedData"    # [B

    .prologue
    .line 691
    const/4 v1, 0x0

    .line 693
    .local v1, "unprotectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_10

    .line 694
    const-string/jumbo v3, "unprotect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 713
    .end local v1    # "unprotectedData":[B
    .local v2, "unprotectedData":[B
    :goto_f
    return-object v2

    .line 699
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_10
    if-eqz p3, :cond_15

    :try_start_12
    array-length v3, p3

    if-nez v3, :cond_17

    :cond_15
    move-object v2, v1

    .line 700
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_f

    .line 703
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_17
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    move-result-object v1

    :cond_1d
    :goto_1d
    move-object v2, v1

    .line 713
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_f

    .line 704
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :catch_1f
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unprotect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 707
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_1d

    .line 708
    const-string/jumbo v4, "unprotect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", protectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_66

    const-string v3, "NULL"

    :goto_5a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1d

    :cond_66
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5a
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 540
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 542
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 543
    const-string/jumbo v2, "unregisterClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 556
    :cond_11
    :goto_11
    return v1

    .line 546
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unBindFingerprintManagerService()V

    .line 548
    :try_start_15
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 549
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_22

    .line 550
    const/4 v1, 0x1

    goto :goto_11

    .line 552
    :catch_22
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1648
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1650
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1651
    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1660
    :goto_11
    return v1

    .line 1656
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1657
    :catch_1b
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1664
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
