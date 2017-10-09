.class Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemesUninstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p2, "x1"    # Lcom/android/server/epm/overlay/ThemeManagerService$1;

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 1126
    return-void
.end method
