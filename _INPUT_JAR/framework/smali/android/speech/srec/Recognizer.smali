.class public final Landroid/speech/srec/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/srec/Recognizer$Grammar;
    }
.end annotation


# static fields
.field public static final EVENT_END_OF_VOICING:I = 0x6

.field public static final EVENT_INCOMPLETE:I = 0x2

.field public static final EVENT_INVALID:I = 0x0

.field public static final EVENT_MAX_SPEECH:I = 0xc

.field public static final EVENT_NEED_MORE_AUDIO:I = 0xb

.field public static final EVENT_NO_MATCH:I = 0x1

.field public static final EVENT_RECOGNITION_RESULT:I = 0x8

.field public static final EVENT_RECOGNITION_TIMEOUT:I = 0xa

.field public static final EVENT_SPOKE_TOO_SOON:I = 0x7

.field public static final EVENT_STARTED:I = 0x3

.field public static final EVENT_START_OF_UTTERANCE_TIMEOUT:I = 0x9

.field public static final EVENT_START_OF_VOICING:I = 0x5

.field public static final EVENT_STOPPED:I = 0x4

.field public static final KEY_CONFIDENCE:Ljava/lang/String; = "conf"

.field public static final KEY_LITERAL:Ljava/lang/String; = "literal"

.field public static final KEY_MEANING:Ljava/lang/String; = "meaning"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

