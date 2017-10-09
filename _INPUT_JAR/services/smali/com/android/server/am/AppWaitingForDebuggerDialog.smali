.class final Lcom/android/server/am/AppWaitingForDebuggerDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppWaitingForDebuggerDialog.java"


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private final mHandler:Landroid/os/Handler;

.field final mProc:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;-><init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V

    iput-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    iput-object p3, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    .line 37
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setCancelable(Z)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v1, "text":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_90

    .line 41
    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " (process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_48
    const-string v2, " is waiting for the debugger to attach."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v2, -0x1

    const-string v3, "Force Close"

    iget-object v4, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 55
    const-string v2, "Waiting For Debugger"

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 57
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting For Debugger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    return-void

    .line 47
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_90
    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48
.end method


# virtual methods
.method public onStop()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method
