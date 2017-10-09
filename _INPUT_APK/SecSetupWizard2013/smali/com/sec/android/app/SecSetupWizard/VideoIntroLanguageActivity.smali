.class public Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;
.super Landroid/app/Activity;
.source "VideoIntroLanguageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;,
        Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private accessibilitylistenner:Landroid/view/View$OnClickListener;

.field private flayout:Landroid/widget/FrameLayout;

.field private languageSpi:Landroid/widget/Spinner;

.field private mAccessibilityModeEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mEnableListSelectionColor:Z

.field private mFinishedWarning:Z

.field private mLayoutWelcome:Landroid/widget/LinearLayout;

.field private mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

.field private mLocaleRTL:Z

.field private final mLongPressHandler:Landroid/os/Handler;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mTone:Landroid/media/Ringtone;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private mUpdateLocaleRunnable:Ljava/lang/Runnable;

.field private mVideoIntro:Landroid/widget/VideoView;

.field private mVideoIntroButton:Landroid/widget/LinearLayout;

.field private final mWarningHandler:Landroid/os/Handler;

.field private preNfc:Z

.field private touch_mode:I

.field video:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->DEBUG:Z

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->preNfc:Z

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleRTL:Z

    .line 137
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 142
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mWarningHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 164
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mEnableListSelectionColor:Z

    .line 166
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    .line 594
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$8;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    .line 817
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->onWarningSpoken()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->onLongPress()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->isNorthAmerica()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->afterWarningDelay()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mEnableListSelectionColor:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleRTL:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    return-object v0
.end method

.method private afterWarningDelay()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->enableAllAccessibilityServices()V

    .line 431
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    .line 432
    return-void
.end method

