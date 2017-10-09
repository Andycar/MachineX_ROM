.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;[I[ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pkg_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 14090
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$pkg_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 14092
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 14093
    .local v0, "mCustomFreqManager":Landroid/os/CustomFrequencyManager;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/CustomFrequencyManager;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 14094
    return-void
.end method
