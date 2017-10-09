.class Lcom/android/server/pm/PackageScanState;
.super Ljava/lang/Object;
.source "PackageScanState.java"


# static fields
.field private static final is3LMAllowed:Z


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private final mTempPackage:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/io/File;)V
    .registers 3
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "tempPkg"    # Ljava/io/File;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 35
    iput-object p2, p0, Lcom/android/server/pm/PackageScanState;->mTempPackage:Ljava/io/File;

    .line 36
    return-void
.end method


# virtual methods
.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempPackage()Ljava/io/File;
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
