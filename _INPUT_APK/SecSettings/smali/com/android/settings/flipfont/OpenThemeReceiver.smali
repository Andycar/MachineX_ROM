.class public Lcom/android/settings/flipfont/OpenThemeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenThemeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v20, "system"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 28
    .local v11, "fontLocationSystem":Ljava/lang/String;
    const-string v20, "prefs"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 30
    .local v14, "mySharedPreference":Landroid/content/SharedPreferences;
    if-nez v11, :cond_3

    .line 31
    const-string v20, "OpenThemeFontPath"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 33
    .local v15, "path":Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_2

    .line 34
    const-string v20, "persist.sys.flipfontpath"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v20, "#"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v19, v20, 0x1

    .line 36
    .local v19, "startIndex":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    .line 37
    .local v10, "endIndex":I
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    sub-int v21, v10, v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v18

    .line 38
    .local v18, "selectedFont":Ljava/lang/String;
    const-string v20, "OpenThemeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "selectedFont : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v10    # "endIndex":I
    .end local v19    # "startIndex":I
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 55
    .local v7, "am":Landroid/app/IActivityManager;
    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 56
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v16, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 58
    .local v16, "randomizer":Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Landroid/content/res/Configuration;->FlipFont:I

    .line 59
    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v7    # "am":Landroid/app/IActivityManager;
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v16    # "randomizer":Ljava/util/Random;
    :goto_1
    const-string v20, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 66
    .local v5, "activityManager":Landroid/app/ActivityManager;
    const/16 v20, 0x32

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 67
    .local v6, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v12, 0x1

    .line 68
    .local v12, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .local v4, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 70
    .local v17, "s":Ljava/lang/String;
    const-string v20, "com.android.settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "com.samsung.music"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "com.sec.android.app.music"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    .line 71
    const-string v20, "com.infraware.polarisoffice"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisoffice4"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisviewer4"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisoffice5"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisviewer5"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_4

    .line 74
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 40
    .end local v4    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v6    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "s":Ljava/lang/String;
    .end local v18    # "selectedFont":Ljava/lang/String;
    :cond_2
    const-string v20, "OpenThemeReceiver"

    const-string v21, "path value missing in preference"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v18, "default"

    .restart local v18    # "selectedFont":Ljava/lang/String;
    goto/16 :goto_0

    .line 44
    .end local v15    # "path":Ljava/lang/String;
    .end local v18    # "selectedFont":Ljava/lang/String;
    :cond_3
    const-string v20, "persist.sys.flipfontpath"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 45
    .restart local v15    # "path":Ljava/lang/String;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 46
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "OpenThemeFontPath"

    move-object/from16 v0, v20

    invoke-interface {v9, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    const-string v20, "persist.sys.flipfontpath"

    const-string v21, "/data/overlays/fonts#Theme"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v18, "Theme"

    .restart local v18    # "selectedFont":Ljava/lang/String;
    goto/16 :goto_0

    .line 76
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v5    # "activityManager":Landroid/app/ActivityManager;
    .restart local v6    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v12    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v17    # "s":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 80
    .end local v4    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v17    # "s":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->exit(I)V

    .line 81
    return-void

    .line 60
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v6    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v20

    goto/16 :goto_1
.end method
