.class Lcom/android/server/epm/overlay/ThemeManagerService$7;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 2

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1906
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_224

    .line 2016
    :cond_5
    :goto_5
    return-void

    .line 1909
    :pswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 1910
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_INSTALL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v9, :cond_4c

    .line 1912
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1913
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1914
    .local v0, "bdl":Landroid/os/Bundle;
    const-string/jumbo v9, "path"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1915
    .local v8, "path":Landroid/net/Uri;
    const-string v9, "isTrial"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1916
    .local v4, "isTrial":Z
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->installThemePackage(Landroid/net/Uri;Z)V

    goto :goto_5

    .line 1919
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v4    # "isTrial":Z
    .end local v8    # "path":Landroid/net/Uri;
    :cond_4c
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1920
    .local v5, "msg1":Landroid/os/Message;
    iget v9, p1, Landroid/os/Message;->what:I

    iput v9, v5, Landroid/os/Message;->what:I

    .line 1921
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1922
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1928
    .end local v5    # "msg1":Landroid/os/Message;
    :pswitch_65
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_NORMAL_INSTALL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 1930
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v9, :cond_5

    .line 1931
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1932
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1933
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1934
    .local v7, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->normalMasterInstallation(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1941
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_a4
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_CHANGE_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 1943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1944
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1945
    .restart local v7    # "packageName":Ljava/lang/String;
    const-string/jumbo v9, "order"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1946
    .local v6, "order":I
    const-string v9, "isTrial"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1947
    .restart local v4    # "isTrial":Z
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v6, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeThemeState(Ljava/lang/String;IIZ)V

    goto/16 :goto_5

    .line 1952
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v4    # "isTrial":Z
    .end local v6    # "order":I
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_e4
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # operator-- for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2310(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    .line 1953
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_UNINSTALL_MASTER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v11}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v9

    if-gtz v9, :cond_5

    .line 1955
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1956
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1957
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1958
    .local v2, "hl":Landroid/os/Handler;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    if-eqz v9, :cond_16e

    .line 1959
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 1960
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    .line 1961
    new-instance v9, Lcom/android/server/epm/overlay/ThemeManagerService$7$1;

    invoke-direct {v9, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$7;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1985
    :goto_166
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5

    .line 1972
    :cond_16e
    :try_start_16e
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x64

    invoke-interface {v9, v10, v11}, Landroid/app/epm/IPluginManagerCallback;->onInstallCompleted(Ljava/lang/String;I)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_17d} :catch_186

    .line 1976
    :goto_17d
    new-instance v9, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;

    invoke-direct {v9, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$7;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_166

    .line 1973
    :catch_186
    move-exception v1

    .line 1974
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17d

    .line 1989
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "hl":Landroid/os/Handler;
    :pswitch_18b
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MESSAGE_BUGGY_MASTER"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 1991
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v10, v11

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2302(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    .line 1992
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 1995
    :pswitch_1b3
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_REMOVE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 1997
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1998
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1999
    .restart local v7    # "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2003
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_1e5
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_EVENT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_21d

    .line 2005
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2006
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2007
    .restart local v7    # "packageName":Ljava/lang/String;
    const-string v9, "index"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2008
    .local v3, "index":I
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V
    invoke-static {v9, v7, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 2010
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v3    # "index":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_21d
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2600(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    goto/16 :goto_5

    .line 1906
    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a4
        :pswitch_1e5
        :pswitch_e4
        :pswitch_1b3
        :pswitch_18b
        :pswitch_65
    .end packed-switch
.end method
