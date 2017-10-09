.class Lcom/android/server/pm/GeneratePackageInfoHook;
.super Ljava/lang/Object;
.source "GeneratePackageInfoHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/GeneratePackageInfoHook$FakeSignatureGlobalUI;
    }
.end annotation


# instance fields
.field private multiUserMarker:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGlobalEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "allow_fake_signature_global"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static getPerAppEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z
    .registers 6

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method static hook(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageInfo;
    .registers 9

    .prologue
    .line 56
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_3f

    .line 57
    :try_start_4
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 58
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.FAKE_PACKAGE_SIGNATURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/GeneratePackageInfoHook;->getGlobalEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/GeneratePackageInfoHook;->getPerAppEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 61
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_59

    .line 62
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v1, "fake-signature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_51

    .line 64
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 65
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/pm/Signature;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 87
    :cond_3f
    :goto_3f
    return-object p0

    .line 67
    :cond_40
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "invalid \'fake-signature\' metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_47} :catch_48

    goto :goto_3f

    .line 81
    :catch_48
    move-exception v0

    .line 85
    const-string v1, "GeneratePackageInfoHook"

    const-string v2, "hook exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 70
    :cond_51
    :try_start_51
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "missing \'fake-signature\' metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 73
    :cond_59
    const-string v0, "GeneratePackageInfoHook"

    const-string/jumbo v1, "null mAppMetaData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 78
    :cond_62
    const-string v0, "GeneratePackageInfoHook"

    const-string/jumbo v1, "null requestedPermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_6a} :catch_48

    goto :goto_3f
.end method
