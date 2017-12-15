.class Landroid/app/epm/PluginManager$MasterInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/epm/PluginManager;


# direct methods
.method private constructor <init>(Landroid/app/epm/PluginManager;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Landroid/app/epm/PluginManager$MasterInstallObserver;->this$0:Landroid/app/epm/PluginManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 397
    return-void
.end method