.field private mPutAudioBuffer:[B

.field private mRecognizer:J

.field private mVocabulary:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    const-string v0, "Recognizer"

    sput-object v0, Landroid/speech/srec/Recognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "configFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide v2, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    .line 129
    iput-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 132
    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 318
    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    .line 164
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemInit()V

    .line 165
    invoke-static {p1}, Landroid/speech/srec/Recognizer;->SR_SessionCreate(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_RecognizerCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 167
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerSetup(J)V

    .line 168
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_VocabularyLoad()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    .line 169
    return-void
.end method

.method private static native PMemInit()V
.end method

.method private static native PMemShutdown()V
.end method

.method private static native SR_AcousticStateGet(J)Ljava/lang/String;
.end method

.method private static native SR_AcousticStateReset(J)V
.end method

.method private static native SR_AcousticStateSet(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarAddWordToSlot(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native SR_GrammarAllowAll(J)V
.end method

.method private static native SR_GrammarAllowOnly(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarCompile(J)V
.end method

.method private static native SR_GrammarCreate()J
.end method

.method private static native SR_GrammarDestroy(J)V
.end method

.method private static native SR_GrammarLoad(Ljava/lang/String;)J
.end method

.method private static native SR_GrammarResetAllSlots(J)V
.end method

.method private static native SR_GrammarSave(JLjava/lang/String;)V
.end method

.method private static native SR_GrammarSetupRecognizer(JJ)V
.end method

.method private static native SR_GrammarSetupVocabulary(JJ)V
.end method

.method private static native SR_GrammarUnsetupRecognizer(J)V
.end method

.method private static native SR_RecognizerActivateRule(JJLjava/lang/String;I)V
.end method

.method private static native SR_RecognizerAdvance(J)I
.end method

.method private static native SR_RecognizerCheckGrammarConsistency(JJ)Z
.end method

.method private static native SR_RecognizerCreate()J
.end method

.method private static native SR_RecognizerDeactivateAllRules(J)V
.end method

.method private static native SR_RecognizerDeactivateRule(JJLjava/lang/String;)V
.end method

.method private static native SR_RecognizerDestroy(J)V
.end method

.method private static native SR_RecognizerGetBoolParameter(JLjava/lang/String;)Z
.end method

.method private static native SR_RecognizerGetParameter(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerGetSize_tParameter(JLjava/lang/String;)I
.end method

.method private static native SR_RecognizerHasSetupRules(J)Z
.end method

.method private static native SR_RecognizerIsActiveRule(JJLjava/lang/String;)Z
.end method

.method private static native SR_RecognizerIsSetup(J)Z
.end method

.method private static native SR_RecognizerIsSignalClipping(J)Z
.end method

.method private static native SR_RecognizerIsSignalDCOffset(J)Z
.end method

.method private static native SR_RecognizerIsSignalNoisy(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooFewSamples(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooManySamples(J)Z
.end method

.method private static native SR_RecognizerIsSignalTooQuiet(J)Z
.end method

.method private static native SR_RecognizerPutAudio(J[BIIZ)I
.end method

.method private static native SR_RecognizerResultGetKeyCount(JI)I
.end method

.method private static native SR_RecognizerResultGetKeyList(JI)[Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetSize(J)I
.end method

.method private static native SR_RecognizerResultGetValue(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_RecognizerResultGetWaveform(J)[B
.end method

.method private static native SR_RecognizerSetBoolParameter(JLjava/lang/String;Z)V
.end method

.method private static native SR_RecognizerSetParameter(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native SR_RecognizerSetSize_tParameter(JLjava/lang/String;I)V
.end method

.method private static native SR_RecognizerSetup(J)V
.end method

.method private static native SR_RecognizerSetupRule(JJLjava/lang/String;)V
.end method

.method private static native SR_RecognizerStart(J)V
.end method

.method private static native SR_RecognizerStop(J)V
.end method

.method private static native SR_RecognizerUnsetup(J)V
.end method

.method private static native SR_SessionCreate(Ljava/lang/String;)V
.end method

.method private static native SR_SessionDestroy()V
.end method

.method private static native SR_VocabularyDestroy(J)V
.end method

.method private static native SR_VocabularyGetPronunciation(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native SR_VocabularyLoad()J
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/speech/srec/Recognizer;)J
    .registers 3
    .param p0, "x0"    # Landroid/speech/srec/Recognizer;

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    return-wide v0
.end method

.method static synthetic access$1000(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 103
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(J)V

    return-void
.end method

.method static synthetic access$200(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 103
    invoke-static {p0, p1, p2, p3}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(JJ)V

    return-void
.end method

.method static synthetic access$300(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 103
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(J)V

    return-void
.end method

.method static synthetic access$400(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static/range {p0 .. p6}, Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 103
    invoke-static {p0, p1}, Landroid/speech/srec/Recognizer;->SR_GrammarCompile(J)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/srec/Recognizer;)J
    .registers 3
    .param p0, "x0"    # Landroid/speech/srec/Recognizer;

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    return-wide v0
.end method

.method static synthetic access$700(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 103
    invoke-static {p0, p1, p2, p3}, Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(JJ)V

    return-void
.end method

.method static synthetic access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;
    .registers 2
    .param p0, "x0"    # Landroid/speech/srec/Recognizer;
    .param p1, "x1"    # Landroid/speech/srec/Recognizer$Grammar;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    return-object p1
.end method

.method static synthetic access$900(JLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Landroid/speech/srec/Recognizer;->SR_GrammarSave(JLjava/lang/String;)V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "event"    # I

    .prologue
    .line 570
    packed-switch p0, :pswitch_data_3e

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 572
    :pswitch_17
    const-string v0, "EVENT_INVALID"

    goto :goto_16

    .line 574
    :pswitch_1a
    const-string v0, "EVENT_NO_MATCH"

    goto :goto_16

    .line 576
    :pswitch_1d
    const-string v0, "EVENT_INCOMPLETE"

    goto :goto_16

    .line 578
    :pswitch_20
    const-string v0, "EVENT_STARTED"

    goto :goto_16

    .line 580
    :pswitch_23
    const-string v0, "EVENT_STOPPED"

    goto :goto_16

    .line 582
    :pswitch_26
    const-string v0, "EVENT_START_OF_VOICING"

    goto :goto_16

    .line 584
    :pswitch_29
    const-string v0, "EVENT_END_OF_VOICING"

    goto :goto_16

    .line 586
    :pswitch_2c
    const-string v0, "EVENT_SPOKE_TOO_SOON"

    goto :goto_16

    .line 588
    :pswitch_2f
    const-string v0, "EVENT_RECOGNITION_RESULT"

    goto :goto_16

    .line 590
    :pswitch_32
    const-string v0, "EVENT_START_OF_UTTERANCE_TIMEOUT"

    goto :goto_16

    .line 592
    :pswitch_35
    const-string v0, "EVENT_RECOGNITION_TIMEOUT"

    goto :goto_16

    .line 594
    :pswitch_38
    const-string v0, "EVENT_NEED_MORE_AUDIO"

    goto :goto_16

    .line 596
    :pswitch_3b
    const-string v0, "EVENT_MAX_SPEECH"

    goto :goto_16

    .line 570
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public static getConfigDir(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 144
    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 145
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/usr/srec/config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "dir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 148
    .end local v0    # "dir":Ljava/lang/String;
    :goto_34
    return-object v0

    .restart local v0    # "dir":Ljava/lang/String;
    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method


# virtual methods
.method public advance()I
    .registers 3

    .prologue
    .line 282
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerAdvance(J)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 402
    :try_start_2
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_VocabularyDestroy(J)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_6b

    .line 404
    :cond_d
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    .line 406
    :try_start_f
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(J)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_42

    .line 409
    :cond_1a
    :try_start_1a
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_25

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_33

    .line 411
    :cond_25
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_27
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    .line 420
    return-void

    .line 415
    :catchall_2e
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_33
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_36
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_3d
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 408
    :catchall_42
    move-exception v0

    .line 409
    :try_start_43
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4e

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_5c

    .line 411
    :cond_4e
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_50
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_57
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_5c
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_5f
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_66
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 404
    :catchall_6b
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    .line 406
    :try_start_6e
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_79

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerUnsetup(J)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_a1

    .line 409
    :cond_79
    :try_start_79
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_84

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_92

    .line 411
    :cond_84
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_86
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8d

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_8d
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_92
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_95
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9c

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_9c
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 408
    :catchall_a1
    move-exception v0

    .line 409
    :try_start_a2
    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_ad

    iget-wide v2, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v2, v3}, Landroid/speech/srec/Recognizer;->SR_RecognizerDestroy(J)V
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_bb

    .line 411
    :cond_ad
    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_af
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b6

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_b6
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    .line 411
    :catchall_bb
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    .line 413
    :try_start_be
    invoke-static {}, Landroid/speech/srec/Recognizer;->SR_SessionDestroy()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c5

    .line 415
    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0

    :catchall_c5
    move-exception v0

    invoke-static {}, Landroid/speech/srec/Recognizer;->PMemShutdown()V

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 426
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mVocabulary:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 427
    :cond_e
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer;->destroy()V

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Recognizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1a
    return-void
.end method

.method public getAcousticState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 394
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateGet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1, p2}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetValue(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCount()I
    .registers 3

    .prologue
    .line 328
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetSize(J)I

    move-result v0

    return v0
.end method

.method public getResultKeys(I)[Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 340
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1}, Landroid/speech/srec/Recognizer;->SR_RecognizerResultGetKeyList(JI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAudio([BIIZ)I
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isLast"    # Z

    .prologue
    .line 294
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    move-result v0

    return v0
.end method

.method public putAudio(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "audio"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    if-nez v0, :cond_b

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    .line 306
    :cond_b
    iget-object v0, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 308
    .local v4, "nbytes":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1e

    .line 309
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    const/4 v5, 0x1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    .line 315
    .end local v4    # "nbytes":I
    :cond_1d
    return-void

    .line 312
    .restart local v4    # "nbytes":I
    :cond_1e
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mPutAudioBuffer:[B

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerPutAudio(J[BIIZ)I

    move-result v0

    if-eq v4, v0, :cond_1d

    .line 313
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR_RecognizerPutAudio failed nbytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetAcousticState()V
    .registers 3

    .prologue
    .line 374
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateReset(J)V

    .line 375
    return-void
.end method

.method public setAcousticState(Ljava/lang/String;)V
    .registers 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1, p1}, Landroid/speech/srec/Recognizer;->SR_AcousticStateSet(JLjava/lang/String;)V

    .line 385
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 258
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    # getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J
    invoke-static {v2}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)J

    move-result-wide v2

    const-string/jumbo v4, "trash"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->SR_RecognizerActivateRule(JJLjava/lang/String;I)V

    .line 259
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerStart(J)V

    .line 260
    return-void
.end method

.method public stop()V
    .registers 6

    .prologue
    .line 364
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->SR_RecognizerStop(J)V

    .line 365
    iget-wide v0, p0, Landroid/speech/srec/Recognizer;->mRecognizer:J

    iget-object v2, p0, Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;

    # getter for: Landroid/speech/srec/Recognizer$Grammar;->mGrammar:J
    invoke-static {v2}, Landroid/speech/srec/Recognizer$Grammar;->access$1100(Landroid/speech/srec/Recognizer$Grammar;)J

    move-result-wide v2

    const-string/jumbo v4, "trash"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/speech/srec/Recognizer;->SR_RecognizerDeactivateRule(JJLjava/lang/String;)V

    .line 366
    return-void
.end method
