.class public Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityEasyWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static cfmsService:Landroid/os/CustomFrequencyManager;

.field private static mContext:Landroid/content/Context;

.field private static final mHandler:Landroid/os/Handler;

.field private static mStaticBatteryCharging:Z

.field private static mStaticBatteryLevel:I

.field private static sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;


# instance fields
.field private mAssistiveNotification:Landroid/app/Notification;

.field private final mTorchObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 78
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    .line 86
    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$1;

    invoke-direct {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 152
    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$2;-><init>(Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mTorchObserver:Landroid/database/ContentObserver;

    .line 434
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 65
    sput p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    return p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f040002

    const/4 v3, 0x1

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "views":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    const v1, 0x7f100015

    invoke-static {p0, v3}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    invoke-static {v0, p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 184
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 175
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 176
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040001

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 179
    .restart local v0    # "views":Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    .line 430
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->registerBroadcastReceiver()V

    .line 432
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 261
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 423
    .local v0, "result":Z
    :cond_0
    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return v0
.end method

.method private sendWidgetStateUpdateIntent(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    const-string v2, "widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 418
    return-void
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toggleWidgetMode() Static Battery Level : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v8, "prefs"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 336
    .local v7, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "torch_light"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    :try_start_0
    const-string v8, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 340
    .local v3, "level":I
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-lez v3, :cond_4

    .line 342
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v9, "CLOCK_SET_TORCH_LIGHT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v3    # "level":I
    :goto_0
    sget v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    const/4 v9, 0x5

    if-gt v8, v9, :cond_0

    sget-boolean v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    if-nez v8, :cond_0

    .line 351
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    :cond_0
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 358
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v8, :cond_1

    .line 359
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 360
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f0205b6

    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 361
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v8, Landroid/app/Notification;->when:J

    .line 362
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 363
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f0a1124

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 367
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "com.sec.feature.cocktailbar enabled, so removed ticker"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 369
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 373
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "mIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 375
    .local v6, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f0a1124

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0a1125

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 377
    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v5, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 381
    .local v2, "flashNotification":I
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 382
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "key_flash_notitification_eabled"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toggleWidgetMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sendWidgetStateUpdateIntent(Landroid/content/Context;)V

    .line 412
    return-void

    .line 344
    .end local v2    # "flashNotification":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v3    # "level":I
    :cond_4
    :try_start_1
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v9, "CLOCK_SET_TORCH_LIGHT"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 346
    .end local v3    # "level":I
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "could not turn off torch light"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "torch_light"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    :try_start_2
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v9, "CLOCK_SET_TORCH_LIGHT"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 396
    :goto_2
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "toggleWidgetMode() : cancel Timer"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 401
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    const v8, 0x7f0205b6

    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 403
    const-string v8, "key_flash_notitification_eabled"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 405
    .restart local v2    # "flashNotification":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 392
    .end local v2    # "flashNotification":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catch_1
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "could not turn off torch light"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f10001f

    const v7, 0x7f100015

    const/4 v3, 0x0

    .line 210
    const-string v2, ""

    .line 212
    .local v2, "strTalkback":Ljava/lang/String;
    invoke-virtual {p0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    const v3, 0x7f0a14c2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    const v3, 0x7f100016

    const v4, 0x7f02000c

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f026d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "strColor":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 220
    const v3, 0x7f0a1127

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0a1120

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 224
    :goto_0
    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 226
    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v4, "updateButtons , icon_on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/util/UnknownFormatConversionException;
    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-virtual {v0}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/util/UnknownFormatConversionException;
    .end local v1    # "strColor":Ljava/lang/String;
    :cond_0
    const v3, 0x7f100016

    const v4, 0x7f02000b

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f026e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "strColor":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 231
    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v4, "updateButtons , icon_off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const v3, 0x7f0a1128

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0a1120

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 237
    :goto_2
    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/util/UnknownFormatConversionException;
    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-virtual {v0}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 196
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 197
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 199
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 137
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :try_start_0
    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    if-eqz v2, :cond_0

    .line 141
    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v3, "CLOCK_SET_TORCH_LIGHT"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 143
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 144
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const v2, 0x7f0205b6

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sendWidgetStateUpdateIntent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 127
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->unregisterBroadcastReceiver()V

    .line 129
    sput-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mTorchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 132
    sput-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sput-object p1, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 119
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_light"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mTorchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    const-string v0, "CustomFrequencyManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    .line 123
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f0a1124

    const v9, 0x7f0205b6

    const/4 v10, 0x0

    .line 272
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    sget-object v7, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v7, :cond_0

    .line 276
    const-string v7, "CustomFrequencyManagerService"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CustomFrequencyManager;

    sput-object v7, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->cfmsService:Landroid/os/CustomFrequencyManager;

    .line 279
    :cond_0
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 281
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "buttonId":I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 283
    const-string v7, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v8, "BUTTON_CENTER : "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->toggleWidgetMode(Landroid/content/Context;)V

    .line 327
    :cond_1
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 328
    .end local v1    # "buttonId":I
    .end local v2    # "data":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 287
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 289
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 290
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 292
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v7, :cond_4

    .line 293
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 294
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v9, v7, Landroid/app/Notification;->icon:I

    .line 295
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 296
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 297
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 300
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "mIntent":Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 302
    .local v5, "pi":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a1125

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, p1, v8, v9, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 304
    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v4, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    .end local v3    # "mIntent":Landroid/content/Intent;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "pi":Landroid/app/PendingIntent;
    :cond_5
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 308
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 309
    :cond_6
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 310
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 311
    const-string v7, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v8, "get android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_7
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    const-string v7, "quicktool"

    const-string v8, "from"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 314
    const-string v7, "value"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 315
    .local v6, "value":Z
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 317
    .end local v6    # "value":Z
    :cond_8
    const-string v7, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v8, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 107
    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 110
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 111
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
