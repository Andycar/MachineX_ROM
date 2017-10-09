.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms.service"

    const-string v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 54
    const-string v0, "content://sms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://mms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "content://sms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 68
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    new-instance v0, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 111
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 112
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MmsServiceBroker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p1, "x1"    # Lcom/android/internal/telephony/IMms;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MmsServiceBroker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->enforceCarrierPrivilege()V

    return-void
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private enforceCarrierPrivilege()V
    .registers 8

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "packages":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    .line 211
    .local v4, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    .line 213
    return-void

    .line 210
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 216
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_22
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No carrier privilege"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private ensureService()V
    .registers 11

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-nez v1, :cond_53

    .line 147
    const-string v1, "MmsServiceBroker"

    const-string v6, "MmsService not connected. Try connecting..."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3a

    move-result-wide v6

    const-wide/16 v8, 0xfa0

    add-long v2, v6, v8

    .line 152
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0xfa0

    .line 153
    .local v4, "waitTime":J
    :goto_22
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_44

    .line 156
    :try_start_28
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_31
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 160
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_3d

    .line 162
    monitor-exit p0

    .line 172
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :goto_30
    return-void

    .line 157
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :catch_31
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmsServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 171
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :catchall_3a
    move-exception v1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw v1

    .line 165
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_22

    .line 168
    :cond_44
    const-string v1, "MmsServiceBroker"

    const-string v6, "Can not connect to MmsService (timed out)"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v6, "Timed out in connecting to MmsService"

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_3a

    goto :goto_30
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 185
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 192
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 194
    :cond_c
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->ensureService()V

    .line 180
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 202
    :cond_11
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private tryConnecting()V
    .registers 6

    .prologue
    .line 125
    const-string v2, "MmsServiceBroker"

    const-string v3, "Connecting to MmsService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-enter p0

    .line 127
    :try_start_8
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v2, :cond_15

    .line 128
    const-string v2, "MmsServiceBroker"

    const-string v3, "Already connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit p0

    .line 141
    :goto_14
    return-void

    .line 131
    :cond_15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_33

    .line 134
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 135
    const-string v2, "MmsServiceBroker"

    const-string v3, "Failed to bind to MmsService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_31} :catch_36
    .catchall {:try_start_1f .. :try_end_31} :catchall_33

    .line 140
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit p0

    goto :goto_14

    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_33
    move-exception v2

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_33

    throw v2

    .line 137
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_37
    const-string v2, "MmsServiceBroker"

    const-string v3, "Forbidden to bind to MmsService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_33

    goto :goto_31
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .prologue
    .line 117
    const-string v0, "imms"

    new-instance v1, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MmsServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 118
    return-void
.end method

.method public systemRunning()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    .line 122
    return-void
.end method
