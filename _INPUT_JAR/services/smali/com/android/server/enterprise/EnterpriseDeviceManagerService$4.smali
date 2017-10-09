.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field final synthetic val$admins:[Ljava/lang/String;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    .line 1588
    monitor-enter p0

    .line 1589
    if-ne p2, v6, :cond_1d

    .line 1590
    :try_start_4
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "packageInstalled"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_55

    .line 1594
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # getter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$400()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_4c
    .catchall {:try_start_13 .. :try_end_1d} :catchall_55

    .line 1601
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    .line 1602
    .local v0, "compNames":Ljava/lang/String;
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v6, :cond_58

    .line 1603
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 1604
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_29
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_59

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$admins:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1596
    .end local v0    # "compNames":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_4c
    move-exception v1

    .line 1597
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1619
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_55
    move-exception v3

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_55

    throw v3

    .line 1608
    .restart local v0    # "compNames":Ljava/lang/String;
    :cond_58
    const/4 v0, 0x0

    .line 1611
    :cond_59
    :try_start_59
    const-string/jumbo v3, "self_update_admin_component"

    const-string v4, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1614
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->val$apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1616
    const/4 v3, 0x0

    # setter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$402(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1618
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 1619
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_55

    .line 1620
    return-void
.end method
