.class Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCrashReporter"
.end annotation


# instance fields
.field mApp:Lcom/android/server/am/ProcessRecord;

.field mCrashReport:Ljava/lang/String;

.field mSignal:I

.field final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V
    .registers 6
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "signal"    # I
    .param p4, "report"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    .line 68
    const-string v0, "NativeCrashReport"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 70
    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    .line 71
    iput-object p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 78
    .local v0, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    const-string v2, "Native crash"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 79
    iget v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    invoke-static {v2}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 82
    const-string/jumbo v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    iget-object v2, v2, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "native_crash"

    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 91
    .end local v0    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :goto_33
    return-void

    .line 88
    :catch_34
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NativeCrashListener"

    const-string v3, "Unable to report native crash"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method
