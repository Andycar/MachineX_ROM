.class Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrialInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p2, "x1"    # Lcom/android/server/epm/overlay/ThemeManagerService$1;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 631
    if-eqz p1, :cond_8

    .line 632
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V

    .line 634
    :cond_8
    return-void
.end method
