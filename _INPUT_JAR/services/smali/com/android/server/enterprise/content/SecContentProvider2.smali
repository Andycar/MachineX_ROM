.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 121
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 122
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2335
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2341
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 2299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2301
    .local v1, "callingUid":I
    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_6c

    .line 2329
    :cond_e
    :goto_e
    :pswitch_e
    return-object v5

    .line 2303
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_e

    .line 2306
    :pswitch_1b
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2308
    .local v2, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v2, :cond_e

    .line 2309
    const-string v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2310
    .local v0, "api":Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string/jumbo v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2311
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    goto :goto_e

    .line 2317
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2318
    const-string v3, "SecContentProvider2"

    const-string v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2323
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2324
    const-string v3, "SecContentProvider2"

    const-string v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2301
    :pswitch_data_6c
    .packed-switch 0xc
        :pswitch_1b
        :pswitch_e
        :pswitch_46
        :pswitch_59
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 69
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 154
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    .line 157
    .local v61, "userId":I
    const/16 v26, 0x0

    .line 162
    .local v26, "knoxCustomService":Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    const/16 v41, 0x0

    .line 164
    .local v41, "mCursor":Landroid/database/MatrixCursor;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCursor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_21c8

    .line 2293
    :cond_5e
    :goto_5e
    :pswitch_5e
    const/4 v5, 0x0

    :goto_5f
    return-object v5

    .line 169
    :pswitch_60
    const-string/jumbo v5, "phone_restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 171
    .local v37, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-eqz v37, :cond_5e

    .line 172
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_21f4

    :cond_73
    :goto_73
    packed-switch v5, :pswitch_data_2236

    .line 372
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v5, 0x0

    goto :goto_5f

    .line 172
    :sswitch_80
    const-string v6, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x0

    goto :goto_73

    :sswitch_8c
    const-string v6, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x1

    goto :goto_73

    :sswitch_98
    const-string v6, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x2

    goto :goto_73

    :sswitch_a4
    const-string v6, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x3

    goto :goto_73

    :sswitch_b0
    const-string v6, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x4

    goto :goto_73

    :sswitch_bc
    const-string v6, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x5

    goto :goto_73

    :sswitch_c8
    const-string v6, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x6

    goto :goto_73

    :sswitch_d4
    const-string v6, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x7

    goto :goto_73

    :sswitch_e0
    const-string v6, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0x8

    goto :goto_73

    :sswitch_ed
    const-string v6, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0x9

    goto/16 :goto_73

    :sswitch_fb
    const-string v6, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xa

    goto/16 :goto_73

    :sswitch_109
    const-string v6, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xb

    goto/16 :goto_73

    :sswitch_117
    const-string v6, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xc

    goto/16 :goto_73

    :sswitch_125
    const-string v6, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xd

    goto/16 :goto_73

    :sswitch_133
    const-string v6, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xe

    goto/16 :goto_73

    :sswitch_141
    const-string v6, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0xf

    goto/16 :goto_73

    .line 174
    :pswitch_14f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 175
    .local v54, "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCopyContactToSimAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 180
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_192
    move-object/from16 v5, v41

    .line 376
    goto/16 :goto_5f

    .line 186
    .end local v54    # "result":Z
    :pswitch_196
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 189
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isBlockSmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_192

    .line 198
    .end local v54    # "result":Z
    :pswitch_1c0
    const/4 v12, 0x0

    .line 199
    .local v12, "arg":Z
    if-eqz p4, :cond_1d0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1d0

    .line 200
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 202
    :cond_1d0
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v54

    .line 205
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkEnableUseOfPacketData"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_192

    .line 214
    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_1f5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 217
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isBlockMmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 226
    .end local v54    # "result":Z
    :pswitch_220
    if-eqz p4, :cond_228

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_22b

    .line 227
    :cond_228
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 229
    :cond_22b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v54

    .line 232
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingSms"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 235
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 241
    .end local v54    # "result":Z
    :pswitch_254
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 244
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isLimitNumberOfSmsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 247
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 253
    .end local v54    # "result":Z
    :pswitch_27f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 257
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOutgoingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 260
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 266
    .end local v54    # "result":Z
    :pswitch_2aa
    if-eqz p4, :cond_2b2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2b5

    .line 267
    :cond_2b2
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 269
    :cond_2b5
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v54

    .line 272
    .restart local v54    # "result":Z
    goto/16 :goto_192

    .line 274
    .end local v54    # "result":Z
    :pswitch_2c0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 277
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 280
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 286
    .end local v54    # "result":Z
    :pswitch_2eb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 289
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 292
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 298
    .end local v54    # "result":Z
    :pswitch_316
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 301
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOutgoingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 304
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 310
    .end local v54    # "result":Z
    :pswitch_341
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 313
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCallerIDDisplayAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 316
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 322
    .end local v54    # "result":Z
    :pswitch_36c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 325
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWapPushAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 328
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 334
    .end local v54    # "result":Z
    :pswitch_397
    if-eqz p4, :cond_39f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3a2

    .line 335
    :cond_39f
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 337
    :cond_3a2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v54

    .line 340
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 343
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 349
    .end local v54    # "result":Z
    :pswitch_3cb
    if-eqz p4, :cond_3d3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3d6

    .line 350
    :cond_3d3
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 352
    :cond_3d6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v54

    .line 355
    .restart local v54    # "result":Z
    goto/16 :goto_192

    .line 357
    .end local v54    # "result":Z
    :pswitch_3e1
    if-eqz p4, :cond_3e9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3ec

    .line 358
    :cond_3e9
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 360
    :cond_3ec
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v54

    .line 363
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isSimLockedByAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 366
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_192

    .line 381
    .end local v37    # "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .end local v54    # "result":Z
    :pswitch_415
    const-string v5, "knoxcustom"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v26

    .line 382
    if-eqz v26, :cond_76b

    if-eqz p3, :cond_76b

    .line 386
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_225a

    :cond_42b
    :goto_42b
    packed-switch v5, :pswitch_data_228c

    .line 704
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 386
    :sswitch_431
    const-string/jumbo v6, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x0

    goto :goto_42b

    :sswitch_43e
    const-string v6, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x1

    goto :goto_42b

    :sswitch_44a
    const-string v6, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x2

    goto :goto_42b

    :sswitch_456
    const-string v6, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x3

    goto :goto_42b

    :sswitch_462
    const-string v6, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x4

    goto :goto_42b

    :sswitch_46e
    const-string v6, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x5

    goto :goto_42b

    :sswitch_47a
    const-string v6, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x6

    goto :goto_42b

    :sswitch_486
    const-string v6, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/4 v5, 0x7

    goto :goto_42b

    :sswitch_492
    const-string v6, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/16 v5, 0x8

    goto :goto_42b

    :sswitch_49f
    const-string v6, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/16 v5, 0x9

    goto :goto_42b

    :sswitch_4ac
    const-string v6, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/16 v5, 0xa

    goto/16 :goto_42b

    :sswitch_4ba
    const-string v6, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42b

    const/16 v5, 0xb

    goto/16 :goto_42b

    .line 391
    :pswitch_4c8
    if-eqz p4, :cond_4d1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4d6

    .line 392
    :cond_4d1
    if-eqz p4, :cond_4d3

    .line 397
    :cond_4d3
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 401
    :cond_4d6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v49

    .line 403
    .local v49, "paramState":Z
    const/4 v5, 0x1

    aget-object v47, p4, v5

    .line 407
    .local v47, "paramPasscode":Ljava/lang/String;
    const/16 v58, -0x1

    .line 410
    .local v58, "returnState":I
    :try_start_4e2
    move-object/from16 v0, v26

    move/from16 v1, v49

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->setSealedState(ZLjava/lang/String;)I
    :try_end_4eb
    .catch Landroid/os/RemoteException; {:try_start_4e2 .. :try_end_4eb} :catch_50f

    move-result v58

    .line 417
    :goto_4ec
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 420
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v47    # "paramPasscode":Ljava/lang/String;
    .end local v49    # "paramState":Z
    .end local v58    # "returnState":I
    :goto_50b
    move-object/from16 v5, v41

    .line 707
    goto/16 :goto_5f

    .line 411
    .restart local v47    # "paramPasscode":Ljava/lang/String;
    .restart local v49    # "paramState":Z
    .restart local v58    # "returnState":I
    :catch_50f
    move-exception v20

    .line 412
    .local v20, "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4ec

    .line 429
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v47    # "paramPasscode":Ljava/lang/String;
    .end local v49    # "paramState":Z
    .end local v58    # "returnState":I
    :pswitch_51a
    const/16 v60, 0x0

    .line 432
    .local v60, "sealedState":Z
    :try_start_51c
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedState()Z
    :try_end_51f
    .catch Landroid/os/RemoteException; {:try_start_51c .. :try_end_51f} :catch_53f

    move-result v60

    .line 439
    :goto_520
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 442
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_50b

    .line 433
    :catch_53f
    move-exception v20

    .line 434
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_520

    .line 451
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v60    # "sealedState":Z
    :pswitch_54a
    const/16 v58, 0x2

    .line 454
    .restart local v58    # "returnState":I
    :try_start_54c
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogOptionMode()I
    :try_end_54f
    .catch Landroid/os/RemoteException; {:try_start_54c .. :try_end_54f} :catch_56f

    move-result v58

    .line 461
    :goto_550
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogOptionMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 464
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_50b

    .line 455
    :catch_56f
    move-exception v20

    .line 456
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_550

    .line 473
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_57a
    if-eqz p4, :cond_582

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_587

    .line 474
    :cond_582
    if-eqz p4, :cond_584

    .line 479
    :cond_584
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 482
    :cond_587
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .line 483
    .local v50, "paramStringType":I
    const/16 v59, 0x0

    .line 488
    .local v59, "returnString":Ljava/lang/String;
    :try_start_590
    move-object/from16 v0, v26

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedModeString(I)Ljava/lang/String;
    :try_end_597
    .catch Landroid/os/RemoteException; {:try_start_590 .. :try_end_597} :catch_5b4

    move-result-object v59

    .line 495
    :goto_598
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedModeString"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 498
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 489
    :catch_5b4
    move-exception v20

    .line 490
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_598

    .line 507
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v50    # "paramStringType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_5bf
    if-eqz p4, :cond_5c7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5cc

    .line 508
    :cond_5c7
    if-eqz p4, :cond_5c9

    .line 513
    :cond_5c9
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 517
    :cond_5cc
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    .line 518
    .restart local v50    # "paramStringType":I
    const/16 v59, 0x0

    .line 523
    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_5d5
    move-object/from16 v0, v26

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedExitUI(I)Ljava/lang/String;
    :try_end_5dc
    .catch Landroid/os/RemoteException; {:try_start_5d5 .. :try_end_5dc} :catch_5f9

    move-result-object v59

    .line 530
    :goto_5dd
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedExitUI"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 533
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 524
    :catch_5f9
    move-exception v20

    .line 525
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5dd

    .line 542
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v50    # "paramStringType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_604
    const/16 v59, 0x0

    .line 545
    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_606
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedHomeActivity()Ljava/lang/String;
    :try_end_609
    .catch Landroid/os/RemoteException; {:try_start_606 .. :try_end_609} :catch_626

    move-result-object v59

    .line 552
    :goto_60a
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedHomeActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 555
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 546
    :catch_626
    move-exception v20

    .line 547
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60a

    .line 564
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_631
    const/16 v58, 0x2

    .line 567
    .restart local v58    # "returnState":I
    :try_start_633
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarMode()I
    :try_end_636
    .catch Landroid/os/RemoteException; {:try_start_633 .. :try_end_636} :catch_657

    move-result v58

    .line 574
    :goto_637
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 577
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 568
    :catch_657
    move-exception v20

    .line 569
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_637

    .line 586
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_662
    const/16 v58, 0x1

    .line 589
    .local v58, "returnState":Z
    :try_start_664
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarClockState()Z
    :try_end_667
    .catch Landroid/os/RemoteException; {:try_start_664 .. :try_end_667} :catch_688

    move-result v58

    .line 596
    :goto_668
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarClockState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 599
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 590
    :catch_688
    move-exception v20

    .line 591
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_668

    .line 608
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_693
    const/16 v58, 0x0

    .line 610
    .restart local v58    # "returnState":Z
    :try_start_695
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedStatusBarIconsState()Z
    :try_end_698
    .catch Landroid/os/RemoteException; {:try_start_695 .. :try_end_698} :catch_6b9

    move-result v58

    .line 617
    :goto_699
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedStatusBarIconsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 620
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 611
    :catch_6b9
    move-exception v20

    .line 612
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_699

    .line 629
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_6c4
    const/16 v58, 0x1

    .line 632
    .restart local v58    # "returnState":Z
    :try_start_6c6
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbMassStorageState()Z
    :try_end_6c9
    .catch Landroid/os/RemoteException; {:try_start_6c6 .. :try_end_6c9} :catch_6ea

    move-result v58

    .line 639
    :goto_6ca
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbMassStorageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 642
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 633
    :catch_6ea
    move-exception v20

    .line 634
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6ca

    .line 651
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_6f5
    const/16 v58, 0x0

    .line 653
    .restart local v58    # "returnState":Z
    :try_start_6f7
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbNetState()Z
    :try_end_6fa
    .catch Landroid/os/RemoteException; {:try_start_6f7 .. :try_end_6fa} :catch_71b

    move-result v58

    .line 660
    :goto_6fb
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbNetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 663
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 654
    :catch_71b
    move-exception v20

    .line 655
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6fb

    .line 672
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_726
    if-eqz p4, :cond_72e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_733

    .line 673
    :cond_72e
    if-eqz p4, :cond_730

    .line 678
    :cond_730
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 681
    :cond_733
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 682
    .local v46, "paramAddressType":I
    const/16 v59, 0x0

    .line 687
    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_73c
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedUsbNetAddress(I)Ljava/lang/String;
    :try_end_743
    .catch Landroid/os/RemoteException; {:try_start_73c .. :try_end_743} :catch_760

    move-result-object v59

    .line 694
    :goto_744
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedUsbNetAddress"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 697
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_50b

    .line 688
    :catch_760
    move-exception v20

    .line 689
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_744

    .line 711
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v46    # "paramAddressType":I
    .end local v59    # "returnString":Ljava/lang/String;
    :cond_76b
    if-nez p3, :cond_5e

    goto/16 :goto_5e

    .line 717
    :pswitch_76f
    const-string v5, "knoxcustom"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v26

    .line 718
    if-eqz v26, :cond_a5b

    if-eqz p3, :cond_a5b

    .line 722
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_22a8

    :cond_785
    :goto_785
    packed-switch v5, :pswitch_data_22d6

    .line 989
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 722
    :sswitch_78b
    const-string v6, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x0

    goto :goto_785

    :sswitch_797
    const-string v6, "getSealedMultiWindowFixedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x1

    goto :goto_785

    :sswitch_7a3
    const-string v6, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x2

    goto :goto_785

    :sswitch_7af
    const-string v6, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x3

    goto :goto_785

    :sswitch_7bb
    const-string v6, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x4

    goto :goto_785

    :sswitch_7c7
    const-string v6, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x5

    goto :goto_785

    :sswitch_7d3
    const-string v6, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x6

    goto :goto_785

    :sswitch_7df
    const-string v6, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/4 v5, 0x7

    goto :goto_785

    :sswitch_7eb
    const-string v6, "getCheckCoverPopupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/16 v5, 0x8

    goto :goto_785

    :sswitch_7f8
    const-string v6, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/16 v5, 0x9

    goto :goto_785

    :sswitch_805
    const-string v6, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_785

    const/16 v5, 0xa

    goto/16 :goto_785

    .line 727
    :pswitch_813
    const/16 v58, 0x1

    .line 730
    .restart local v58    # "returnState":Z
    :try_start_815
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedNotificationMessagesState()Z
    :try_end_818
    .catch Landroid/os/RemoteException; {:try_start_815 .. :try_end_818} :catch_83b

    move-result v58

    .line 737
    :goto_819
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedNotificationMessagesState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 740
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v58    # "returnState":Z
    :cond_837
    :goto_837
    move-object/from16 v5, v41

    .line 992
    goto/16 :goto_5f

    .line 731
    .restart local v58    # "returnState":Z
    :catch_83b
    move-exception v20

    .line 732
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_819

    .line 749
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_846
    if-eqz p4, :cond_84e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_853

    .line 750
    :cond_84e
    if-eqz p4, :cond_850

    .line 755
    :cond_850
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 758
    :cond_853
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 759
    .local v48, "paramReturnType":I
    const/16 v21, 0x0

    .line 764
    .local v21, "fixedState":I
    :try_start_85c
    move-object/from16 v0, v26

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedMultiWindowFixedState(I)I
    :try_end_863
    .catch Landroid/os/RemoteException; {:try_start_85c .. :try_end_863} :catch_883

    move-result v21

    .line 771
    :goto_864
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedMultiWindowFixedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 774
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_837

    .line 765
    :catch_883
    move-exception v20

    .line 766
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service: "

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_864

    .line 783
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v21    # "fixedState":I
    .end local v48    # "paramReturnType":I
    :pswitch_88e
    const/16 v58, -0x1

    .line 786
    .local v58, "returnState":I
    :try_start_890
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogItems()I
    :try_end_893
    .catch Landroid/os/RemoteException; {:try_start_890 .. :try_end_893} :catch_8b3

    move-result v58

    .line 793
    :goto_894
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 796
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_837

    .line 787
    :catch_8b3
    move-exception v20

    .line 788
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_894

    .line 805
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_8be
    const/16 v58, 0x0

    .line 808
    .local v58, "returnState":Z
    :try_start_8c0
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogCustomItemsState()Z
    :try_end_8c3
    .catch Landroid/os/RemoteException; {:try_start_8c0 .. :try_end_8c3} :catch_8e4

    move-result v58

    .line 815
    :goto_8c4
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogCustomItemsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 818
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 809
    :catch_8e4
    move-exception v20

    .line 810
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c4

    .line 827
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_8ef
    const/16 v57, 0x0

    .line 830
    .local v57, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_8f1
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedPowerDialogCustomItems()Ljava/util/List;
    :try_end_8f4
    .catch Landroid/os/RemoteException; {:try_start_8f1 .. :try_end_8f4} :catch_92e

    move-result-object v57

    .line 835
    :goto_8f5
    if-eqz v57, :cond_8f7

    .line 841
    :cond_8f7
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedPowerDialogCustomItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 845
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v57, :cond_837

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_837

    .line 847
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_912
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_837

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 848
    .local v62, "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v62 .. v62}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_912

    .line 831
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v62    # "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_92e
    move-exception v20

    .line 832
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f5

    .line 859
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v57    # "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :pswitch_939
    const/16 v58, 0x0

    .line 862
    .restart local v58    # "returnState":Z
    :try_start_93b
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_93e
    .catch Landroid/os/RemoteException; {:try_start_93b .. :try_end_93e} :catch_95f

    move-result v58

    .line 869
    :goto_93f
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getExtendedCallInfoState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 872
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 863
    :catch_95f
    move-exception v20

    .line 864
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93f

    .line 881
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_96a
    const/16 v58, 0x0

    .line 884
    .local v58, "returnState":I
    :try_start_96c
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_96f
    .catch Landroid/os/RemoteException; {:try_start_96c .. :try_end_96f} :catch_990

    move-result v58

    .line 891
    :goto_970
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSettingsHiddenState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 894
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 885
    :catch_990
    move-exception v20

    .line 886
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_970

    .line 903
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_99b
    const/16 v58, -0x1

    .line 906
    .restart local v58    # "returnState":I
    :try_start_99d
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedHideNotificationMessages()I
    :try_end_9a0
    .catch Landroid/os/RemoteException; {:try_start_99d .. :try_end_9a0} :catch_9c1

    move-result v58

    .line 913
    :goto_9a1
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSealedHideNotificationMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 916
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 907
    :catch_9c1
    move-exception v20

    .line 908
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a1

    .line 925
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :pswitch_9cc
    const/16 v58, 0x1

    .line 928
    .local v58, "returnState":Z
    :try_start_9ce
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCheckCoverPopupState()Z
    :try_end_9d1
    .catch Landroid/os/RemoteException; {:try_start_9ce .. :try_end_9d1} :catch_9f2

    move-result v58

    .line 935
    :goto_9d2
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCheckCoverPopupState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 938
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 929
    :catch_9f2
    move-exception v20

    .line 930
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d2

    .line 947
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":Z
    :pswitch_9fd
    const/16 v59, 0x0

    .line 950
    .restart local v59    # "returnString":Ljava/lang/String;
    :try_start_9ff
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_a02
    .catch Landroid/os/RemoteException; {:try_start_9ff .. :try_end_a02} :catch_a1f

    move-result-object v59

    .line 957
    :goto_a03
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRecentLongPressActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 960
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v59, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 951
    :catch_a1f
    move-exception v20

    .line 952
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a03

    .line 969
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v59    # "returnString":Ljava/lang/String;
    :pswitch_a2a
    const/16 v58, -0x1

    .line 972
    .local v58, "returnState":I
    :try_start_a2c
    invoke-interface/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_a2f
    .catch Landroid/os/RemoteException; {:try_start_a2c .. :try_end_a2f} :catch_a50

    move-result v58

    .line 979
    :goto_a30
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRecentLongPressMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 982
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_837

    .line 973
    :catch_a50
    move-exception v20

    .line 974
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a30

    .line 994
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v58    # "returnState":I
    :cond_a5b
    if-nez p3, :cond_5e

    goto/16 :goto_5e

    .line 1001
    :pswitch_a5f
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1003
    .local v4, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_5e

    .line 1004
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_22f0

    :cond_a71
    :goto_a71
    packed-switch v5, :pswitch_data_232a

    .line 1228
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1004
    :sswitch_a7f
    const-string v6, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x0

    goto :goto_a71

    :sswitch_a8b
    const-string v6, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x1

    goto :goto_a71

    :sswitch_a97
    const-string v6, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x2

    goto :goto_a71

    :sswitch_aa3
    const-string v6, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x3

    goto :goto_a71

    :sswitch_aaf
    const-string v6, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x4

    goto :goto_a71

    :sswitch_abb
    const-string v6, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x5

    goto :goto_a71

    :sswitch_ac7
    const-string v6, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x6

    goto :goto_a71

    :sswitch_ad3
    const-string v6, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/4 v5, 0x7

    goto :goto_a71

    :sswitch_adf
    const-string v6, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0x8

    goto :goto_a71

    :sswitch_aec
    const-string v6, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0x9

    goto/16 :goto_a71

    :sswitch_afa
    const-string v6, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0xa

    goto/16 :goto_a71

    :sswitch_b08
    const-string v6, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0xb

    goto/16 :goto_a71

    :sswitch_b16
    const-string v6, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0xc

    goto/16 :goto_a71

    :sswitch_b24
    const-string v6, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a71

    const/16 v5, 0xd

    goto/16 :goto_a71

    .line 1006
    :pswitch_b32
    if-eqz p4, :cond_b3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_b3d

    .line 1007
    :cond_b3a
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1009
    :cond_b3d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1012
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationUninstallationEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1015
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v54    # "result":Z
    :goto_b67
    move-object/from16 v5, v41

    .line 1232
    goto/16 :goto_5f

    .line 1021
    :pswitch_b6b
    if-eqz p4, :cond_b73

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_b76

    .line 1022
    :cond_b73
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1024
    :cond_b76
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1027
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationInstalled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1030
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b67

    .line 1036
    .end local v54    # "result":Z
    :pswitch_ba1
    if-eqz p4, :cond_ba9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_bac

    .line 1037
    :cond_ba9
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1038
    :cond_bac
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v54

    .line 1042
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIntentDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1045
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b67

    .line 1052
    .end local v54    # "result":Z
    :pswitch_bd8
    if-eqz p4, :cond_be0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_be3

    .line 1053
    :cond_be0
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1055
    :cond_be3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v53

    .line 1058
    .local v53, "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationNotificationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1061
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1069
    .end local v53    # "res":I
    :pswitch_c13
    const/16 v54, 0x1

    .line 1072
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAppInstallToSdCard"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1075
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1082
    .end local v54    # "result":Z
    :pswitch_c35
    if-eqz p4, :cond_c3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_c41

    .line 1083
    :cond_c3e
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1085
    :cond_c41
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .line 1091
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationForceStopDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1094
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1101
    .end local v54    # "result":Z
    :pswitch_c7f
    if-eqz p4, :cond_c88

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_c8b

    .line 1102
    :cond_c88
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1104
    :cond_c8b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v54

    .line 1107
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationClearDataDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1110
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1117
    .end local v54    # "result":Z
    :pswitch_cc0
    if-eqz p4, :cond_cc9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_ccc

    .line 1118
    :cond_cc9
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1120
    :cond_ccc
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v54

    .line 1123
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isApplicationClearCacheDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1126
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1133
    .end local v54    # "result":Z
    :pswitch_d01
    if-eqz p4, :cond_d0a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_d0d

    .line 1134
    :cond_d0a
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1136
    :cond_d0d
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v56

    .line 1139
    .local v56, "resultString":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationNameFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1142
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1149
    .end local v56    # "resultString":Ljava/lang/String;
    :pswitch_d37
    if-eqz p4, :cond_d40

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_d43

    .line 1150
    :cond_d40
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1152
    :cond_d43
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v54

    .line 1155
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isPackageUpdateAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1158
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1165
    .end local v54    # "result":Z
    :pswitch_d71
    if-eqz p4, :cond_d79

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_d7c

    .line 1166
    :cond_d79
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1168
    :cond_d7c
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v6, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v54

    .line 1172
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationComponentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1175
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1182
    .end local v54    # "result":Z
    :pswitch_dae
    if-eqz p4, :cond_db6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_db9

    .line 1183
    :cond_db6
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1185
    :cond_db9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1188
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationStateEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1191
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1198
    .end local v54    # "result":Z
    :pswitch_de5
    if-eqz p4, :cond_dee

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_df1

    .line 1199
    :cond_dee
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1201
    :cond_df1
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v54

    .line 1205
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUsbDevicePermittedForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1208
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1214
    .end local v54    # "result":Z
    :pswitch_e28
    if-eqz p4, :cond_e31

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_e34

    .line 1215
    :cond_e31
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1217
    :cond_e34
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B

    move-result-object v52

    .line 1220
    .local v52, "re":[B
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getApplicationIconFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1223
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v52, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_b67

    .line 1237
    .end local v4    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v52    # "re":[B
    :pswitch_e5c
    const-string v5, "eas_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 1239
    .local v30, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v30, :cond_5e

    if-eqz p3, :cond_5e

    .line 1240
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_234a

    :cond_e70
    :goto_e70
    packed-switch v5, :pswitch_data_2384

    .line 1438
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1240
    :sswitch_e7e
    const-string v6, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x0

    goto :goto_e70

    :sswitch_e8a
    const-string v6, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x1

    goto :goto_e70

    :sswitch_e96
    const-string v6, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x2

    goto :goto_e70

    :sswitch_ea2
    const-string v6, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x3

    goto :goto_e70

    :sswitch_eae
    const-string v6, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x4

    goto :goto_e70

    :sswitch_eba
    const-string v6, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x5

    goto :goto_e70

    :sswitch_ec6
    const-string v6, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x6

    goto :goto_e70

    :sswitch_ed2
    const-string v6, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/4 v5, 0x7

    goto :goto_e70

    :sswitch_ede
    const-string v6, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0x8

    goto :goto_e70

    :sswitch_eeb
    const-string v6, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0x9

    goto/16 :goto_e70

    :sswitch_ef9
    const-string v6, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0xa

    goto/16 :goto_e70

    :sswitch_f07
    const-string v6, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0xb

    goto/16 :goto_e70

    :sswitch_f15
    const-string v6, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0xc

    goto/16 :goto_e70

    :sswitch_f23
    const-string/jumbo v6, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e70

    const/16 v5, 0xd

    goto/16 :goto_e70

    .line 1242
    :pswitch_f32
    if-eqz p4, :cond_f3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f3d

    .line 1243
    :cond_f3a
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1244
    :cond_f3d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1248
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRequiredSignedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1251
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v54    # "result":Z
    :goto_f6d
    move-object/from16 v5, v41

    .line 1442
    goto/16 :goto_5f

    .line 1256
    :pswitch_f71
    if-eqz p4, :cond_f79

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f7c

    .line 1257
    :cond_f79
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1258
    :cond_f7c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1262
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getRequiredEncryptedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1265
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f6d

    .line 1270
    .end local v54    # "result":Z
    :pswitch_fad
    if-eqz p4, :cond_fb5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_fb8

    .line 1271
    :cond_fb5
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1272
    :cond_fb8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1276
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1279
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f6d

    .line 1284
    .end local v54    # "result":Z
    :pswitch_fe9
    if-eqz p4, :cond_ff1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ff4

    .line 1285
    :cond_ff1
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1286
    :cond_ff4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1290
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isIncomingAttachmentsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1293
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1298
    .end local v54    # "result":Z
    :pswitch_1026
    if-eqz p4, :cond_102e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1031

    .line 1299
    :cond_102e
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1300
    :cond_1031
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .line 1304
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getIncomingAttachmentSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1307
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1312
    .end local v53    # "res":I
    :pswitch_1063
    if-eqz p4, :cond_106b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_106e

    .line 1313
    :cond_106b
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1314
    :cond_106e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .line 1318
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxCalendarAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1321
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1326
    .end local v53    # "res":I
    :pswitch_10a0
    if-eqz p4, :cond_10a8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_10ab

    .line 1327
    :cond_10a8
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1328
    :cond_10ab
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .line 1332
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1335
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1340
    .end local v53    # "res":I
    :pswitch_10dd
    if-eqz p4, :cond_10e5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_10e8

    .line 1341
    :cond_10e5
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1342
    :cond_10e8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .line 1346
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailHTMLBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1349
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1354
    .end local v53    # "res":I
    :pswitch_111a
    if-eqz p4, :cond_1122

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1125

    .line 1355
    :cond_1122
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1356
    :cond_1125
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1360
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificateForSigning"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1363
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1368
    .end local v54    # "result":Z
    :pswitch_1157
    if-eqz p4, :cond_115f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1162

    .line 1369
    :cond_115f
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1370
    :cond_1162
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1374
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getForceSMIMECertificateForEncryption"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1377
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1382
    .end local v54    # "result":Z
    :pswitch_1194
    if-eqz p4, :cond_119c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_119f

    .line 1383
    :cond_119c
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1384
    :cond_119f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v51

    .line 1388
    .local v51, "passwd":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1391
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v51, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1396
    .end local v51    # "passwd":Ljava/lang/String;
    :pswitch_11cd
    if-eqz p4, :cond_11d5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_11d8

    .line 1397
    :cond_11d5
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1398
    :cond_11d8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v16

    .line 1402
    .local v16, "certPasswd":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAccountCertificatePassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1405
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1410
    .end local v16    # "certPasswd":Ljava/lang/String;
    :pswitch_1206
    if-eqz p4, :cond_120e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1211

    .line 1411
    :cond_120e
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1412
    :cond_1211
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v53

    .line 1416
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMaxEmailAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1419
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1424
    .end local v53    # "res":I
    :pswitch_1243
    if-eqz p4, :cond_124c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_124f

    .line 1425
    :cond_124c
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1426
    :cond_124f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .line 1430
    .local v42, "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1433
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f6d

    .line 1446
    .end local v30    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v42    # "long_res":J
    :pswitch_127e
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1448
    .local v39, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v39, :cond_5e

    if-eqz p3, :cond_5e

    .line 1449
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_23a4

    :cond_1293
    :goto_1293
    packed-switch v5, :pswitch_data_23ca

    .line 1555
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1449
    :sswitch_1299
    const-string v6, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x0

    goto :goto_1293

    :sswitch_12a5
    const-string v6, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x1

    goto :goto_1293

    :sswitch_12b1
    const-string v6, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x2

    goto :goto_1293

    :sswitch_12bd
    const-string v6, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x3

    goto :goto_1293

    :sswitch_12c9
    const-string v6, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x4

    goto :goto_1293

    :sswitch_12d5
    const-string v6, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x5

    goto :goto_1293

    :sswitch_12e1
    const-string v6, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x6

    goto :goto_1293

    :sswitch_12ed
    const-string v6, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/4 v5, 0x7

    goto :goto_1293

    :sswitch_12f9
    const-string v6, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1293

    const/16 v5, 0x8

    goto :goto_1293

    .line 1451
    :pswitch_1306
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1454
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowUserPolicyChanges"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1457
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_132f
    move-object/from16 v5, v41

    .line 1558
    goto/16 :goto_5f

    .line 1462
    .end local v54    # "result":Z
    :pswitch_1333
    if-eqz p4, :cond_133b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_133e

    .line 1463
    :cond_133b
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1464
    :cond_133e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v39

    move/from16 v1, v61

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v54

    .line 1468
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowUserProfiles"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1471
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_132f

    .line 1476
    .end local v54    # "result":Z
    :pswitch_1371
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1479
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAutomaticConnectionToWifi"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1482
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_132f

    .line 1487
    .end local v54    # "result":Z
    :pswitch_139b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1490
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getPasswordHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1493
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1498
    .end local v54    # "result":Z
    :pswitch_13c6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1501
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getPromptCredentialsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1504
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1509
    .end local v54    # "result":Z
    :pswitch_13f1
    if-eqz p4, :cond_13f9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13fc

    .line 1510
    :cond_13f9
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1511
    :cond_13fc
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v54

    .line 1514
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEnterpriseNetwork"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1517
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1522
    .end local v54    # "result":Z
    :pswitch_1425
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1525
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWifiApSettingUserModificationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1528
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1533
    .end local v54    # "result":Z
    :pswitch_1450
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1536
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isWifiStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1539
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1544
    .end local v54    # "result":Z
    :pswitch_147b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1547
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isOpenWifiApAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1550
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_132f

    .line 1562
    .end local v39    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    .end local v54    # "result":Z
    :pswitch_14a6
    const-string v5, "kioskmode"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 1564
    .local v34, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v34, :cond_5e

    .line 1565
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_23e0

    :cond_14b8
    :goto_14b8
    packed-switch v5, :pswitch_data_2406

    :goto_14bb
    move-object/from16 v5, v41

    .line 1685
    goto/16 :goto_5f

    .line 1565
    :sswitch_14bf
    const-string v6, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x0

    goto :goto_14b8

    :sswitch_14cb
    const-string v6, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x1

    goto :goto_14b8

    :sswitch_14d7
    const-string v6, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x2

    goto :goto_14b8

    :sswitch_14e3
    const-string v6, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x3

    goto :goto_14b8

    :sswitch_14ef
    const-string v6, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x4

    goto :goto_14b8

    :sswitch_14fb
    const-string v6, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x5

    goto :goto_14b8

    :sswitch_1507
    const-string v6, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x6

    goto :goto_14b8

    :sswitch_1513
    const-string v6, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/4 v5, 0x7

    goto :goto_14b8

    :sswitch_151f
    const-string v6, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14b8

    const/16 v5, 0x8

    goto :goto_14b8

    .line 1567
    :pswitch_152c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1571
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isNavigationBarHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1573
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1577
    .end local v54    # "result":Z
    :pswitch_1557
    if-eqz p4, :cond_155f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1562

    .line 1578
    :cond_155f
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1580
    :cond_1562
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .line 1584
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isMultiWindowModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1586
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1590
    .end local v54    # "result":Z
    :pswitch_1594
    if-eqz p4, :cond_159d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_15a0

    .line 1591
    :cond_159d
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1593
    :cond_15a0
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v54

    .line 1594
    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isMultiWindowModeAllowedAsUser"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1598
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1602
    .end local v54    # "result":Z
    :pswitch_15e7
    if-nez p4, :cond_162e

    .line 1603
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1611
    .restart local v54    # "result":Z
    :goto_15f4
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAirCommandModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1615
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1607
    .end local v54    # "result":Z
    :cond_162e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1609
    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15f4

    .line 1619
    .end local v54    # "result":Z
    :pswitch_1660
    if-nez p4, :cond_16a7

    .line 1620
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1628
    .restart local v54    # "result":Z
    :goto_166d
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAirViewModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1632
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1624
    .end local v54    # "result":Z
    :cond_16a7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1626
    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166d

    .line 1636
    .end local v54    # "result":Z
    :pswitch_16d9
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v55

    .line 1639
    .local v55, "resultMap":Ljava/util/Map;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getBlockedHwKeysCache"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1641
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v55, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1645
    .end local v55    # "resultMap":Ljava/util/Map;
    :pswitch_16f9
    if-eqz p4, :cond_1701

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1704

    .line 1646
    :cond_1701
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1648
    :cond_1704
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .line 1652
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isTaskManagerAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1654
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1658
    .end local v54    # "result":Z
    :pswitch_1736
    if-nez p4, :cond_177d

    .line 1659
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1667
    .restart local v54    # "result":Z
    :goto_1743
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isKioskModeEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1671
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1663
    .end local v54    # "result":Z
    :cond_177d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1665
    .restart local v54    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKioskModeEnabled uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1743

    .line 1675
    .end local v54    # "result":Z
    :pswitch_17af
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v22

    .line 1679
    .local v22, "homePkg":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getKioskHomePackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1681
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14bb

    .line 1692
    .end local v22    # "homePkg":Ljava/lang/String;
    .end local v34    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    :pswitch_17d6
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v33

    .line 1694
    .local v33, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v33, :cond_5e

    if-eqz p3, :cond_5e

    .line 1695
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_241c

    :cond_17e6
    :goto_17e6
    packed-switch v5, :pswitch_data_2442

    :cond_17e9
    :goto_17e9
    :pswitch_17e9
    move-object/from16 v5, v41

    .line 1800
    goto/16 :goto_5f

    .line 1695
    :sswitch_17ed
    const-string v6, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x0

    goto :goto_17e6

    :sswitch_17f9
    const-string v6, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x1

    goto :goto_17e6

    :sswitch_1805
    const-string v6, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x2

    goto :goto_17e6

    :sswitch_1811
    const-string v6, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x3

    goto :goto_17e6

    :sswitch_181d
    const-string/jumbo v6, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x4

    goto :goto_17e6

    :sswitch_182a
    const-string/jumbo v6, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x5

    goto :goto_17e6

    :sswitch_1837
    const-string/jumbo v6, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x6

    goto :goto_17e6

    :sswitch_1844
    const-string/jumbo v6, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/4 v5, 0x7

    goto :goto_17e6

    :sswitch_1851
    const-string v6, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17e6

    const/16 v5, 0x8

    goto :goto_17e6

    .line 1697
    :pswitch_185e
    if-eqz p4, :cond_1866

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1869

    .line 1698
    :cond_1866
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1699
    :cond_1869
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1702
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1706
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17e9

    .line 1711
    .end local v54    # "result":Z
    :pswitch_1897
    if-eqz p4, :cond_189f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_18a2

    .line 1712
    :cond_189f
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1713
    :cond_18a2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v40

    .line 1717
    .local v40, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getActiveAdmins"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1721
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v40, :cond_17e9

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17e9

    .line 1723
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_18ca
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17e9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/ComponentName;

    .line 1724
    .local v62, "value":Landroid/content/ComponentName;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v62 .. v62}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_18ca

    .line 1731
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v40    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v62    # "value":Landroid/content/ComponentName;
    :pswitch_18e6
    if-eqz p4, :cond_18ef

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_18f2

    .line 1732
    :cond_18ef
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1734
    :cond_18f2
    const/4 v5, 0x0

    :try_start_18f3
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_1907
    .catch Landroid/os/RemoteException; {:try_start_18f3 .. :try_end_1907} :catch_1909

    goto/16 :goto_17e9

    .line 1736
    :catch_1909
    move-exception v20

    .line 1738
    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17e9

    .line 1742
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_190f
    if-eqz p4, :cond_1918

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_191b

    .line 1743
    :cond_1918
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1744
    :cond_191b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v54

    .line 1746
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1750
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17e9

    .line 1755
    .end local v54    # "result":Z
    :pswitch_1948
    if-eqz p4, :cond_1951

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1954

    .line 1756
    :cond_1951
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1758
    :cond_1954
    const/4 v5, 0x0

    :try_start_1955
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1967
    .catch Landroid/os/RemoteException; {:try_start_1955 .. :try_end_1967} :catch_1969

    goto/16 :goto_17e9

    .line 1760
    :catch_1969
    move-exception v20

    .line 1762
    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17e9

    .line 1766
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_196f
    if-eqz p4, :cond_1978

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_197b

    .line 1767
    :cond_1978
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1769
    :cond_197b
    const/4 v5, 0x0

    :try_start_197c
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_1987
    .catch Landroid/os/RemoteException; {:try_start_197c .. :try_end_1987} :catch_1989

    goto/16 :goto_17e9

    .line 1770
    :catch_1989
    move-exception v20

    .line 1772
    .restart local v20    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_17e9

    .line 1776
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_198f
    if-eqz p4, :cond_1998

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_199b

    .line 1777
    :cond_1998
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1778
    :cond_199b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v54

    .line 1781
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1784
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17e9

    .line 1792
    .end local v54    # "result":Z
    :pswitch_19d1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .line 1793
    .local v11, "admin":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getMyKnoxAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1796
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_17e9

    .line 1804
    .end local v11    # "admin":Ljava/lang/String;
    .end local v33    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :pswitch_19f8
    const-string v5, "email_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 1806
    .local v32, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v32, :cond_5e

    if-eqz p3, :cond_5e

    .line 1807
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2458

    :cond_1a0c
    :goto_1a0c
    packed-switch v5, :pswitch_data_246e

    .line 1877
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1807
    :sswitch_1a12
    const-string v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0c

    const/4 v5, 0x0

    goto :goto_1a0c

    :sswitch_1a1e
    const-string v6, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0c

    const/4 v5, 0x1

    goto :goto_1a0c

    :sswitch_1a2a
    const-string v6, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0c

    const/4 v5, 0x2

    goto :goto_1a0c

    :sswitch_1a36
    const-string v6, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0c

    const/4 v5, 0x3

    goto :goto_1a0c

    :sswitch_1a42
    const-string v6, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0c

    const/4 v5, 0x4

    goto :goto_1a0c

    .line 1809
    :pswitch_1a4e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v54

    .line 1812
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1815
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1a77
    move-object/from16 v5, v41

    .line 1880
    goto/16 :goto_5f

    .line 1820
    .end local v54    # "result":Z
    :pswitch_1a7b
    if-eqz p4, :cond_1a83

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1a86

    .line 1821
    :cond_1a83
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1822
    :cond_1a86
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1826
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowEmailForwarding"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1829
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a77

    .line 1834
    .end local v54    # "result":Z
    :pswitch_1ab3
    if-eqz p4, :cond_1abb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1abe

    .line 1835
    :cond_1abb
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1836
    :cond_1abe
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1840
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEmailSettingsChangesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1843
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a77

    .line 1848
    .end local v54    # "result":Z
    :pswitch_1aef
    if-eqz p4, :cond_1af7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1afa

    .line 1849
    :cond_1af7
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1850
    :cond_1afa
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v54

    .line 1854
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isEmailNotificationsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1857
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a77

    .line 1862
    .end local v54    # "result":Z
    :pswitch_1b2c
    if-eqz p4, :cond_1b34

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b37

    .line 1863
    :cond_1b34
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1864
    :cond_1b37
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 1868
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getAllowHtmlEmail"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1871
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a77

    .line 1886
    .end local v32    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    .end local v54    # "result":Z
    :pswitch_1b65
    const-string/jumbo v5, "vpn_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 1888
    .local v38, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    if-eqz v38, :cond_5e

    .line 1889
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_247c

    :cond_1b78
    :goto_1b78
    packed-switch v5, :pswitch_data_248e

    .line 1955
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1889
    :sswitch_1b7e
    const-string v6, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b78

    const/4 v5, 0x0

    goto :goto_1b78

    :sswitch_1b8a
    const-string v6, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b78

    const/4 v5, 0x1

    goto :goto_1b78

    :sswitch_1b96
    const-string v6, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b78

    const/4 v5, 0x2

    goto :goto_1b78

    :sswitch_1ba2
    const-string v6, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b78

    const/4 v5, 0x3

    goto :goto_1b78

    .line 1891
    :pswitch_1bae
    if-eqz p4, :cond_1bb6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1bb9

    .line 1892
    :cond_1bb6
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1894
    :cond_1bb9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z

    move-result v54

    .line 1897
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkRacoonSecurity"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1900
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1be4
    move-object/from16 v5, v41

    .line 1958
    goto/16 :goto_5f

    .line 1906
    .end local v54    # "result":Z
    :pswitch_1be8
    const/4 v12, 0x0

    .line 1907
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1bf8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1bf8

    .line 1908
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1910
    :cond_1bf8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .line 1913
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserAddProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1916
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1be4

    .line 1922
    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_1c22
    const/4 v12, 0x0

    .line 1923
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1c32

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1c32

    .line 1924
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1926
    :cond_1c32
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .line 1929
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserChangeProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1932
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1be4

    .line 1938
    .end local v12    # "arg":Z
    .end local v54    # "result":Z
    :pswitch_1c5c
    const/4 v12, 0x0

    .line 1939
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1c6c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1c6c

    .line 1940
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1942
    :cond_1c6c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v54

    .line 1945
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserSetAlwaysOnAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1948
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1be4

    .line 1962
    .end local v12    # "arg":Z
    .end local v38    # "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .end local v54    # "result":Z
    :pswitch_1c97
    const-string v5, "knox_ccm_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1964
    .local v27, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v27, :cond_5e

    .line 1965
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_249a

    :cond_1ca9
    :goto_1ca9
    packed-switch v5, :pswitch_data_24ac

    .line 2038
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1965
    :sswitch_1caf
    const-string v6, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x0

    goto :goto_1ca9

    :sswitch_1cbb
    const-string v6, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x1

    goto :goto_1ca9

    :sswitch_1cc7
    const-string v6, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x2

    goto :goto_1ca9

    :sswitch_1cd3
    const-string v6, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x3

    goto :goto_1ca9

    .line 1967
    :pswitch_1cdf
    if-eqz p4, :cond_1ce8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1ceb

    .line 1968
    :cond_1ce8
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1970
    :cond_1ceb
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 1971
    .local v13, "arrayLength":I
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    .local v45, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct/range {v18 .. v18}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 1974
    .local v18, "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1975
    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 1976
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 1977
    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 1979
    const/16 v23, 0x4

    .local v23, "i":I
    :goto_1d23
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v23

    if-ge v0, v5, :cond_1d37

    .line 1980
    aget-object v5, p4, v23

    move-object/from16 v0, v45

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    add-int/lit8 v23, v23, 0x1

    goto :goto_1d23

    .line 1981
    :cond_1d37
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 1983
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    add-int/lit8 v6, v13, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v13, -0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z

    move-result v54

    .line 1987
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "installCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1990
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v13    # "arrayLength":I
    .end local v18    # "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v23    # "i":I
    .end local v45    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "result":Z
    :goto_1d74
    move-object/from16 v5, v41

    .line 2040
    goto/16 :goto_5f

    .line 1996
    :pswitch_1d78
    if-eqz p4, :cond_1d80

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1d83

    .line 1997
    :cond_1d80
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 1999
    :cond_1d83
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 2002
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "deleteCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2005
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1d74

    .line 2011
    .end local v54    # "result":Z
    :pswitch_1db0
    if-eqz p4, :cond_1db8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1dbb

    .line 2012
    :cond_1db8
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2014
    :cond_1dbb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v54

    .line 2017
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isCCMPolicyEnabledForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2020
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1d74

    .line 2026
    .end local v54    # "result":Z
    :pswitch_1de8
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v15

    .line 2029
    .local v15, "ccmVersion":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCCMVersion"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2032
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1d74

    .line 2045
    .end local v15    # "ccmVersion":Ljava/lang/String;
    .end local v27    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    :pswitch_1e08
    const-string v5, "multi_user_manager_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 2047
    .local v36, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    if-eqz v36, :cond_5e

    .line 2048
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_24b8

    :cond_1e1a
    :goto_1e1a
    packed-switch v5, :pswitch_data_24c6

    .line 2106
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2048
    :sswitch_1e20
    const-string v6, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e1a

    const/4 v5, 0x0

    goto :goto_1e1a

    :sswitch_1e2c
    const-string v6, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e1a

    const/4 v5, 0x1

    goto :goto_1e1a

    :sswitch_1e38
    const-string v6, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e1a

    const/4 v5, 0x2

    goto :goto_1e1a

    .line 2050
    :pswitch_1e44
    const/4 v12, 0x0

    .line 2051
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1e54

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1e54

    .line 2052
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2055
    :cond_1e54
    :try_start_1e54
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    :try_end_1e5e
    .catch Landroid/os/RemoteException; {:try_start_1e54 .. :try_end_1e5e} :catch_1e81

    move-result v53

    .line 2060
    .restart local v53    # "res":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "multipleUsersAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2063
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v53    # "res":I
    :goto_1e7d
    move-object/from16 v5, v41

    .line 2109
    goto/16 :goto_5f

    .line 2056
    :catch_1e81
    move-exception v20

    .line 2057
    .restart local v20    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2069
    .end local v12    # "arg":Z
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_1e85
    const/4 v12, 0x0

    .line 2070
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1e95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1e95

    .line 2071
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2073
    :cond_1e95
    :try_start_1e95
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_1e9f
    .catch Ljava/lang/Exception; {:try_start_1e95 .. :try_end_1e9f} :catch_1ebf

    move-result v54

    .line 2078
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserCreationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2081
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1e7d

    .line 2074
    .end local v54    # "result":Z
    :catch_1ebf
    move-exception v20

    .line 2075
    .local v20, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2087
    .end local v12    # "arg":Z
    .end local v20    # "e":Ljava/lang/Exception;
    :pswitch_1ec3
    const/4 v12, 0x0

    .line 2088
    .restart local v12    # "arg":Z
    if-eqz p4, :cond_1ed3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1ed3

    .line 2089
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2092
    :cond_1ed3
    :try_start_1ed3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_1edd
    .catch Landroid/os/RemoteException; {:try_start_1ed3 .. :try_end_1edd} :catch_1efd

    move-result v54

    .line 2097
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isUserRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2100
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1e7d

    .line 2093
    .end local v54    # "result":Z
    :catch_1efd
    move-exception v20

    .line 2094
    .local v20, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2114
    .end local v12    # "arg":Z
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v36    # "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    :pswitch_1f01
    const-string v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 2116
    .local v28, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v28, :cond_5e

    if-eqz p3, :cond_5e

    .line 2117
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_24d0

    :cond_1f15
    :goto_1f15
    packed-switch v5, :pswitch_data_24da

    .line 2151
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2117
    :sswitch_1f1b
    const-string v6, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f15

    const/4 v5, 0x0

    goto :goto_1f15

    :sswitch_1f27
    const-string v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f15

    const/4 v5, 0x1

    goto :goto_1f15

    .line 2119
    :pswitch_1f33
    if-eqz p4, :cond_1f3c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1f3f

    .line 2120
    :cond_1f3c
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2122
    :cond_1f3f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .line 2126
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2129
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1f70
    move-object/from16 v5, v41

    .line 2154
    goto/16 :goto_5f

    .line 2135
    .end local v54    # "result":Z
    :pswitch_1f74
    if-eqz p4, :cond_1f7d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1f80

    .line 2136
    :cond_1f7d
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2138
    :cond_1f80
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v54

    .line 2142
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2145
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f70

    .line 2158
    .end local v28    # "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v54    # "result":Z
    :pswitch_1fb2
    const-string v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 2160
    .local v35, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v35, :cond_5e

    if-eqz p3, :cond_5e

    .line 2161
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_24e2

    :cond_1fc6
    :goto_1fc6
    packed-switch v5, :pswitch_data_24ec

    .line 2185
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2161
    :sswitch_1fcc
    const-string v6, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fc6

    const/4 v5, 0x0

    goto :goto_1fc6

    :sswitch_1fd8
    const-string v6, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fc6

    const/4 v5, 0x1

    goto :goto_1fc6

    .line 2163
    :pswitch_1fe4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v19

    .line 2166
    .local v19, "current":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getCurrentLockScreenString"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2169
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v19    # "current":Ljava/lang/String;
    :goto_2009
    move-object/from16 v5, v41

    .line 2188
    goto/16 :goto_5f

    .line 2174
    :pswitch_200d
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v54

    .line 2177
    .restart local v54    # "result":Z
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "isNFCStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2180
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2009

    .line 2192
    .end local v35    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local v54    # "result":Z
    :pswitch_2030
    const-string v5, "email_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 2194
    .local v31, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    if-eqz v31, :cond_5e

    if-eqz p3, :cond_5e

    .line 2195
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_24f4

    :cond_2044
    :goto_2044
    packed-switch v5, :pswitch_data_2506

    .line 2254
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2195
    :sswitch_204a
    const-string v6, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2044

    const/4 v5, 0x0

    goto :goto_2044

    :sswitch_2056
    const-string v6, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2044

    const/4 v5, 0x1

    goto :goto_2044

    :sswitch_2062
    const-string/jumbo v6, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2044

    const/4 v5, 0x2

    goto :goto_2044

    :sswitch_206f
    const-string/jumbo v6, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2044

    const/4 v5, 0x3

    goto :goto_2044

    .line 2197
    :pswitch_207c
    if-eqz p4, :cond_2084

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2087

    .line 2198
    :cond_2084
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2200
    :cond_2087
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v25

    .line 2204
    .local v25, "incServer":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSecurityIncomingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2207
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v25    # "incServer":Ljava/lang/String;
    :goto_20b3
    move-object/from16 v5, v41

    .line 2257
    goto/16 :goto_5f

    .line 2212
    :pswitch_20b7
    if-eqz p4, :cond_20bf

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_20c2

    .line 2213
    :cond_20bf
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2215
    :cond_20c2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v44

    .line 2219
    .local v44, "outServer":Ljava/lang/String;
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "getSecurityOutgoingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2222
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v44, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_20b3

    .line 2227
    .end local v44    # "outServer":Ljava/lang/String;
    :pswitch_20ef
    if-eqz p4, :cond_20f8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_20fb

    .line 2228
    :cond_20f8
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2229
    :cond_20fb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .line 2232
    .restart local v42    # "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2235
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_20b3

    .line 2241
    .end local v42    # "long_res":J
    :pswitch_2126
    if-eqz p4, :cond_212f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2132

    .line 2242
    :cond_212f
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2243
    :cond_2132
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v42

    .line 2246
    .restart local v42    # "long_res":J
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2249
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20b3

    .line 2261
    .end local v31    # "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    .end local v42    # "long_res":J
    :pswitch_215e
    const-string v5, "dualsim_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .line 2263
    .local v29, "lDualSimPolicyService":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    if-eqz v29, :cond_5e

    if-eqz p3, :cond_5e

    .line 2264
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_2512

    :cond_2172
    :goto_2172
    packed-switch v5, :pswitch_data_2518

    .line 2281
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2264
    :pswitch_2178
    const-string v6, "checkPrivilegedNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2172

    const/4 v5, 0x0

    goto :goto_2172

    .line 2266
    :pswitch_2184
    if-eqz p4, :cond_218d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2190

    .line 2267
    :cond_218d
    const/4 v5, 0x0

    goto/16 :goto_5f

    .line 2269
    :cond_2190
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->checkPrivilegedNumber(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v17

    .line 2273
    .local v17, "check":I
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkPrivilegedNumber"

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2276
    .restart local v41    # "mCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v41

    .line 2284
    goto/16 :goto_5f

    .line 167
    nop

    :pswitch_data_21c8
    .packed-switch 0x1
        :pswitch_a5f
        :pswitch_1c97
        :pswitch_1f01
        :pswitch_5e
        :pswitch_215e
        :pswitch_19f8
        :pswitch_2030
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_17d6
        :pswitch_e5c
        :pswitch_14a6
        :pswitch_415
        :pswitch_76f
        :pswitch_1fb2
        :pswitch_1e08
        :pswitch_60
        :pswitch_1b65
        :pswitch_127e
    .end packed-switch

    .line 172
    :sswitch_data_21f4
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_a4
        -0x75b6adce -> :sswitch_117
        -0x516c3a61 -> :sswitch_ed
        -0x4b848555 -> :sswitch_fb
        -0x3f23242a -> :sswitch_109
        -0x308af1de -> :sswitch_8c
        -0xb24e11b -> :sswitch_e0
        0x1134efad -> :sswitch_80
        0x1410b963 -> :sswitch_b0
        0x14e927da -> :sswitch_133
        0x42bd705d -> :sswitch_d4
        0x617af081 -> :sswitch_141
        0x6b27fd59 -> :sswitch_bc
        0x6dfeff94 -> :sswitch_125
        0x6e342165 -> :sswitch_c8
        0x7be8d885 -> :sswitch_98
    .end sparse-switch

    :pswitch_data_2236
    .packed-switch 0x0
        :pswitch_14f
        :pswitch_196
        :pswitch_1c0
        :pswitch_1f5
        :pswitch_220
        :pswitch_254
        :pswitch_27f
        :pswitch_2aa
        :pswitch_2c0
        :pswitch_2eb
        :pswitch_316
        :pswitch_341
        :pswitch_36c
        :pswitch_397
        :pswitch_3cb
        :pswitch_3e1
    .end packed-switch

    .line 386
    :sswitch_data_225a
    .sparse-switch
        -0x5e8b707a -> :sswitch_456
        -0x535b24ed -> :sswitch_44a
        -0x5344faa1 -> :sswitch_43e
        -0x47062780 -> :sswitch_46e
        -0x2d0232dc -> :sswitch_462
        0x27deb5dc -> :sswitch_49f
        0x3e24f8e6 -> :sswitch_4ac
        0x432078d3 -> :sswitch_431
        0x433f1786 -> :sswitch_492
        0x5b05ced2 -> :sswitch_47a
        0x6c630712 -> :sswitch_486
        0x75760f09 -> :sswitch_4ba
    .end sparse-switch

    :pswitch_data_228c
    .packed-switch 0x0
        :pswitch_4c8
        :pswitch_51a
        :pswitch_54a
        :pswitch_57a
        :pswitch_5bf
        :pswitch_604
        :pswitch_631
        :pswitch_662
        :pswitch_693
        :pswitch_6c4
        :pswitch_6f5
        :pswitch_726
    .end packed-switch

    .line 722
    :sswitch_data_22a8
    .sparse-switch
        -0x757aa1fb -> :sswitch_7f8
        -0x6f61ea52 -> :sswitch_7d3
        -0x6cd5112c -> :sswitch_7bb
        -0x6b02fb56 -> :sswitch_7eb
        -0x3eeccaaa -> :sswitch_7c7
        -0x3b6d6c7b -> :sswitch_7a3
        -0xf88924c -> :sswitch_797
        0x12bb4d48 -> :sswitch_78b
        0x4a948f99 -> :sswitch_805
        0x67050a1d -> :sswitch_7af
        0x6c8af02b -> :sswitch_7df
    .end sparse-switch

    :pswitch_data_22d6
    .packed-switch 0x0
        :pswitch_813
        :pswitch_846
        :pswitch_88e
        :pswitch_8be
        :pswitch_8ef
        :pswitch_939
        :pswitch_96a
        :pswitch_99b
        :pswitch_9cc
        :pswitch_9fd
        :pswitch_a2a
    .end packed-switch

    .line 1004
    :sswitch_data_22f0
    .sparse-switch
        -0x4de6cfb2 -> :sswitch_afa
        -0x4378abac -> :sswitch_a8b
        -0x308e1a98 -> :sswitch_aa3
        -0xf8e19f3 -> :sswitch_ac7
        0x1e373fed -> :sswitch_adf
        0x21074337 -> :sswitch_ad3
        0x22e592aa -> :sswitch_b08
        0x2952fe03 -> :sswitch_abb
        0x2d2b575b -> :sswitch_b24
        0x38dd3e65 -> :sswitch_b16
        0x3c3b0102 -> :sswitch_a97
        0x3d4c4243 -> :sswitch_aec
        0x49cef874 -> :sswitch_a7f
        0x767a17ac -> :sswitch_aaf
    .end sparse-switch

    :pswitch_data_232a
    .packed-switch 0x0
        :pswitch_b32
        :pswitch_b6b
        :pswitch_ba1
        :pswitch_bd8
        :pswitch_c13
        :pswitch_c35
        :pswitch_c7f
        :pswitch_cc0
        :pswitch_d01
        :pswitch_d37
        :pswitch_d71
        :pswitch_dae
        :pswitch_de5
        :pswitch_e28
    .end packed-switch

    .line 1240
    :sswitch_data_234a
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_eae
        -0x7a29af54 -> :sswitch_f23
        -0x7672ed17 -> :sswitch_f15
        -0x6a25634f -> :sswitch_e7e
        -0x437f6e25 -> :sswitch_f07
        -0x1e01c219 -> :sswitch_eeb
        -0x14b468b1 -> :sswitch_e8a
        0xb8321a0 -> :sswitch_ef9
        0x26b3fb45 -> :sswitch_e96
        0x2a7ba768 -> :sswitch_ea2
        0x37929121 -> :sswitch_ede
        0x6e37395a -> :sswitch_ec6
        0x77ba6b2b -> :sswitch_eba
        0x7ec2cd45 -> :sswitch_ed2
    .end sparse-switch

    :pswitch_data_2384
    .packed-switch 0x0
        :pswitch_f32
        :pswitch_f71
        :pswitch_fad
        :pswitch_fe9
        :pswitch_1026
        :pswitch_1063
        :pswitch_10a0
        :pswitch_10dd
        :pswitch_111a
        :pswitch_1157
        :pswitch_1194
        :pswitch_11cd
        :pswitch_1206
        :pswitch_1243
    .end packed-switch

    .line 1449
    :sswitch_data_23a4
    .sparse-switch
        -0x741f137a -> :sswitch_12ed
        -0x5d7bb47d -> :sswitch_12d5
        -0x44588ee5 -> :sswitch_12bd
        -0x420e1f50 -> :sswitch_12f9
        -0x208922d -> :sswitch_1299
        0x1b40829f -> :sswitch_12c9
        0x2e222643 -> :sswitch_12b1
        0x5a7559bf -> :sswitch_12e1
        0x6406da08 -> :sswitch_12a5
    .end sparse-switch

    :pswitch_data_23ca
    .packed-switch 0x0
        :pswitch_1306
        :pswitch_1333
        :pswitch_1371
        :pswitch_139b
        :pswitch_13c6
        :pswitch_13f1
        :pswitch_1425
        :pswitch_1450
        :pswitch_147b
    .end packed-switch

    .line 1565
    :sswitch_data_23e0
    .sparse-switch
        -0x678cfb16 -> :sswitch_1507
        -0x495e7741 -> :sswitch_1513
        -0x1abb5fa -> :sswitch_14cb
        0xf077a09 -> :sswitch_14fb
        0x1fa36ac0 -> :sswitch_14ef
        0x2f421cc3 -> :sswitch_14d7
        0x32574534 -> :sswitch_151f
        0x34565e5f -> :sswitch_14bf
        0x3ab3e61a -> :sswitch_14e3
    .end sparse-switch

    :pswitch_data_2406
    .packed-switch 0x0
        :pswitch_152c
        :pswitch_1557
        :pswitch_1594
        :pswitch_15e7
        :pswitch_1660
        :pswitch_16d9
        :pswitch_16f9
        :pswitch_1736
        :pswitch_17af
    .end packed-switch

    .line 1695
    :sswitch_data_241c
    .sparse-switch
        -0x76e9095f -> :sswitch_1851
        -0x755ab0b2 -> :sswitch_1837
        -0x69b477e0 -> :sswitch_17f9
        -0x5fd37362 -> :sswitch_1844
        -0x3d5118be -> :sswitch_17ed
        0x2fe3c227 -> :sswitch_181d
        0x3854fcc5 -> :sswitch_182a
        0x47a72ec2 -> :sswitch_1805
        0x7ac2a216 -> :sswitch_1811
    .end sparse-switch

    :pswitch_data_2442
    .packed-switch 0x0
        :pswitch_185e
        :pswitch_1897
        :pswitch_18e6
        :pswitch_190f
        :pswitch_1948
        :pswitch_196f
        :pswitch_198f
        :pswitch_17e9
        :pswitch_19d1
    .end packed-switch

    .line 1807
    :sswitch_data_2458
    .sparse-switch
        -0x793fada2 -> :sswitch_1a42
        -0x394ec066 -> :sswitch_1a2a
        0x1733e8eb -> :sswitch_1a36
        0x4e985da6 -> :sswitch_1a1e
        0x4fb7d6e9 -> :sswitch_1a12
    .end sparse-switch

    :pswitch_data_246e
    .packed-switch 0x0
        :pswitch_1a4e
        :pswitch_1a7b
        :pswitch_1ab3
        :pswitch_1aef
        :pswitch_1b2c
    .end packed-switch

    .line 1889
    :sswitch_data_247c
    .sparse-switch
        0x20839282 -> :sswitch_1b7e
        0x20e4e472 -> :sswitch_1b8a
        0x528665ad -> :sswitch_1ba2
        0x75693779 -> :sswitch_1b96
    .end sparse-switch

    :pswitch_data_248e
    .packed-switch 0x0
        :pswitch_1bae
        :pswitch_1be8
        :pswitch_1c22
        :pswitch_1c5c
    .end packed-switch

    .line 1965
    :sswitch_data_249a
    .sparse-switch
        -0x602f3b04 -> :sswitch_1caf
        -0x148747ff -> :sswitch_1cd3
        0x37b7b049 -> :sswitch_1cc7
        0x7a36baec -> :sswitch_1cbb
    .end sparse-switch

    :pswitch_data_24ac
    .packed-switch 0x0
        :pswitch_1cdf
        :pswitch_1d78
        :pswitch_1db0
        :pswitch_1de8
    .end packed-switch

    .line 2048
    :sswitch_data_24b8
    .sparse-switch
        -0xa355b0c -> :sswitch_1e2c
        -0x7ddb46f -> :sswitch_1e38
        0x9914b0 -> :sswitch_1e20
    .end sparse-switch

    :pswitch_data_24c6
    .packed-switch 0x0
        :pswitch_1e44
        :pswitch_1e85
        :pswitch_1ec3
    .end packed-switch

    .line 2117
    :sswitch_data_24d0
    .sparse-switch
        -0x7117b61 -> :sswitch_1f1b
        0x4fb7d6e9 -> :sswitch_1f27
    .end sparse-switch

    :pswitch_data_24da
    .packed-switch 0x0
        :pswitch_1f33
        :pswitch_1f74
    .end packed-switch

    .line 2161
    :sswitch_data_24e2
    .sparse-switch
        -0x7cedec35 -> :sswitch_1fcc
        0x30468cc8 -> :sswitch_1fd8
    .end sparse-switch

    :pswitch_data_24ec
    .packed-switch 0x0
        :pswitch_1fe4
        :pswitch_200d
    .end packed-switch

    .line 2195
    :sswitch_data_24f4
    .sparse-switch
        -0x5ed62634 -> :sswitch_206f
        0x655a3d46 -> :sswitch_2062
        0x705941e0 -> :sswitch_2056
        0x7378391a -> :sswitch_204a
    .end sparse-switch

    :pswitch_data_2506
    .packed-switch 0x0
        :pswitch_207c
        :pswitch_20b7
        :pswitch_20ef
        :pswitch_2126
    .end packed-switch

    .line 2264
    :pswitch_data_2512
    .packed-switch 0x208e5624
        :pswitch_2178
    .end packed-switch

    :pswitch_data_2518
    .packed-switch 0x0
        :pswitch_2184
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2348
    const/4 v0, 0x0

    return v0
.end method
