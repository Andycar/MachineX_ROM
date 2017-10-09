.class Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field final synthetic val$icb:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V
    .registers 3

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iput-object p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;->val$icb:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;->val$icb:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;->packageInstalled(Ljava/lang/String;I)V

    .line 348
    return-void
.end method
