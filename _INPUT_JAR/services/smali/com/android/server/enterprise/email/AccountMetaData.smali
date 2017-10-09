.class Lcom/android/server/enterprise/email/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final DPM_POLICIES_ACCOUNTID:Ljava/lang/String; = "account_id"

.field public static final DPM_POLICIES_ID:Ljava/lang/String; = "_id"

.field public static final DPM_POLICIES_POLICYNAME:Ljava/lang/String; = "name"

.field public static final DPM_POLICIES_POLICYNAME_ALLOWHTMLEMAIL:Ljava/lang/String; = "AllowHTMLEmail"

.field public static final DPM_POLICIES_POLICYTYPE:Ljava/lang/String; = "type"

.field public static final DPM_POLICIES_POLICYVALUE:Ljava/lang/String; = "value"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final IS_SIGNATURE_EDITED:Ljava/lang/String; = "isSignatureEdited"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_CALENDAR_LOOKBACK:Ljava/lang/String; = "calendarSyncLookback"

.field public static final SYNC_EMAIL_ROAMING_TRUNCATIONSIZE:Ljava/lang/String; = "roamingemailsize"

.field public static final SYNC_EMAIL_TRUNCATIONSIZE:Ljava/lang/String; = "emailsize"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mAllowHTMLEmail:Z

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailBodyTruncationSize:I

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mEmailRoamingBodyTruncationSize:I

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncCalendarAge:I

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 292
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "inComingProtocol"    # Ljava/lang/String;
    .param p3, "inComingServerAddress"    # Ljava/lang/String;
    .param p4, "inComingServerPort"    # I
    .param p5, "inComingServerLogin"    # Ljava/lang/String;
    .param p6, "inComingServerPassword"    # Ljava/lang/String;
    .param p7, "outGoingProtocol"    # Ljava/lang/String;
    .param p8, "outGoingServerAddress"    # Ljava/lang/String;
    .param p9, "outGoingServerPort"    # I
    .param p10, "outGoingServerLogin"    # Ljava/lang/String;
    .param p11, "outGoingServerPassword"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 303
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 305
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 315
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 316
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 317
    iput p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 321
    iput-object p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 322
    iput-object p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 324
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 325
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 326
    iput p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 330
    iput-object p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 331
    iput-object p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .registers 21
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "syncLookback"    # I
    .param p6, "syncInterval"    # I
    .param p7, "senderName"    # Ljava/lang/String;
    .param p8, "protocolVersion"    # Ljava/lang/String;
    .param p9, "signature"    # Ljava/lang/String;
    .param p10, "emailNotificationVibrateAlways"    # Z
    .param p11, "emailNotificationVibrateWhenSilent"    # Z
    .param p12, "serverAddress"    # Ljava/lang/String;
    .param p13, "useSSL"    # Z
    .param p14, "acceptAllCertificates"    # Z
    .param p15, "serverPassword"    # Ljava/lang/String;
    .param p16, "isDefault"    # Z

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 348
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 349
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 350
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 351
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 352
    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 353
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 354
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 355
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 356
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 357
    const/4 v2, 0x1

    if-gt v2, p5, :cond_26

    const/4 v2, 0x6

    if-ge v2, p5, :cond_27

    :cond_26
    const/4 p5, 0x1

    .end local p5    # "syncLookback":I
    :cond_27
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 364
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 366
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 367
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 368
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 369
    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 370
    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 371
    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 372
    const-string v2, "eas"

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 374
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 375
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 376
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 377
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 378
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 379
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 380
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 381
    const-string v2, "eas"

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 383
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 384
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 385
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 386
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 387
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 389
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 391
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 392
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 393
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 394
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 395
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 396
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 397
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 398
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 399
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .registers 28
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "syncLookback"    # I
    .param p6, "syncInterval"    # I
    .param p7, "senderName"    # Ljava/lang/String;
    .param p8, "protocolVersion"    # Ljava/lang/String;
    .param p9, "signature"    # Ljava/lang/String;
    .param p10, "emailNotificationVibrateAlways"    # Z
    .param p11, "emailNotificationVibrateWhenSilent"    # Z
    .param p12, "serverAddress"    # Ljava/lang/String;
    .param p13, "useSSL"    # Z
    .param p14, "acceptAllCertificates"    # Z
    .param p15, "serverPassword"    # Ljava/lang/String;
    .param p16, "isDefault"    # Z
    .param p17, "peakDays"    # I
    .param p18, "peakStartMinute"    # I
    .param p19, "peakEndMinute"    # I
    .param p20, "peakSyncSchedule"    # I
    .param p21, "roamingSyncSchedule"    # I
    .param p22, "retrivalSize"    # I
    .param p23, "notify"    # Z

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 409
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 410
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 411
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 413
    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 414
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 415
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 416
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 418
    const/4 v2, 0x1

    if-gt v2, p5, :cond_26

    const/4 v2, 0x6

    if-ge v2, p5, :cond_27

    :cond_26
    const/4 p5, 0x1

    .end local p5    # "syncLookback":I
    :cond_27
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 425
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 427
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 428
    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 429
    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 430
    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 431
    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 432
    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 433
    const-string v2, "eas"

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 435
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 436
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 437
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 438
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 439
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 440
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 441
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 442
    const-string v2, "eas"

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 443
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 444
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 445
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 447
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 448
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 449
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 450
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 452
    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 453
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 454
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 455
    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 456
    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 457
    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 458
    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    .line 459
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    .line 460
    return-void
.end method
