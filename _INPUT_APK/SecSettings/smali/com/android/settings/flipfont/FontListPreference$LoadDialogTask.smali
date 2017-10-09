.class Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 1

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p2, "x1"    # Lcom/android/settings/flipfont/FontListPreference$1;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$302(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 427
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 428
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 435
    const-wide/16 v8, 0x1964

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 436
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v7}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v8}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 444
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const/16 v7, 0x32

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 445
    .local v2, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x1

    .line 446
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 447
    .local v0, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "s":Ljava/lang/String;
    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "com.samsung.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "com.sec.android.app.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 449
    const-string v7, "com.infraware.polarisoffice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisoffice4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisviewer4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisoffice4.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisoffice5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisoffice5.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisviewer5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.infraware.polarisviewer5.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 452
    :cond_2
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 438
    .end local v0    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 439
    .local v3, "ex":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 440
    const-string v7, "FlipFont"

    const-string v8, "dismiss/show FontLoad() - catch (Exception ex)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v1    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_3
    const-string v7, "DCM"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 455
    const-string v7, "com.nttdocomo.android.toruca"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 456
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    :cond_4
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    .end local v0    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 467
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v7}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    .line 468
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v1}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1ad4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    .local v0, "sMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-static {v1}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 422
    return-void
.end method