.method private enableAllAccessibilityServices()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 876
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 879
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x7

    invoke-direct {p0, p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->isTalkbackAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 882
    :cond_0
    const-string v2, "enabled_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 883
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 884
    const-string v2, "touch_exploration_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 885
    const-string v2, "accessibility_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    const-string v2, "accessibility_script_injection"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 888
    const/16 v2, 0xff

    invoke-static {p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 889
    iput-boolean v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 890
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 893
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const v3, 0x7f0b000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 894
    return-void
.end method

.method private getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramInt"    # I

    .prologue
    .line 898
    const-string v5, "accessibility"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 899
    .local v2, "localList":Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v4, "localStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 901
    .local v1, "localIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 904
    .local v0, "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v5, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 907
    .local v3, "localServiceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 913
    .end local v0    # "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "localServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 914
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 915
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p3, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 673
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    aget-object v2, p3, v1

    .line 678
    :goto_1
    return-object v2

    .line 672
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 472
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 474
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initLanguageSpinner()V
    .locals 4

    .prologue
    .line 407
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    .line 410
    .local v1, "li":Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    .end local v1    # "li":Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 15

    .prologue
    const v14, 0x7f0b0028

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 302
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    .line 303
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    .line 304
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntroButton:Landroid/widget/LinearLayout;

    .line 305
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    .line 306
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLayoutWelcome:Landroid/widget/LinearLayout;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    const v3, 0x7f030010

    const v4, 0x7f0d004e

    invoke-direct {p0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->language(Landroid/content/Context;)[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;Landroid/content/Context;II[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 313
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 315
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    .line 317
    .local v9, "li":Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    invoke-virtual {v9}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 315
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 323
    .end local v8    # "i":I
    .end local v9    # "li":Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    :cond_1
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 324
    .local v10, "nextBtnArea":Landroid/widget/LinearLayout;
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 325
    .local v11, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$6;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "desc_tts":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 346
    .local v6, "button":Landroid/widget/Button;
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 350
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTone:Landroid/media/Ringtone;

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_3

    .line 356
    iput-boolean v13, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 357
    iput-boolean v13, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    .line 362
    :goto_1
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoIntroLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, v12}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 367
    :goto_2
    return-void

    .line 359
    :cond_3
    iput-boolean v12, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 360
    iput-boolean v12, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    goto :goto_1

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initViewsForNA()V
    .locals 4

    .prologue
    .line 285
    const v2, 0x7f0d004d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    .local v0, "learn":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$5;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method private isNorthAmerica()Z
    .locals 3

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":Z
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TMB"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XAS"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x1

    .line 235
    :cond_1
    return v0
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private language(Landroid/content/Context;)[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 691
    .local v20, "res":Landroid/content/res/Resources;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v15

    .line 692
    .local v15, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/high16 v24, 0x7f060000

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 693
    .local v22, "spLocaleCodes":[Ljava/lang/String;
    const v24, 0x7f060001

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 695
    .local v23, "spLocaleNames":[Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    .line 696
    .local v18, "origSize":I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    move-object/from16 v19, v0

    .line 697
    .local v19, "preprocess":[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    const/4 v9, 0x0

    .line 699
    .local v9, "finalSize":I
    const-string v6, ""

    .line 700
    .local v6, "countryFeature":Ljava/lang/String;
    const-string v4, ""

    .line 701
    .local v4, "ISO_Code":Ljava/lang/String;
    const-string v7, ""

    .line 703
    .local v7, "coutryReplaceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 704
    const/16 v24, 0x0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 705
    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 708
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    move v10, v9

    .end local v9    # "finalSize":I
    .local v10, "finalSize":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 709
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v12

    .line 710
    .local v12, "l":Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 711
    .local v13, "language":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "country":Ljava/lang/String;
    invoke-static {v13, v5}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toNewString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 721
    .local v21, "s":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 725
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    .line 708
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "finalSize":I
    .restart local v10    # "finalSize":I
    goto :goto_0

    .line 731
    :cond_2
    add-int/lit8 v24, v10, -0x1

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 732
    add-int/lit8 v24, v10, -0x1

    aget-object v24, v19, v24

    add-int/lit8 v25, v10, -0x1

    aget-object v25, v19, v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->label:Ljava/lang/String;

    .line 733
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    goto :goto_1

    .line 736
    .end local v9    # "finalSize":I
    .restart local v10    # "finalSize":I
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 737
    const-string v17, ""

    .line 738
    .local v17, "numeric":Ljava/lang/String;
    const-string v16, ""

    .line 740
    .local v16, "mcc":Ljava/lang/String;
    const-string v24, "gsm.sim.operator.numeric"

    const-string v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 742
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 747
    move-object v8, v7

    .line 759
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "numeric":Ljava/lang/String;
    .local v8, "displayName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 762
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v12}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    goto/16 :goto_1

    .line 752
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "finalSize":I
    .restart local v10    # "finalSize":I
    .restart local v16    # "mcc":Ljava/lang/String;
    .restart local v17    # "numeric":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 754
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "numeric":Ljava/lang/String;
    :cond_6
    const-string v24, "zz_ZZ"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 755
    const-string v8, "Pseudo..."

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 757
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 768
    .end local v5    # "country":Ljava/lang/String;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v12    # "l":Ljava/util/Locale;
    .end local v13    # "language":Ljava/lang/String;
    .end local v21    # "s":Ljava/lang/String;
    :cond_8
    new-array v14, v10, [Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    .line 769
    .local v14, "localeDatas":[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_9

    .line 770
    aget-object v24, v19, v11

    aput-object v24, v14, v11

    .line 769
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 772
    :cond_9
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 773
    return-object v14
.end method

.method private onLongPress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 438
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 439
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    .line 445
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->isTalkbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 446
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    if-eqz v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->enableAllAccessibilityServices()V

    .line 454
    :cond_0
    :goto_1
    return-void

    .line 441
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 442
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    goto :goto_0

    .line 449
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->speakWarning()V

    goto :goto_1
.end method

.method private onWarningSpoken()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mWarningHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$7;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 240
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 241
    return-void
.end method

.method private speakWarning()V
    .locals 4

    .prologue
    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v0, "localHashMap":Ljava/util/HashMap;
    const-string v2, "utteranceId"

    const-string v3, "continueToEnable"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 249
    return-void
.end method

.method private swStartView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 370
    const-string v0, "VideoIntroLanguageActivity"

    const-string v1, "swStartView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizard2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 385
    :goto_1
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoIntroLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 392
    :cond_1
    return-void

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizardlandscape2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    goto :goto_0

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private static toNewString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 778
    const-string v1, ""

    .line 786
    :goto_0
    return-object v1

    .line 780
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 781
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 783
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 685
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option_flag"    # I

    .prologue
    const/4 v8, 0x0

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 489
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "com.samsung.android.app.assistantmenu"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    and-int/lit8 v5, p1, 0x20

    if-lez v5, :cond_0

    .line 493
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, "assistantMenu":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.assistantmenu"

    const-string v7, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 501
    .end local v1    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 502
    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_1

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "air_motion_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    .end local v0    # "air_motion_changed":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 513
    and-int/lit8 v5, p1, 0x8

    if-lez v5, :cond_3

    .line 515
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 525
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, "finger_air_view_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    .end local v2    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 534
    and-int/lit8 v5, p1, 0x4

    if-lez v5, :cond_4

    .line 566
    :cond_4
    const-string v5, "com.samsung.android.app.accesscontrol"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 567
    and-int/lit8 v5, p1, 0x40

    if-lez v5, :cond_5

    .line 571
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v3, "icIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.accesscontrol"

    const-string v7, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 579
    .end local v3    # "icIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 580
    and-int/lit16 v5, p1, 0x80

    if-lez v5, :cond_6

    .line 592
    :cond_6
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0xff00

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 924
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 927
    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 929
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 930
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 939
    :pswitch_2
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 941
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 942
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 949
    :pswitch_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 950
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 951
    .local v2, "pointer_id":I
    if-ne v2, v10, :cond_2

    .line 949
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 954
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 955
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-nez v4, :cond_1

    .line 957
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 958
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 961
    :cond_3
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v4, v8, :cond_1

    .line 963
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 964
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 973
    .end local v1    # "i":I
    .end local v2    # "pointer_id":I
    :pswitch_4
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 974
    .local v3, "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 975
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 977
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-nez v4, :cond_0

    .line 979
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 980
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 985
    :cond_4
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 987
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 988
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 994
    .end local v2    # "pointer_id":I
    .end local v3    # "pointer_index":I
    :pswitch_5
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 995
    .restart local v3    # "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 996
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_0

    .line 999
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->touch_mode:I

    .line 1000
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 608
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizard2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    .line 616
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoIntroLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 621
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 631
    :cond_2
    :goto_1
    return-void

    .line 613
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizardlandscape2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    goto :goto_0

    .line 623
    :pswitch_0
    if-eq p2, v2, :cond_4

    const/16 v0, 0xb

    if-eq p2, v0, :cond_4

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 624
    :cond_4
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 626
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setResult(I)V

    .line 627
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->finish()V

    goto :goto_1

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x7e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1017
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1020
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1021
    const-string v0, "VideoIntroLanguageActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->isNorthAmerica()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setContentView(I)V

    .line 1024
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViewsForNA()V

    .line 1028
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViews()V

    .line 1030
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 1039
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1046
    :goto_2
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoIntroLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1051
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1053
    :cond_0
    return-void

    .line 1026
    :cond_1
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setContentView(I)V

    goto :goto_0

    .line 1032
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizard2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    goto :goto_1

    .line 1035
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/wizardlandscape2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->video:Landroid/net/Uri;

    goto/16 :goto_1

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 183
    :cond_0
    iput-object p0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mContext:Landroid/content/Context;

    .line 186
    const-string v4, "persist.sys.setupwizard"

    const-string v5, "LANGUAGE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    .local v2, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 191
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "NFCSERVICE_STARTED_INT"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "IsNfcServiceStarted":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    .line 194
    const-string v4, "NFCSERVICE_STARTED_INT"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    const-string v4, "VideoIntroLanguageActivity"

    const-string v5, "NFCSERVICE_STARTED_INT \'0\' NFC_STARTED_OFF writing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->isNorthAmerica()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    const v4, 0x7f03001e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setContentView(I)V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViewsForNA()V

    .line 210
    :goto_1
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    const v4, 0x7f0d0049

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "rootView":Landroid/view/View;
    const/high16 v4, 0x600000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 215
    .end local v3    # "rootView":Landroid/view/View;
    :cond_1
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    :cond_2
    const v4, 0x7f0d0001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initViews()V

    .line 220
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setIndicatorTransparency()V

    .line 221
    return-void

    .line 198
    :cond_4
    const-string v4, "NFCSERVICE_STARTED_INT"

    const/4 v5, 0x2

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    const-string v4, "VideoIntroLanguageActivity"

    const-string v5, "NFCSERVICE_STARTED_INT \'2\' NFC_STARTED_READY writing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_5
    const v4, 0x7f03001d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->setContentView(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 867
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 873
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x1

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1074
    :goto_0
    return v2

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->flayout:Landroid/widget/FrameLayout;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "paramView"    # Landroid/view/View;
    .param p3, "paramInt"    # I
    .param p4, "paramLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "paramAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 635
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mCurrentLocale:Ljava/util/Locale;

    if-nez v2, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 644
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 646
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 647
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 648
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 649
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 652
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 661
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 662
    const/4 v0, 0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mVideoIntro:Landroid/widget/VideoView;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$9;-><init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->swStartView()V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 263
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 264
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportSpinnerSelectionColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mEnableListSelectionColor:Z

    .line 272
    :cond_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mLocaleRTL:Z

    .line 274
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 275
    return-void

    .line 266
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mAccessibilityModeEnabled:Z

    .line 267
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->mFinishedWarning:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->initLanguageSpinner()V

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    return-void
.end method
