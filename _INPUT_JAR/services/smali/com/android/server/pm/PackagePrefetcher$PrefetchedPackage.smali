.class Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackagePrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrefetchedPackage"
.end annotation


# instance fields
.field private mNeedToCollectCert:Z

.field private mPkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 5
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "needToCollectCert"    # Z

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 85
    iput-boolean p3, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    .line 86
    return-void
.end method


# virtual methods
.method public getNeedToCollectCert()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    return v0
.end method

.method public getPackage()Landroid/content/pm/PackageParser$Package;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method
