.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    .line 761
    .local v20, "action":Ljava/lang/String;
    const/16 v32, 0x0

    .line 762
    .local v32, "queryRestart":Z
    const/16 v30, 0x0

    .line 763
    .local v30, "queryRemove":Z
    const/16 v28, 0x0

    .line 764
    .local v28, "packageChanged":Z
    const/16 v22, 0x1

    .line 766
    .local v22, "cancelNotifications":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_48

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_48

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_48

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 772
    :cond_48
    const/16 v29, 0x0

    .line 773
    .local v29, "pkgList":[Ljava/lang/String;
    if-eqz v30, :cond_e6

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e6

    const/16 v31, 0x1

    .line 776
    .local v31, "queryReplace":Z
    :goto_59
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 777
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 813
    :goto_6b
    const/4 v9, -0x1

    .line 814
    .local v9, "userHandle":I
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 815
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 819
    :cond_7f
    if-eqz v29, :cond_15c

    move-object/from16 v0, v29

    array-length v2, v0

    if-lez v2, :cond_15c

    .line 820
    move-object/from16 v21, v29

    .local v21, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_8f
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_15c

    aget-object v5, v21, v25

    .line 821
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v22, :cond_e3

    .line 823
    if-eqz v5, :cond_b3

    .line 824
    monitor-enter p0

    .line 825
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getLpnetManagerLocked()Lcom/android/server/LpnetManagerService;
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_13e

    move-result-object v27

    .line 827
    .local v27, "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    if-eqz v27, :cond_128

    .line 828
    :try_start_a6
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/LpnetManagerService;->getLockedAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ad} :catch_130
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_13e

    move-result v2

    if-eqz v2, :cond_b2

    .line 829
    const/16 v32, 0x1

    .line 837
    :cond_b2
    :goto_b2
    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_13e

    .line 843
    .end local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :cond_b3
    if-eqz v5, :cond_cd

    .line 844
    monitor-enter p0

    .line 845
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getLpnetManagerLocked()Lcom/android/server/LpnetManagerService;
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_157

    move-result-object v27

    .line 847
    .restart local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    if-eqz v27, :cond_141

    .line 848
    :try_start_c0
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/LpnetManagerService;->getManagedAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_149
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_157

    move-result v2

    if-eqz v2, :cond_cc

    .line 849
    const/16 v32, 0x1

    .line 857
    :cond_cc
    :goto_cc
    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_157

    .line 862
    .end local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$700()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v32, :cond_15a

    const/4 v8, 0x1

    :goto_de
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 820
    :cond_e3
    add-int/lit8 v25, v25, 0x1

    goto :goto_8f

    .line 773
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v9    # "userHandle":I
    .end local v21    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    .end local v31    # "queryReplace":Z
    :cond_e6
    const/16 v31, 0x0

    goto/16 :goto_59

    .line 778
    .restart local v31    # "queryReplace":Z
    :cond_ea
    if-eqz v32, :cond_f6

    .line 779
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6b

    .line 781
    :cond_f6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v33

    .line 782
    .local v33, "uri":Landroid/net/Uri;
    if-nez v33, :cond_fd

    .line 944
    .end local v29    # "pkgList":[Ljava/lang/String;
    .end local v31    # "queryReplace":Z
    .end local v33    # "uri":Landroid/net/Uri;
    :cond_fc
    :goto_fc
    return-void

    .line 785
    .restart local v29    # "pkgList":[Ljava/lang/String;
    .restart local v31    # "queryReplace":Z
    .restart local v33    # "uri":Landroid/net/Uri;
    :cond_fd
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 786
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_fc

    .line 789
    if-eqz v28, :cond_11e

    .line 792
    :try_start_105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_114} :catch_31b

    move-result v24

    .line 794
    .local v24, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_11c

    if-nez v24, :cond_11e

    .line 796
    :cond_11c
    const/16 v22, 0x0

    .line 806
    .end local v24    # "enabled":I
    :cond_11e
    :goto_11e
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v29, v0

    .end local v29    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v29, v2

    .restart local v29    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_6b

    .line 831
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v9    # "userHandle":I
    .restart local v21    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v26    # "len$":I
    .restart local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :cond_128
    :try_start_128
    const-string v2, "NotificationService"

    const-string v3, "failed to get LpnetManagerService instance or Pkg was null "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12f} :catch_130
    .catchall {:try_start_128 .. :try_end_12f} :catchall_13e

    goto :goto_b2

    .line 833
    :catch_130
    move-exception v23

    .line 834
    .local v23, "e":Ljava/lang/Exception;
    :try_start_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mLpnetManager:Lcom/android/server/LpnetManagerService;
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$502(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService;

    .line 835
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b2

    .line 837
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :catchall_13e
    move-exception v2

    monitor-exit p0
    :try_end_140
    .catchall {:try_start_131 .. :try_end_140} :catchall_13e

    throw v2

    .line 851
    .restart local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :cond_141
    :try_start_141
    const-string v2, "NotificationService"

    const-string v3, "failed to get LpnetManagerService instance or Pkg was null "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_148} :catch_149
    .catchall {:try_start_141 .. :try_end_148} :catchall_157

    goto :goto_cc

    .line 853
    :catch_149
    move-exception v23

    .line 854
    .restart local v23    # "e":Ljava/lang/Exception;
    :try_start_14a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mLpnetManager:Lcom/android/server/LpnetManagerService;
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$502(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService;

    .line 855
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_cc

    .line 857
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v27    # "mLpnetMgrService":Lcom/android/server/LpnetManagerService;
    :catchall_157
    move-exception v2

    monitor-exit p0
    :try_end_159
    .catchall {:try_start_14a .. :try_end_159} :catchall_157

    throw v2

    .line 862
    :cond_15a
    const/4 v8, 0x0

    goto :goto_de

    .line 867
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    :cond_15c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto :goto_fc

    .line 869
    .end local v9    # "userHandle":I
    .end local v29    # "pkgList":[Ljava/lang/String;
    .end local v31    # "queryReplace":Z
    :cond_17b
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 875
    const-string v2, "NotificationService"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v2, :cond_1e9

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$1000(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 884
    :goto_1a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1e0

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-nez v2, :cond_1e0

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    .line 894
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_fc

    .line 879
    :cond_1e9
    const-string v2, "NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a5

    .line 896
    :cond_1f1
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_245

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 900
    const-string v2, "NotificationService"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v2, :cond_23d

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$1300(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 909
    :goto_21b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_234

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 915
    :cond_234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_fc

    .line 904
    :cond_23d
    const-string v2, "NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 917
    :cond_245
    const-string v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26e

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_fc

    .line 921
    :cond_26e
    const-string v2, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 922
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 923
    .restart local v9    # "userHandle":I
    if-ltz v9, :cond_fc

    .line 924
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v11

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$700()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x6

    const/16 v19, 0x0

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto/16 :goto_fc

    .line 927
    .end local v9    # "userHandle":I
    :cond_29f
    const-string v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c7

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;Z)V

    goto/16 :goto_fc

    .line 934
    :cond_2c7
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_302

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched()V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched()V

    goto/16 :goto_fc

    .line 941
    :cond_302
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_fc

    .line 798
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v29    # "pkgList":[Ljava/lang/String;
    .restart local v31    # "queryReplace":Z
    .restart local v33    # "uri":Landroid/net/Uri;
    :catch_31b
    move-exception v2

    goto/16 :goto_11e
.end method
