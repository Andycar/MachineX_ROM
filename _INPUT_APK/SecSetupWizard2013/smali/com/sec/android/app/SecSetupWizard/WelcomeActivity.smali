.class public Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# instance fields
.field private DEBUG:Z

.field private accessibilitylistenner:Landroid/view/View$OnClickListener;

.field private mAccessibilityModeEnabled:Z

.field private mFinishedWarning:Z

.field private final mLongPressHandler:Landroid/os/Handler;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mTone:Landroid/media/Ringtone;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mWarningHandler:Landroid/os/Handler;

.field private touch_mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->DEBUG:Z

    .line 60
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 65
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mWarningHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 343
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$6;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->onWarningSpoken()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->afterWarningDelay()V

    return-void
.end method

.method private afterWarningDelay()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->enableAllAccessibilityServices()V

    .line 190
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mFinishedWarning:Z

    .line 191
    return-void
.end method

.method private enableAllAccessibilityServices()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 390
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x7

    invoke-direct {p0, p0, v2}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "str":Ljava/lang/String;
    const-string v2, "enabled_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    const-string v2, "touch_exploration_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    const-string v2, "accessibility_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    const-string v2, "accessibility_script_injection"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    const-string v2, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    const/16 v2, 0xff

    invoke-static {p0, v2}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 401
    iput-boolean v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const v3, 0x7f0b000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 406
    return-void
.end method

.method private getAccessibilityServicesFiltered(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramInt"    # I

    .prologue
    .line 410
    const-string v5, "accessibility"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, "localList":Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v4, "localStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    .local v1, "localIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 416
    .local v0, "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v5, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 419
    .local v3, "localServiceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    .end local v0    # "localAccessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "localServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 427
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 224
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v6, 0x7f0b0035

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    const v4, 0x7f0d0016

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 138
    .local v2, "nextBtnArea":Landroid/widget/LinearLayout;
    const v4, 0x7f0d0017

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    .local v3, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v4, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$4;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "desc_tts":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    const v4, 0x7f0d004b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    .local v0, "button":Landroid/widget/Button;
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->accessibilitylistenner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v4, p0, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 158
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTtsProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 159
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTone:Landroid/media/Ringtone;

    .line 160
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTone:Landroid/media/Ringtone;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 165
    iput-boolean v8, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    goto :goto_0
.end method

.method private onWarningSpoken()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mWarningHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity$5;-><init>(Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 173
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    return-void
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option_flag"    # I

    .prologue
    const/4 v8, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 239
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "com.samsung.android.app.assistantmenu"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    and-int/lit8 v5, p1, 0x20

    if-lez v5, :cond_0

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "assistantMenu":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.assistantmenu"

    const-string v7, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 251
    .end local v1    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_1

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "air_motion_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    .end local v0    # "air_motion_changed":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 263
    and-int/lit8 v5, p1, 0x8

    if-lez v5, :cond_3

    .line 265
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

    .line 275
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "finger_air_view_changed":Landroid/content/Intent;
    const-string v5, "isEnable"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
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

    .line 284
    and-int/lit8 v5, p1, 0x4

    if-lez v5, :cond_4

    .line 316
    :cond_4
    const-string v5, "com.samsung.android.app.accesscontrol"

    invoke-static {p0, v5}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    and-int/lit8 v5, p1, 0x40

    if-lez v5, :cond_5

    .line 321
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v3, "icIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.accesscontrol"

    const-string v7, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 329
    .end local v3    # "icIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 330
    and-int/lit16 v5, p1, 0x80

    if-lez v5, :cond_6

    .line 341
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

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 436
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 439
    :pswitch_1
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 441
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 442
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 453
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 454
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 461
    :pswitch_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 462
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 463
    .local v2, "pointer_id":I
    if-ne v2, v10, :cond_2

    .line 461
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 467
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-nez v4, :cond_1

    .line 469
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 470
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 473
    :cond_3
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-ne v4, v8, :cond_1

    .line 475
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 476
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 485
    .end local v1    # "i":I
    .end local v2    # "pointer_id":I
    :pswitch_4
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 486
    .local v3, "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 487
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 489
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-nez v4, :cond_0

    .line 491
    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 492
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 497
    :cond_4
    iget v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    if-ne v4, v8, :cond_0

    .line 499
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 500
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 506
    .end local v2    # "pointer_id":I
    .end local v3    # "pointer_index":I
    :pswitch_5
    and-int v4, v0, v5

    shr-int/lit8 v3, v4, 0x8

    .line 507
    .restart local v3    # "pointer_index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 508
    .restart local v2    # "pointer_id":I
    if-eq v2, v10, :cond_0

    .line 511
    iput v9, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->touch_mode:I

    .line 512
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 436
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

    .line 356
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    if-eq p2, v2, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 361
    :cond_1
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "START"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->setResult(I)V

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->finish()V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x7e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 96
    :cond_0
    const-string v0, "persist.sys.setupwizard"

    const-string v1, "WELCOME"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->initViews()V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->setIndicatorTransparency()V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 387
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 123
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    .line 128
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    return-void

    .line 125
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/SecSetupWizard/WelcomeActivity;->mAccessibilityModeEnabled:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method
