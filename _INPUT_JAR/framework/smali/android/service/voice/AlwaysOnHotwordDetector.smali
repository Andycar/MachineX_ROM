.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$1;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field public static final MANAGE_ACTION_ENROLL:I = 0x0

.field public static final MANAGE_ACTION_RE_ENROLL:I = 0x1

.field public static final MANAGE_ACTION_UN_ENROLL:I = 0x2

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_HOTWORD_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final STATE_INVALID:I = -0x3

.field public static final STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final STATE_KEYPHRASE_UNSUPPORTED:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"


# instance fields
.field private mAvailability:I

.field private final mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private final mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private final mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private final mText:Ljava/lang/String;

.field private final mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .param p4, "keyphraseEnrollmentInfo"    # Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .param p5, "voiceInteractionService"    # Landroid/service/voice/IVoiceInteractionService;
    .param p6, "modelManagementService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    .line 199
    iput v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 339
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    .line 341
    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 342
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 343
    iput-object p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 344
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 345
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 346
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    .line 347
    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 348
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method

.method static synthetic access$100(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return v0
.end method

.method static synthetic access$202(Landroid/service/voice/AlwaysOnHotwordDetector;I)I
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p1
.end method

.method static synthetic access$300(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 1
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    return-void
.end method

.method static synthetic access$700(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 2
    .param p0, "x0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object v0
.end method

.method private getManageIntentLocked(I)Landroid/content/Intent;
    .registers 5
    .param p1, "action"    # I

    .prologue
    .line 512
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_d

    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getManageIntent called on an invalid detector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_d
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 519
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1f
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedRecognitionModesLocked()I
    .registers 3

    .prologue
    .line 372
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_d

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSupportedRecognitionModes called on an invalid detector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_d
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1f
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v0, v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    return v0
.end method

.method private notifyStateChangedLocked()V
    .registers 4

    .prologue
    .line 605
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 606
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 607
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 608
    return-void
.end method

.method private startRecognitionLocked(I)I
    .registers 14
    .param p1, "recognitionFlags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 566
    new-array v10, v6, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 568
    .local v10, "recognitionExtra":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v3, v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    new-array v4, v0, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v1, v10, v0

    .line 570
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_56

    move v7, v6

    .line 572
    .local v7, "captureTriggerAudio":Z
    :goto_1a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_58

    .line 574
    .local v6, "allowMultipleTriggers":Z
    :goto_1e
    const/high16 v8, -0x80000000

    .line 576
    .local v8, "code":I
    :try_start_20
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    const/4 v11, 0x0

    invoke-direct {v5, v7, v6, v10, v11}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_39} :catch_5a

    move-result v8

    .line 583
    :goto_3a
    if-eqz v8, :cond_55

    .line 584
    const-string v0, "AlwaysOnHotwordDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecognition() failed with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_55
    return v8

    .end local v6    # "allowMultipleTriggers":Z
    .end local v7    # "captureTriggerAudio":Z
    .end local v8    # "code":I
    :cond_56
    move v7, v0

    .line 570
    goto :goto_1a

    .restart local v7    # "captureTriggerAudio":Z
    :cond_58
    move v6, v0

    .line 572
    goto :goto_1e

    .line 580
    .restart local v6    # "allowMultipleTriggers":Z
    .restart local v8    # "code":I
    :catch_5a
    move-exception v9

    .line 581
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "AlwaysOnHotwordDetector"

    const-string v1, "RemoteException in startRecognition!"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method private stopRecognitionLocked()I
    .registers 7

    .prologue
    .line 590
    const/high16 v0, -0x80000000

    .line 592
    .local v0, "code":I
    :try_start_2
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v4, v4, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_2c

    move-result v0

    .line 598
    :goto_10
    if-eqz v0, :cond_2b

    .line 599
    const-string v2, "AlwaysOnHotwordDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognition() failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_2b
    return v0

    .line 594
    :catch_2c
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AlwaysOnHotwordDetector"

    const-string v3, "RemoteException in stopRecognition!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method


# virtual methods
.method public createEnrollIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 464
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 466
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public createReEnrollIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 506
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 508
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public createUnEnrollIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 485
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 487
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 756
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Text="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Locale="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Availability="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 760
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyphraseMetadata="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "EnrollmentInfo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 762
    monitor-exit v1

    .line 763
    return-void

    .line 762
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public getSupportedRecognitionModes()I
    .registers 3

    .prologue
    .line 366
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 368
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method invalidate()V
    .registers 3

    .prologue
    .line 533
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    const/4 v0, -0x3

    :try_start_4
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 535
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 536
    monitor-exit v1

    .line 537
    return-void

    .line 536
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method onSoundModelsChanged()V
    .registers 4

    .prologue
    .line 545
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_3
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 549
    :cond_12
    const-string v0, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    monitor-exit v1

    .line 563
    :goto_1a
    return-void

    .line 558
    :cond_1b
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    .line 561
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 562
    monitor-exit v1

    goto :goto_1a

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public startRecognition(I)Z
    .registers 5
    .param p1, "recognitionFlags"    # I

    .prologue
    .line 404
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_3
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_14

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecognition called on an invalid detector"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 410
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_21
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I)I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_11

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public stopRecognition()Z
    .registers 4

    .prologue
    .line 432
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_3
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_14

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 438
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_21
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_11

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_28
.end method
