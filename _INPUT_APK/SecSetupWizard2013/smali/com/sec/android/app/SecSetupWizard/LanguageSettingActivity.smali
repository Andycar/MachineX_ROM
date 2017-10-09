.class public Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;
.super Landroid/app/Activity;
.source "LanguageSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;,
        Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private accessibilitylistenner:Landroid/view/View$OnClickListener;

.field private languageSpi:Landroid/widget/Spinner;

.field private mAccessibilityModeEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mEnableListSelectionColor:Z

.field private mFinishedWarning:Z

.field private mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

.field private final mLongPressHandler:Landroid/os/Handler;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mTone:Landroid/media/Ringtone;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private mUpdateLocaleRunnable:Ljava/lang/Runnable;

.field private final mWarningHandler:Landroid/os/Handler;

.field private preNfc:Z

.field private touch_mode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->DEBUG:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->preNfc:Z

    .line 108
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 113
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mWarningHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 135
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mEnableListSelectionColor:Z

    .line 137
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$4;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    .line 503
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$8;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    .line 715
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->onWarningSpoken()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->onLongPress()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->isNorthAmerica()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->afterWarningDelay()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mEnableListSelectionColor:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    return-object v0
.end method

.method private afterWarningDelay()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 351
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->enableAllAccessibilityServices()V

    .line 356
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mFinishedWarning:Z

    .line 357
    return-void

    .line 354
    :cond_0
    const-string v0, "LanguageSettingActivity"

    const-string v1, "talkback is cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAllAccessibilityServices()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 775
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 778
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x7

    invoke-direct {p0, p0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "str":Ljava/lang/String;
    const-string v2, "enabled_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 780
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 781
    const-string v2, "touch_exploration_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 782
    const-string v2, "accessibility_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    const-string v2, "accessibility_script_injection"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    const-string v2, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    const/16 v2, 0xff

    invoke-static {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 786
    iput-boolean v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    .line 787
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    .line 788
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const v3, 0x7f0b000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 791
    return-void
.end method

.method private getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramInt"    # I

    .prologue
    .line 795
    const-string v5, "accessibility"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 796
    .local v2, "localList":Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v4, "localStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 798
    .local v1, "localIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 801
    .local v0, "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v5, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    .line 802
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 804
    .local v3, "localServiceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 810
    .end local v0    # "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "localServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 811
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 812
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
    .line 568
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 571
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    aget-object v2, p3, v1

    .line 576
    :goto_1
    return-object v2

    .line 570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 388
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 390
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 393
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initLanguageSpinner()V
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .line 335
    .local v1, "li":Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    invoke-virtual {v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    .end local v1    # "li":Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 265
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 267
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    const v3, 0x7f030010

    const v4, 0x7f0d004e

    invoke-direct {p0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->language(Landroid/content/Context;)[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;Landroid/content/Context;II[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 275
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLocaleAdapter:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .line 277
    .local v8, "li":Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    invoke-virtual {v8}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->languageSpi:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 283
    .end local v7    # "i":I
    .end local v8    # "li":Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    :cond_1
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 284
    .local v9, "nextBtnArea":Landroid/widget/LinearLayout;
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 285
    .local v10, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$6;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 303
    .local v6, "button":Landroid/widget/Button;
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 307
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTone:Landroid/media/Ringtone;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 313
    iput-boolean v12, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    .line 317
    :goto_1
    return-void

    .line 315
    :cond_3
    iput-boolean v11, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    goto :goto_1
.end method

.method private initViewsForNA()V
    .locals 4

    .prologue
    .line 248
    const v2, 0x7f0d004d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "learn":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
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

    .line 252
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$5;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method private isNorthAmerica()Z
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "ret":Z
    const-string v1, "TMB"

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

    if-nez v1, :cond_0

    const-string v1, "LRA"

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

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x1

    .line 205
    :cond_1
    return v0
.end method

.method private language(Landroid/content/Context;)[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 589
    .local v20, "res":Landroid/content/res/Resources;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v15

    .line 590
    .local v15, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/high16 v24, 0x7f060000

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 591
    .local v22, "spLocaleCodes":[Ljava/lang/String;
    const v24, 0x7f060001

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 593
    .local v23, "spLocaleNames":[Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    .line 594
    .local v18, "origSize":I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    move-object/from16 v19, v0

    .line 595
    .local v19, "preprocess":[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    const/4 v9, 0x0

    .line 597
    .local v9, "finalSize":I
    const-string v6, ""

    .line 598
    .local v6, "countryFeature":Ljava/lang/String;
    const-string v4, ""

    .line 599
    .local v4, "ISO_Code":Ljava/lang/String;
    const-string v7, ""

    .line 601
    .local v7, "coutryReplaceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 602
    const/16 v24, 0x0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 603
    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 606
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    move v10, v9

    .end local v9    # "finalSize":I
    .local v10, "finalSize":I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 607
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v12

    .line 608
    .local v12, "l":Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 609
    .local v13, "language":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, "country":Ljava/lang/String;
    invoke-static {v13, v5}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toNewString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 619
    .local v21, "s":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 621
    const-string v24, "LanguageSettingActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding initial "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    .line 606
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "finalSize":I
    .restart local v10    # "finalSize":I
    goto :goto_0

    .line 629
    :cond_2
    add-int/lit8 v24, v10, -0x1

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 630
    add-int/lit8 v24, v10, -0x1

    aget-object v24, v19, v24

    add-int/lit8 v25, v10, -0x1

    aget-object v25, v19, v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->label:Ljava/lang/String;

    .line 631
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    goto :goto_1

    .line 634
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

    .line 635
    const-string v17, ""

    .line 636
    .local v17, "numeric":Ljava/lang/String;
    const-string v16, ""

    .line 638
    .local v16, "mcc":Ljava/lang/String;
    const-string v24, "gsm.sim.operator.numeric"

    const-string v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 640
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 645
    move-object v8, v7

    .line 657
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "numeric":Ljava/lang/String;
    .local v8, "displayName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 658
    const-string v24, "LanguageSettingActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "finalSize":I
    .restart local v9    # "finalSize":I
    new-instance v24, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v12}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v19, v10

    goto/16 :goto_1

    .line 650
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

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 652
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

    .line 653
    const-string v8, "Pseudo..."

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 655
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v12, v12}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 666
    .end local v5    # "country":Ljava/lang/String;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v12    # "l":Ljava/util/Locale;
    .end local v13    # "language":Ljava/lang/String;
    .end local v21    # "s":Ljava/lang/String;
    :cond_8
    new-array v14, v10, [Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .line 667
    .local v14, "localeDatas":[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_9

    .line 668
    aget-object v24, v19, v11

    aput-object v24, v14, v11

    .line 667
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 670
    :cond_9
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 671
    return-object v14
.end method

.method private onLongPress()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "LanguageSettingActivity"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    if-nez v0, :cond_1

    .line 362
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mFinishedWarning:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->enableAllAccessibilityServices()V

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->speakWarning()V

    goto :goto_0

    .line 368
    :cond_1
    const-string v0, "LanguageSettingActivity"

    const-string v1, "onLongPress is cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onWarningSpoken()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mWarningHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$7;-><init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 210
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 211
    return-void
.end method

.method private speakWarning()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v0, "localHashMap":Ljava/util/HashMap;
    const-string v2, "utteranceId"

    const-string v3, "continueToEnable"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 218
    return-void
.end method

.method private static toNewString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 676
    const-string v1, ""

    .line 684
    :goto_0
    return-object v1

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 679
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 681
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
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

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 405
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "com.samsung.android.app.assistantmenu"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    and-int/lit8 v5, p1, 0x20

    if-lez v5, :cond_0

    .line 407
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "assistantMenu":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.assistantmenu"

    const-string v7, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 417
    .end local v1    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_1

    .line 419
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "air_motion_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    .end local v0    # "air_motion_changed":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    and-int/lit8 v5, p1, 0x8

    if-lez v5, :cond_3

    .line 430
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
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

    .line 441
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "finger_air_view_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
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

    .line 450
    and-int/lit8 v5, p1, 0x4

    if-lez v5, :cond_4

    .line 451
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_4
    const-string v5, "com.samsung.android.app.accesscontrol"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 483
    and-int/lit8 v5, p1, 0x40

    if-lez v5, :cond_5

    .line 484
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "icIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.accesscontrol"

    const-string v7, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 495
    .end local v3    # "icIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 496
    and-int/lit16 v5, p1, 0x80

    if-lez v5, :cond_6

    .line 497
    const-string v5, "LanguageSettingActivity"

    const-string v6, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
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

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 821
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 906
    :cond_0
    :goto_0
    :pswitch_0
    const-string v4, "LanguageSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "touch mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 824
    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 825
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NOT_YET : 1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 827
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 836
    :pswitch_2
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 837
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NOT_YET : 2"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 839
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 846
    :pswitch_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 847
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 848
    .local v2, "pointer_id":I
    if-ne v2, v10, :cond_2

    .line 846
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 851
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 852
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-nez v4, :cond_1

    .line 853
    const-string v4, "LanguageSettingActivity"

    const-string v5, "READY_TO_ENABLE_TALKBACK : 1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 855
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 858
    :cond_3
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-ne v4, v8, :cond_1

    .line 859
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NOT_YET : 3"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 861
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 870
    .end local v1    # "i":I
    .end local v2    # "pointer_id":I
    :pswitch_4
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 871
    .local v3, "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 872
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 874
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-nez v4, :cond_0

    .line 875
    const-string v4, "LanguageSettingActivity"

    const-string v5, "READY_TO_ENABLE_TALKBACK : 2"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 877
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 882
    :cond_4
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 883
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NOT_YET : 4"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 885
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 891
    .end local v2    # "pointer_id":I
    .end local v3    # "pointer_index":I
    :pswitch_5
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 892
    .restart local v3    # "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 893
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_0

    .line 895
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NOT_YET : 5"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->touch_mode:I

    .line 897
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 821
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
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 517
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 518
    const-string v0, "LanguageSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 521
    :pswitch_0
    if-eq p2, v3, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 522
    :cond_1
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 524
    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->setResult(I)V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->finish()V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x7e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 154
    :cond_0
    const-string v4, "LanguageSettingActivity"

    const-string v5, "lang create"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "persist.sys.setupwizard"

    const-string v5, "LANGUAGE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->isNorthAmerica()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "garda"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jfltetmo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lt03ltetmo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 159
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->setContentView(I)V

    .line 160
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->initViewsForNA()V

    .line 165
    :goto_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "p4noterfxx"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "p4noterfjv"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    :cond_1
    const v4, 0x7f0d0049

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, "rootView":Landroid/view/View;
    const/high16 v4, 0x600000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 170
    .end local v3    # "rootView":Landroid/view/View;
    :cond_2
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    :cond_3
    const v4, 0x7f0d0001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_4
    iput-object p0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mContext:Landroid/content/Context;

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 177
    .local v2, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "NFCSERVICE_STARTED_INT"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "IsNfcServiceStarted":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    .line 181
    const-string v4, "NFCSERVICE_STARTED_INT"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NFCSERVICE_STARTED_INT \'0\' NFC_STARTED_OFF writing"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->initViews()V

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->setIndicatorTransparency()V

    .line 191
    return-void

    .line 163
    .end local v0    # "IsNfcServiceStarted":I
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_5
    const v4, 0x7f03000e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 185
    .restart local v0    # "IsNfcServiceStarted":I
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_6
    const-string v4, "NFCSERVICE_STARTED_INT"

    const/4 v5, 0x2

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const-string v4, "LanguageSettingActivity"

    const-string v5, "NFCSERVICE_STARTED_INT \'2\' NFC_STARTED_READY writing"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 766
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 767
    const-string v0, "LanguageSettingActivity"

    const-string v1, "lang onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 772
    :cond_0
    return-void
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
    .line 532
    .local p1, "paramAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 533
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mCurrentLocale:Ljava/util/Locale;

    if-nez v2, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mCurrentLocale:Ljava/util/Locale;

    .line 542
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    .line 544
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 545
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 550
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mUpdateLocaleRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 559
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 564
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
    .line 555
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "LanguageSettingActivity"

    const-string v1, "lang pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 231
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    .line 235
    :goto_0
    const-string v0, "LanguageSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lang resume, mAccessibilityModeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isSupportSpinnerSelectionColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mEnableListSelectionColor:Z

    .line 237
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    return-void

    .line 233
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->mAccessibilityModeEnabled:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    const-string v0, "LanguageSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState current Locale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->initLanguageSpinner()V

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method
