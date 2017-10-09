.class public Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;
.super Landroid/app/Activity;
.source "DiagonosticAlertDialog.java"


# static fields
.field private static final DIAGNOSTIC_REPORT:Ljava/lang/String; = "error_log_collection_k_serviceinfo"

.field private static final INTENT_DIAGNOSTIC_REPORT_CHANGED:Ljava/lang/String; = "android.settings.DIAGNOSTIC_INFO_CHANGED"

.field private static final INTENT_DIAGNOSTIC_REPORT_EXFIELD:Ljava/lang/String; = "diagnostic_info_changed"

.field private static final SETTING_DIAGNOSTIC_LABEL:Ljava/lang/String; = "label_diagnostics_info"

.field private static final SETTING_ERRORLOG_STATE:Ljava/lang/String; = "samsung_errorlog_agree"

.field private static final SETTING_NO:Ljava/lang/String; = "no_thanks"

.field private static final SETTING_YES:Ljava/lang/String; = "yes"

.field private static final TAG:Ljava/lang/String; = "DiagonosticAlertDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDiagnosticeReportStatus()V
    .locals 22

    .prologue
    .line 43
    const/4 v14, 0x0

    .line 44
    .local v14, "setupWizardContext":Landroid/content/Context;
    const/4 v11, 0x0

    .line 45
    .local v11, "settingContext":Landroid/content/Context;
    const/16 v16, 0x0

    .line 46
    .local v16, "setupWizardResources":Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 47
    .local v13, "settingResources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 48
    .local v5, "collectionString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 49
    .local v18, "yes":Ljava/lang/String;
    const/4 v9, 0x0

    .line 50
    .local v9, "no":Ljava/lang/String;
    const/16 v17, 0x0

    .line 52
    .local v17, "title":Ljava/lang/String;
    const-string v15, "com.sec.android.app.SecSetupWizard"

    .line 53
    .local v15, "setupWizardName":Ljava/lang/String;
    const-string v12, "com.android.settings"

    .line 55
    .local v12, "settingName":Ljava/lang/String;
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "salesCode":Ljava/lang/String;
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "showDiagnosticeReportStatus"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    .line 61
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 63
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 64
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "error_log_collection_k_serviceinfo"

    const-string v21, "string"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 73
    .end local v4    # "c":Landroid/content/Context;
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 74
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    .line 76
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "yes"

    const-string v21, "string"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 77
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "no_thanks"

    const-string v21, "string"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "label_diagnostics_info"

    const-string v21, "string"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v17

    .line 85
    :goto_1
    if-eqz v10, :cond_1

    const-string v19, "DCM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "KDI"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "XJP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "SBM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x104000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x1040000

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    :cond_1
    const-string v19, "DiagonosticAlertDialog"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "collection "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v19, "DiagonosticAlertDialog"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "strings "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v5, :cond_2

    if-eqz v18, :cond_2

    if-eqz v9, :cond_2

    if-nez v17, :cond_3

    .line 94
    :cond_2
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "disable diagnostic report status by null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "samsung_errorlog_agree"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "diagnostic_info_changed"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->finish()V

    .line 127
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "error getting activity for setupwizard package resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 68
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 69
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "error getting setupwizard package resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 79
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v7

    .line 80
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "error getting activity for settings package resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 81
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v7

    .line 82
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v19, "DiagonosticAlertDialog"

    const-string v20, "error getting settings package resources"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 103
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    new-instance v20, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$2;-><init>(Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    new-instance v20, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog$1;-><init>(Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 124
    .local v3, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 125
    .local v6, "dialogWindow":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DiagonosticAlertDialog;->showDiagnosticeReportStatus()V

    .line 40
    return-void
.end method
