.class Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0

.field public static final cmdAlarm:I = 0x3

.field public static final cmdCall:I = 0x2

.field public static final cmdCamera:I = 0x7

.field public static final cmdCancel:I = 0x9

.field public static final cmdGallery:I = 0x8

.field public static final cmdMusic:I = 0x4

.field public static final cmdRadio:I = 0x5

.field public static final cmdVideo:I = 0x6

.field public static final cmdVoiceTalk_all:I = 0x0

.field public static final cmdVoiceTalk_schedule:I = 0x1

.field public static final cmdYesNo:I = 0xa


# instance fields
.field private AUDIO_RECORD_FOR_BARGE_IN:I

.field private AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

.field private AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field public BargeinAct:[S

.field private final RECOGNITION_WAIT_TIME:I

.field public TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

.field private aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public cmResult:[F

.field public consoleInitReturn:J

.field public consoleInitReturn_sub:J

.field public consoleResult:Ljava/lang/String;

.field public consoleResult_sub:Ljava/lang/String;

.field private defaultSensoryModelPath:Ljava/lang/String;

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field public f:Ljava/io/File;

.field public handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field public isEnableSamsungOOVResult:Z

.field public isMakePCM:Z

.field public isSASRInitProblem:Z

.field public isSensoryBargeInEnable:Z

.field public isSensoryCameraBargeIn:Z

.field public isSensoryResult:Z

.field public isSubModelBargeInEnable:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mEmbeddedEngineLanguage:I

.field public mFileOutputStream:Ljava/io/FileOutputStream;

.field public mLanguage:I

.field private m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

.field public modelPath:Ljava/lang/String;

.field private final newVersionSensoryBargeInSo64FilePath:Ljava/lang/String;

.field private final newVersionSensoryBargeInSoFilePath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field public rec:Landroid/media/AudioRecord;

.field private recogAfterReadCount:I

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public sensoryCMscore:F

.field public sensoryChineseCaptureCMTH:F

.field public sensoryChineseStopCMTH:F

.field public sensoryJapaneseShootCMTH:F

.field public sensoryKoreanShootCMTH:F

.field public sensoryKoreanStopCMTH:F

.field public sensoryResultValue:[F

.field public sensoryResultValue_sub:[F

.field public sensoryUKEnglishStopCMTH:F

.field public sensoryUSEnglishCaptureCMTH:F

.field public sensoryUSEnglishCheeseCMTH:F

.field public sensoryUSEnglishSnoozeCMTH:F

.field public sensoryUSEnglishStopCMTH:F

.field public speech:[S

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field public wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V
    .registers 14
    .param p1, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/high16 v4, 0x43c80000    # 400.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 27
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 28
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 29
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 30
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    .line 34
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    .line 37
    new-array v0, v5, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    .line 38
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [S

    const/4 v1, -0x1

    aput-short v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    .line 41
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 42
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    .line 43
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue_sub:[F

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 46
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 47
    const-string v0, "AudioTask"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    .line 50
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    .line 51
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 52
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 54
    const-string v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    .line 55
    const-string v0, "nameList_voicetalk_all.txt"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 56
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 58
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 72
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 73
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    .line 75
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 76
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    .line 77
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    .line 79
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 80
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->RECOGNITION_WAIT_TIME:I

    .line 83
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 84
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 86
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 88
    const-string v0, "/system/voicebargeindata/sensory"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 89
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_am_ko_kr_call_v2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 90
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_grammar_ko_kr_call_v2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 92
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_am_ko_kr_call_v2_2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 93
    const-string v0, "/system/voicebargeindata/sensory/ko_kr/samsung_bargein_grammar_ko_kr_call_v2_2.raw"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 95
    const-string v0, "/system/lib/libSensoryBargeInEngine.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->newVersionSensoryBargeInSoFilePath:Ljava/lang/String;

    .line 96
    const-string v0, "/system/lib64/libSensoryBargeInEngine.so"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->newVersionSensoryBargeInSo64FilePath:Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 99
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 100
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    .line 102
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 107
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 109
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    .line 110
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanStopCMTH:F

    .line 111
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    .line 112
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    .line 113
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    .line 114
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    .line 115
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    .line 116
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    .line 117
    iput v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    .line 118
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    .line 120
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 121
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 992
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask$1;-><init>(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)V

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    .line 125
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;)Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    return-object v0
.end method

.method private getAudioRecord(I)Landroid/media/AudioRecord;
    .registers 11
    .param p1, "source"    # I

    .prologue
    const/4 v8, 0x0

    .line 1597
    const/4 v7, 0x0

    .line 1598
    .local v7, "retAudioRecord":Landroid/media/AudioRecord;
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :try_start_9
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_16} :catch_a9
    .catchall {:try_start_9 .. :try_end_16} :catchall_118

    .line 1604
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v0, "retAudioRecord":Landroid/media/AudioRecord;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    .line 1606
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, got !initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    if-eqz v0, :cond_40

    .line 1608
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_40
    move-object v1, v8

    .line 1633
    :goto_41
    return-object v1

    .line 1612
    :cond_42
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got AudioRecord using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_89} :catch_11d
    .catchall {:try_start_16 .. :try_end_89} :catchall_11b

    .line 1632
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1633
    goto :goto_41

    .line 1615
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catch_a9
    move-exception v6

    move-object v0, v7

    .line 1617
    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_ab
    :try_start_ab
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=false, IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got IllegalArgumentException using source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", also "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-eqz v0, :cond_115

    .line 1622
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_115
    .catchall {:try_start_ab .. :try_end_115} :catchall_11b

    :cond_115
    move-object v1, v8

    .line 1624
    goto/16 :goto_41

    .line 1627
    .end local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    :catchall_118
    move-exception v1

    move-object v0, v7

    .end local v7    # "retAudioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "retAudioRecord":Landroid/media/AudioRecord;
    :goto_11a
    throw v1

    :catchall_11b
    move-exception v1

    goto :goto_11a

    .line 1615
    :catch_11d
    move-exception v6

    goto :goto_ab
.end method

.method public static twoBytesToShort(BB)S
    .registers 4
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 989
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public SendHandlerMessage([Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1009
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1012
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    return-void
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .registers 9
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 1249
    packed-switch p1, :pswitch_data_38a

    .line 1592
    :cond_8
    const/4 v0, -0x1

    :cond_9
    :goto_9
    return v0

    .line 1251
    :pswitch_a
    const-string/jumbo v1, "stop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    .line 1257
    :pswitch_14
    const-string v2, "next"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1261
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1263
    goto :goto_9

    .line 1267
    :pswitch_27
    const-string v2, "answer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1271
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1273
    goto :goto_9

    .line 1277
    :pswitch_3a
    const-string/jumbo v2, "stop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1281
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1283
    goto :goto_9

    .line 1287
    :pswitch_4e
    const-string v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1291
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v1

    .line 1293
    goto :goto_9

    .line 1295
    :cond_61
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v2

    .line 1297
    goto :goto_9

    .line 1299
    :cond_6c
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1301
    const/4 v0, 0x4

    goto :goto_9

    .line 1303
    :cond_77
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v3

    .line 1305
    goto :goto_9

    .line 1307
    :cond_82
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v3

    .line 1309
    goto/16 :goto_9

    .line 1311
    :cond_8e
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move v0, v3

    .line 1313
    goto/16 :goto_9

    .line 1315
    :cond_9a
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    move v0, v4

    .line 1317
    goto/16 :goto_9

    .line 1319
    :cond_a6
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v4

    .line 1321
    goto/16 :goto_9

    .line 1323
    :cond_b2
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1325
    goto/16 :goto_9

    .line 1329
    :pswitch_be
    const-string v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1333
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    move v0, v1

    .line 1335
    goto/16 :goto_9

    .line 1337
    :cond_d2
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    move v0, v2

    .line 1339
    goto/16 :goto_9

    .line 1341
    :cond_de
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1343
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1345
    :cond_ea
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    move v0, v3

    .line 1347
    goto/16 :goto_9

    .line 1349
    :cond_f6
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102

    move v0, v3

    .line 1351
    goto/16 :goto_9

    .line 1353
    :cond_102
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    move v0, v3

    .line 1355
    goto/16 :goto_9

    .line 1357
    :cond_10e
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a

    move v0, v4

    .line 1359
    goto/16 :goto_9

    .line 1361
    :cond_11a
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    move v0, v4

    .line 1363
    goto/16 :goto_9

    .line 1365
    :cond_126
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1367
    goto/16 :goto_9

    .line 1371
    :pswitch_132
    const-string v5, "next"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1375
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    move v0, v1

    .line 1377
    goto/16 :goto_9

    .line 1379
    :cond_146
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_152

    move v0, v2

    .line 1381
    goto/16 :goto_9

    .line 1383
    :cond_152
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1385
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1387
    :cond_15e
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    move v0, v3

    .line 1389
    goto/16 :goto_9

    .line 1391
    :cond_16a
    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    move v0, v3

    .line 1393
    goto/16 :goto_9

    .line 1395
    :cond_176
    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    move v0, v3

    .line 1397
    goto/16 :goto_9

    .line 1399
    :cond_182
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    move v0, v4

    .line 1401
    goto/16 :goto_9

    .line 1403
    :cond_18e
    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19a

    move v0, v4

    .line 1405
    goto/16 :goto_9

    .line 1407
    :cond_19a
    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 1409
    goto/16 :goto_9

    .line 1413
    :pswitch_1a6
    const-string/jumbo v5, "smile"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1417
    const-string v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    move v0, v1

    .line 1419
    goto/16 :goto_9

    .line 1421
    :cond_1ba
    const-string v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    move v0, v2

    .line 1423
    goto/16 :goto_9

    .line 1425
    :cond_1c5
    const-string/jumbo v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 1427
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1429
    :cond_1d1
    const-string/jumbo v0, "record video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    move v0, v3

    .line 1431
    goto/16 :goto_9

    .line 1433
    :cond_1dd
    const-string/jumbo v0, "record_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    move v0, v3

    .line 1435
    goto/16 :goto_9

    .line 1437
    :cond_1e9
    const-string/jumbo v0, "recordvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    move v0, v3

    .line 1439
    goto/16 :goto_9

    .line 1441
    :cond_1f5
    const-string v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_200

    move v0, v4

    .line 1443
    goto/16 :goto_9

    .line 1445
    :cond_200
    const-string v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20b

    move v0, v4

    .line 1447
    goto/16 :goto_9

    .line 1449
    :cond_20b
    const-string v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_216

    move v0, v4

    .line 1451
    goto/16 :goto_9

    .line 1453
    :cond_216
    const-string v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 1455
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1457
    :cond_221
    const-string v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 1459
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1461
    :cond_22c
    const-string v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 1463
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1465
    :cond_237
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 1467
    const/16 v0, 0x8

    goto/16 :goto_9

    .line 1469
    :cond_244
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 1471
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1473
    :cond_251
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 1475
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1477
    :cond_25e
    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 1479
    const/16 v0, 0x9

    goto/16 :goto_9

    .line 1481
    :cond_26b
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 1483
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1485
    :cond_278
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 1487
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1489
    :cond_285
    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_292

    .line 1491
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 1493
    :cond_292
    const-string v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 1495
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1497
    :cond_29e
    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2aa

    .line 1499
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1501
    :cond_2aa
    const-string v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    .line 1503
    const/16 v0, 0xb

    goto/16 :goto_9

    .line 1505
    :cond_2b6
    const-string v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 1507
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1509
    :cond_2c2
    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ce

    .line 1511
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1513
    :cond_2ce
    const-string v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2da

    .line 1515
    const/16 v0, 0xc

    goto/16 :goto_9

    .line 1517
    :cond_2da
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 1519
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1521
    :cond_2e7
    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    .line 1523
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1525
    :cond_2f4
    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_301

    .line 1527
    const/16 v0, 0xd

    goto/16 :goto_9

    .line 1529
    :cond_301
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1531
    const/16 v0, 0xe

    goto/16 :goto_9

    .line 1535
    :pswitch_30d
    const-string v5, "buddy photo share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1539
    const-string v5, "buddy_photo_share"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1543
    const-string v5, "buddyphotoshare"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1547
    const-string v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_330

    move v0, v1

    .line 1549
    goto/16 :goto_9

    .line 1551
    :cond_330
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33c

    move v0, v2

    .line 1553
    goto/16 :goto_9

    .line 1555
    :cond_33c
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_348

    .line 1557
    const/4 v0, 0x4

    goto/16 :goto_9

    .line 1559
    :cond_348
    const-string/jumbo v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_354

    move v0, v3

    .line 1561
    goto/16 :goto_9

    .line 1563
    :cond_354
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_360

    move v0, v4

    .line 1565
    goto/16 :goto_9

    .line 1567
    :cond_360
    const-string v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1569
    const/4 v0, 0x7

    goto/16 :goto_9

    .line 1573
    :pswitch_36b
    const-string v1, "cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_9

    .line 1579
    :pswitch_375
    const-string/jumbo v2, "yes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1583
    const-string v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1585
    goto/16 :goto_9

    .line 1249
    nop

    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_14
        :pswitch_27
        :pswitch_3a
        :pswitch_4e
        :pswitch_be
        :pswitch_132
        :pswitch_1a6
        :pswitch_30d
        :pswitch_36b
        :pswitch_375
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;Ljava/lang/String;IIZ)V
    .registers 14
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .param p7, "samsungOOVResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 134
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 135
    iput p2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 136
    iput p5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 139
    invoke-virtual {p0, p6, p5}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setSensoryFilePath(II)V

    .line 140
    iput-boolean p7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSensoryBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_85

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_28b

    .line 147
    :cond_85
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_ab

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_ab
    :goto_ab
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_d1

    .line 179
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_d1
    iput-object p3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 191
    iput-object p4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    .line 192
    iput p6, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setEmbeddedEngineLanguage()V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v5

    .line 198
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 199
    iput v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 201
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v1, :cond_fd

    .line 203
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    .line 206
    :try_start_f3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->f:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_fd} :catch_2b7

    .line 214
    :cond_fd
    :goto_fd
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_2bd

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_2bd

    .line 216
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 217
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 229
    :goto_111
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    .line 230
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    .line 233
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_320

    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_320

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 237
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_143

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    .line 242
    :cond_143
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_14e

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 247
    :cond_14e
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setFilePath(I)V

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_181

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 255
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_181

    .line 257
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 260
    :cond_181
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    packed-switch v1, :pswitch_data_48a

    .line 298
    :goto_1a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_313

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_1db
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_213

    .line 312
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_20d

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 318
    :cond_20d
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_213

    .line 320
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 323
    :cond_213
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_23a

    .line 327
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_23a

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 436
    :cond_23a
    :goto_23a
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRLoadModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSASRInitProblem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 154
    :cond_28b
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_ab

    .line 156
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_ab

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ab

    .line 208
    :catch_2b7
    move-exception v0

    .line 210
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_fd

    .line 219
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_2bd
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_2c9

    .line 221
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    goto/16 :goto_111

    .line 225
    :cond_2c9
    invoke-static {}, Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerWrapper;->getInstance()Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    goto/16 :goto_111

    .line 264
    :pswitch_2d1
    const-string v1, "nameList_voicetalk_all.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 267
    :pswitch_2d7
    const-string v1, "nameList_voicetalk_schedule.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 270
    :pswitch_2dd
    const-string v1, "nameList_call.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 273
    :pswitch_2e3
    const-string v1, "nameList_alarm.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 276
    :pswitch_2e9
    const-string v1, "nameList_music.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 279
    :pswitch_2ef
    const-string v1, "nameList_radio.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 282
    :pswitch_2f5
    const-string v1, "nameList_video.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 285
    :pswitch_2fb
    const-string v1, "nameList_camera.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 288
    :pswitch_301
    const-string v1, "nameList_gallery.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 291
    :pswitch_307
    const-string v1, "nameList_cancel.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 294
    :pswitch_30d
    const-string v1, "nameList_yesno.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1a0

    .line 304
    :cond_313
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_1db

    .line 333
    :cond_320
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_342

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    .line 337
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_23a

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    goto/16 :goto_23a

    .line 344
    :cond_342
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_34d

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SetSRLanguage(I)I

    .line 349
    :cond_34d
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->setFilePath(I)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_380

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    .line 357
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_380

    .line 359
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 362
    :cond_380
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    packed-switch v1, :pswitch_data_4a4

    .line 400
    :goto_39f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47d

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_3da
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_412

    .line 414
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_40c

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    .line 420
    :cond_40c
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    if-nez v1, :cond_412

    .line 422
    iput-boolean v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    .line 425
    :cond_412
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_23a

    .line 429
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_23a

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    goto/16 :goto_23a

    .line 366
    :pswitch_43b
    const-string v1, "nameList_voicetalk_all.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 369
    :pswitch_441
    const-string v1, "nameList_voicetalk_schedule.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 372
    :pswitch_447
    const-string v1, "nameList_call.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 375
    :pswitch_44d
    const-string v1, "nameList_alarm.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 378
    :pswitch_453
    const-string v1, "nameList_music.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 381
    :pswitch_459
    const-string v1, "nameList_radio.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 384
    :pswitch_45f
    const-string v1, "nameList_video.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 387
    :pswitch_465
    const-string v1, "nameList_camera.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 390
    :pswitch_46b
    const-string v1, "nameList_gallery.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 393
    :pswitch_471
    const-string v1, "nameList_cancel.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 396
    :pswitch_477
    const-string v1, "nameList_yesno.txt"

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_39f

    .line 406
    :cond_47d
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadNameList:Ljava/lang/String;

    goto/16 :goto_3da

    .line 262
    :pswitch_data_48a
    .packed-switch 0x0
        :pswitch_2d1
        :pswitch_2d7
        :pswitch_2dd
        :pswitch_2e3
        :pswitch_2e9
        :pswitch_2ef
        :pswitch_2f5
        :pswitch_2fb
        :pswitch_301
        :pswitch_307
        :pswitch_30d
    .end packed-switch

    .line 364
    :pswitch_data_4a4
    .packed-switch 0x0
        :pswitch_43b
        :pswitch_441
        :pswitch_447
        :pswitch_44d
        :pswitch_453
        :pswitch_459
        :pswitch_45f
        :pswitch_465
        :pswitch_46b
        :pswitch_471
        :pswitch_477
    .end packed-switch
.end method

.method public isBargeInFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1241
    const/4 v1, 0x1

    .line 1244
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method readByteBlock()I
    .registers 13

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-eqz v0, :cond_11

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 562
    const/4 v0, -0x1

    .line 985
    :goto_10
    return v0

    .line 565
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_22

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 569
    const/4 v0, -0x1

    goto :goto_10

    .line 572
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v0, :cond_38

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 578
    :cond_38
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_49

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 582
    const/4 v0, -0x1

    goto :goto_10

    .line 585
    :cond_49
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_81

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_81
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_bb

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nshorts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_bb
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    .line 597
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    if-eqz v0, :cond_cd

    .line 599
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 602
    :cond_cd
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_ce
    const/16 v0, 0x140

    if-ge v10, v0, :cond_100

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    div-int/lit8 v1, v10, 0x2

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    aget-byte v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v3, v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->twoBytesToShort(BB)S

    move-result v2

    aput-short v2, v0, v1

    .line 606
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    if-nez v0, :cond_ee

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    if-eqz v0, :cond_fd

    .line 608
    :cond_ee
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    div-int/lit8 v1, v10, 0x2

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    div-int/lit8 v3, v10, 0x2

    aget-short v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 602
    :cond_fd
    add-int/lit8 v10, v10, 0x2

    goto :goto_ce

    .line 612
    :cond_100
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_112

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 616
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 619
    :cond_112
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-lez v0, :cond_860

    .line 621
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isMakePCM:Z

    if-eqz v0, :cond_121

    .line 624
    :try_start_11a
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_121} :catch_133

    .line 631
    :cond_121
    :goto_121
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_138

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 635
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 625
    :catch_133
    move-exception v9

    .line 627
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_121

    .line 638
    .end local v9    # "e":Ljava/io/IOException;
    :cond_138
    const/4 v11, 0x0

    .line 640
    .local v11, "result":I
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_1b8

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1b8

    .line 642
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_153

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 646
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 649
    :cond_153
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v0, :cond_17f

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 653
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_17f

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue_sub:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    .line 659
    :cond_17f
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_191

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 663
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 666
    :cond_191
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_1a3

    .line 668
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1a3

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v11

    .line 719
    :cond_1a3
    :goto_1a3
    const/4 v0, -0x2

    if-ne v11, v0, :cond_25a

    .line 721
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_245

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 725
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 674
    :cond_1b8
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    if-eqz v0, :cond_21f

    .line 676
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_1ce

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section7"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 680
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 683
    :cond_1ce
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v0, :cond_1a3

    .line 685
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1dd

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_206

    .line 687
    :cond_1dd
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 689
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_1a3

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue_sub:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    goto :goto_1a3

    .line 694
    :cond_206
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1a3

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    iget-object v8, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    goto :goto_1a3

    .line 702
    :cond_21f
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_231

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section8"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 706
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 709
    :cond_231
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_1a3

    .line 711
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->totalReadCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_1a3

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->speech:[S

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->RECThread([S)I

    move-result v11

    goto/16 :goto_1a3

    .line 728
    :cond_245
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_25a

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 736
    :cond_25a
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_26c

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section10"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 740
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 743
    :cond_26c
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    if-eqz v0, :cond_469

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_33a

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33a

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_33a

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33a

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_31b
    :goto_31b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    .line 883
    :cond_321
    :goto_321
    const/4 v0, 0x2

    if-ne v11, v0, :cond_85c

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v0, :cond_833

    .line 887
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_69d

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 891
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 759
    :cond_33a
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35b

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_35b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35b

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31b

    .line 763
    :cond_35b
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_37c

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_37c

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31b

    .line 767
    :cond_37c
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_39e

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_39e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_39e

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 771
    :cond_39e
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c1

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c1

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c1

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c1

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 775
    :cond_3c1
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3e4

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e4

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e4

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3e4

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 779
    :cond_3e4
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_408

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_408

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_408

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_408

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 783
    :cond_408
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_42b

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_42b

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 789
    :cond_42b
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_436

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto/16 :goto_31b

    .line 793
    :cond_436
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_31b

    .line 795
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 797
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_31b

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_31b

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 809
    :cond_469
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_321

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    if-eqz v0, :cond_321

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryResultValue_sub:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "It is Recognized by Sub Model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_52b

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_52b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_52b

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_52b

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_523
    :goto_523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult:Ljava/lang/String;

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleResult_sub:Ljava/lang/String;

    goto/16 :goto_321

    .line 825
    :cond_52b
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_54c

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    if-nez v0, :cond_54c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_54c

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_523

    .line 829
    :cond_54c
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_56d

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_56d

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56d

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_56d

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_523

    .line 833
    :cond_56d
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_58e

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_58e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_58e

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_58e

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_523

    .line 837
    :cond_58e
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_5b0

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5b0

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b0

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCheeseCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5b0

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 841
    :cond_5b0
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_5d2

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5d2

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d2

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishCaptureCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d2

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 845
    :cond_5d2
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5f5

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f5

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f5

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f5

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 849
    :cond_5f5
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_618

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_618

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_618

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_618

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 853
    :cond_618
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_63c

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_63c

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_63c

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 857
    :cond_63c
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_65f

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65f

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_65f

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryCMscore:F

    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_65f

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 863
    :cond_65f
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_66a

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto/16 :goto_523

    .line 867
    :cond_66a
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_523

    .line 869
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->recogAfterReadCount:I

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 871
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_523

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_523

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_523

    .line 894
    :cond_69d
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->ResetFx()I

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->loadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sasr/input.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->numRecogResult:I

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 901
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_6e2

    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6fe

    .line 903
    :cond_6e2
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->utfResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 907
    :cond_6fe
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_796

    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_796

    .line 913
    const-wide v0, -0x4003333333333333L    # -1.8

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    .line 924
    :goto_76a
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_7a5

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section12"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 930
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 915
    :cond_796
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7a0

    .line 917
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_76a

    .line 921
    :cond_7a0
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    goto :goto_76a

    .line 933
    :cond_7a5
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_7e7

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_7e7

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_7e7

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedEngine Recognizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_7d5
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v0, :cond_82e

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 963
    const/4 v0, -0x1

    goto/16 :goto_10

    .line 938
    :cond_7e7
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_809

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_809

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TH-Reject"

    aput-object v2, v0, v1

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_7d5

    .line 948
    :cond_809
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->cmResult:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_81b

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_7d5

    .line 954
    :cond_81b
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TH-Reject"

    aput-object v2, v0, v1

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->strResult:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_7d5

    .line 966
    :cond_82e
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRReset()I

    .line 970
    :cond_833
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_85c

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_85c

    .line 972
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_85c

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set isSensoryResult = false. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .end local v11    # "result":I
    :cond_85c
    :goto_85c
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    goto/16 :goto_10

    .line 982
    :cond_860
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readNshorts is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " So do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85c
.end method

.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_c0

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_22
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-nez v1, :cond_2d

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readByteBlock()I

    .line 500
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    if-eqz v1, :cond_ba

    .line 516
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->stopBargeInAudioRecord()V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    if-eqz v1, :cond_64

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_5d

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;->SASRClose()I

    move-result v0

    .line 524
    .local v0, "SASRCloseReturn":I
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "SASRCloseReturn":I
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_64
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_96

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_7d

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 537
    :cond_7d
    iget-boolean v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_8e

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_8e

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 542
    :cond_8e
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_96
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aMMUIRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/MMUIRecognizer;

    .line 546
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 547
    iput-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->m_listener:Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 505
    :cond_ba
    iget v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    if-gtz v1, :cond_22

    goto/16 :goto_2d

    .line 513
    :cond_c0
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method

.method public setBlockSize(I)V
    .registers 2
    .param p1, "block_size"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->block_size:I

    .line 448
    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1638
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 1640
    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2b

    .line 1642
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    .line 1657
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return-void

    .line 1644
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_34

    .line 1646
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10

    .line 1648
    :cond_34
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3e

    .line 1650
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10

    .line 1652
    :cond_3e
    iget v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 1654
    iput v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_10
.end method

.method public setFilePath(I)V
    .registers 3
    .param p1, "language"    # I

    .prologue
    .line 1017
    packed-switch p1, :pswitch_data_70

    .line 1069
    :goto_3
    return-void

    .line 1019
    :pswitch_4
    const-string v0, "/sasr/kor/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1020
    const-string v0, "/sasr/kor/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1023
    :pswitch_d
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1024
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1027
    :pswitch_16
    const-string v0, "/sasr/chi/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1028
    const-string v0, "/sasr/chi/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1031
    :pswitch_1f
    const-string v0, "/sasr/spa/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1032
    const-string v0, "/sasr/spa/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1035
    :pswitch_28
    const-string v0, "/sasr/fra/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1036
    const-string v0, "/sasr/fra/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1039
    :pswitch_31
    const-string v0, "/sasr/ger/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1040
    const-string v0, "/sasr/ger/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1043
    :pswitch_3a
    const-string v0, "/sasr/ita/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1044
    const-string v0, "/sasr/ita/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1047
    :pswitch_43
    const-string v0, "/sasr/jap/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1048
    const-string v0, "/sasr/jap/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1051
    :pswitch_4c
    const-string v0, "/sasr/rus/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1052
    const-string v0, "/sasr/rus/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1055
    :pswitch_55
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1056
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1059
    :pswitch_5e
    const-string v0, "/sasr/eng/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1060
    const-string v0, "/sasr/eng/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1063
    :pswitch_67
    const-string v0, "/sasr/spa/16k/param"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->modelPath:Ljava/lang/String;

    .line 1064
    const-string v0, "/sasr/spa/16k/"

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->wordListPath:Ljava/lang/String;

    goto :goto_3

    .line 1017
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_4
        :pswitch_d
        :pswitch_16
        :pswitch_1f
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
        :pswitch_67
    .end packed-switch
.end method

.method public setSensoryFilePath(II)V
    .registers 12
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 1073
    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 1074
    .local v2, "sensoryModelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 1075
    .local v0, "sensoryGrammarPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 1076
    .local v3, "sensoryModelPath_sub":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->defaultSensoryModelPath:Ljava/lang/String;

    .line 1078
    .local v1, "sensoryGrammarPath_sub":Ljava/lang/String;
    packed-switch p1, :pswitch_data_5c6

    .line 1131
    :goto_d
    packed-switch p2, :pswitch_data_5e2

    .line 1202
    :goto_10
    invoke-virtual {p0, v2}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {p0, v0}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1204
    iput-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 1205
    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 1206
    const-string v4, "/system/lib/libSensoryBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1208
    :cond_30
    iput-boolean v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryBargeInEnable:Z

    .line 1210
    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    if-ne v4, v8, :cond_38

    .line 1212
    iput-boolean v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSensoryCameraBargeIn:Z

    .line 1217
    :cond_38
    invoke-virtual {p0, v3}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {p0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1219
    iput-boolean v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isSubModelBargeInEnable:Z

    .line 1220
    iput-object v3, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 1221
    iput-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 1223
    iget-object v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUB model is loaded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_66
    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    if-ne v4, v8, :cond_5bb

    .line 1228
    iput-boolean v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCameraBargeIn:Z

    .line 1236
    :cond_6c
    :goto_6c
    return-void

    .line 1080
    :pswitch_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ko_kr/samsung_bargein_am_ko_kr_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ko_kr/samsung_bargein_grammar_ko_kr_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    goto/16 :goto_d

    .line 1084
    :pswitch_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/en_us/samsung_bargein_am_en_us_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/en_us/samsung_bargein_grammar_en_us_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    goto/16 :goto_d

    .line 1088
    :pswitch_bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/zh_cn/samsung_bargein_am_zh_cn_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/zh_cn/samsung_bargein_grammar_zh_cn_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1090
    goto/16 :goto_d

    .line 1092
    :pswitch_e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/es_es/samsung_bargein_am_es_es_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/es_es/samsung_bargein_grammar_es_es_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    goto/16 :goto_d

    .line 1096
    :pswitch_10d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/fr_fr/samsung_bargein_am_fr_fr_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/fr_fr/samsung_bargein_grammar_fr_fr_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    goto/16 :goto_d

    .line 1100
    :pswitch_135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/de_de/samsung_bargein_am_de_de_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/de_de/samsung_bargein_grammar_de_de_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    goto/16 :goto_d

    .line 1104
    :pswitch_15d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/it_it/samsung_bargein_am_it_it_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/it_it/samsung_bargein_grammar_it_it_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    goto/16 :goto_d

    .line 1108
    :pswitch_185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ja_jp/samsung_bargein_am_ja_jp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ja_jp/samsung_bargein_grammar_ja_jp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    goto/16 :goto_d

    .line 1112
    :pswitch_1ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ru_ru/samsung_bargein_am_ru_ru_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ru_ru/samsung_bargein_grammar_ru_ru_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    goto/16 :goto_d

    .line 1116
    :pswitch_1d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pt_br/samsung_bargein_am_pt_br_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/pt_br/samsung_bargein_grammar_pt_br_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1118
    goto/16 :goto_d

    .line 1120
    :pswitch_1fd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/en_uk/samsung_bargein_am_en_uk_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/en_uk/samsung_bargein_grammar_en_uk_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    goto/16 :goto_d

    .line 1124
    :pswitch_225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/es_la/samsung_bargein_am_es_la_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/es_la/samsung_bargein_grammar_es_la_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    goto/16 :goto_d

    .line 1133
    :pswitch_24d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "stop_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "stop_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "stop_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "stop_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    goto/16 :goto_10

    .line 1139
    :pswitch_29f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "schedule_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    goto/16 :goto_10

    .line 1145
    :pswitch_2f1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "call_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    goto/16 :goto_10

    .line 1151
    :pswitch_33f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarm_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarm_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarm_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarm_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    goto/16 :goto_10

    .line 1157
    :pswitch_38d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "music_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    goto/16 :goto_10

    .line 1163
    :pswitch_3db
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "radio_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "radio_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "radio_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "radio_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    goto/16 :goto_10

    .line 1169
    :pswitch_42d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "video_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "video_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "video_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "video_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    goto/16 :goto_10

    .line 1175
    :pswitch_47f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    goto/16 :goto_10

    .line 1181
    :pswitch_4cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gallery_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gallery_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gallery_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gallery_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1185
    goto/16 :goto_10

    .line 1187
    :pswitch_51b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cancel_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cancel_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cancel_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cancel_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    goto/16 :goto_10

    .line 1193
    :pswitch_569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yesno_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yesno_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yesno_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "yesno_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    goto/16 :goto_10

    .line 1231
    :cond_5bb
    iget v4, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->mCommandType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_6c

    .line 1233
    iput-boolean v7, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->isCancelBargeIn:Z

    goto/16 :goto_6c

    .line 1078
    nop

    :pswitch_data_5c6
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_95
        :pswitch_bd
        :pswitch_e5
        :pswitch_10d
        :pswitch_135
        :pswitch_15d
        :pswitch_185
        :pswitch_1ad
        :pswitch_1d5
        :pswitch_1fd
        :pswitch_225
    .end packed-switch

    .line 1131
    :pswitch_data_5e2
    .packed-switch 0x0
        :pswitch_24d
        :pswitch_29f
        :pswitch_2f1
        :pswitch_33f
        :pswitch_38d
        :pswitch_3db
        :pswitch_42d
        :pswitch_47f
        :pswitch_4cd
        :pswitch_51b
        :pswitch_569
    .end packed-switch
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->done:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->readNshorts:I

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3d

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/IWSpeechRecognizer/AudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method
