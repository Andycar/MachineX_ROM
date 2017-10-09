.class Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;
.super Ljava/lang/Object;
.source "VideoIntroLanguageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$4;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 172
    :cond_0
    return-void
.end method
