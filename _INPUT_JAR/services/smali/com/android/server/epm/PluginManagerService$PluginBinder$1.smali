.class Lcom/android/server/epm/PluginManagerService$PluginBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/PluginManagerService$PluginBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;


# direct methods
.method constructor <init>(Lcom/android/server/epm/PluginManagerService$PluginBinder;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 360
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v12, :cond_b1

    .line 367
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    .line 372
    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 375
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_b1

    iget-object v15, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v15, :cond_b1

    .line 378
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_42
    if-ge v8, v10, :cond_b1

    aget-object v13, v3, v8

    .line 381
    .local v13, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    # invokes: Lcom/android/server/epm/PluginManagerService$PluginBinder;->getModule(Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;
    invoke-static {v15, v13}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->access$200(Lcom/android/server/epm/PluginManagerService$PluginBinder;Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;

    move-result-object v7

    .line 385
    .local v7, "helper":Lcom/android/server/epm/IPluginHelper;
    if-eqz v7, :cond_86

    .line 387
    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_89

    .line 388
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 389
    .local v11, "msg":Landroid/os/Message;
    const/4 v15, 0x6

    iput v15, v11, Landroid/os/Message;->what:I

    .line 390
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v4, "bdl":Landroid/os/Bundle;
    const-string/jumbo v15, "packageName"

    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iput-object v4, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v15

    const-string v16, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/epm/IPluginHelper;

    invoke-interface {v15}, Lcom/android/server/epm/IPluginHelper;->getHandler()Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v4    # "bdl":Landroid/os/Bundle;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_86
    :goto_86
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 395
    :cond_89
    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_bc

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 400
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_b2

    iget-boolean v15, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v15, :cond_b2

    .line 404
    invoke-interface {v7, v12}, Lcom/android/server/epm/IPluginHelper;->onPluginEnabled(Ljava/lang/String;)V
    :try_end_ac
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_ac} :catch_ad

    goto :goto_86

    .line 418
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "helper":Lcom/android/server/epm/IPluginHelper;
    .end local v8    # "i$":I
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "len$":I
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_ad
    move-exception v6

    .line 419
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 431
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b1
    return-void

    .line 406
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v7    # "helper":Lcom/android/server/epm/IPluginHelper;
    .restart local v8    # "i$":I
    .restart local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "len$":I
    .restart local v13    # "permission":Ljava/lang/String;
    .restart local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_b2
    if-eqz v9, :cond_86

    :try_start_b4
    iget-boolean v15, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v15, :cond_86

    .line 410
    invoke-interface {v7, v12}, Lcom/android/server/epm/IPluginHelper;->onPluginDisabled(Ljava/lang/String;)V

    goto :goto_86

    .line 413
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_bc
    invoke-interface {v7}, Lcom/android/server/epm/IPluginHelper;->onBootCompleted()V
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b4 .. :try_end_bf} :catch_ad

    goto :goto_86

    .line 422
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "helper":Lcom/android/server/epm/IPluginHelper;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_c0
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b1

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 424
    .local v2, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_da
    :goto_da
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/IPluginHelper;

    .line 425
    .restart local v7    # "helper":Lcom/android/server/epm/IPluginHelper;
    if-eqz v7, :cond_da

    .line 426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v15, v15, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0, v12}, Lcom/android/server/epm/IPluginHelper;->onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_da
.end method
