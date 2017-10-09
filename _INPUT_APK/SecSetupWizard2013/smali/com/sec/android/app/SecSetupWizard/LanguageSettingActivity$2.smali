.class Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "LanguageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "continueToEnable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramAnonymousString"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method
