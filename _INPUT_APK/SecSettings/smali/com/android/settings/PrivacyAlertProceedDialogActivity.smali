.class public Lcom/android/settings/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private CarrierBrandalpha:Ljava/lang/String;

.field private CarrierHomepage:Ljava/lang/String;

.field private CarrierLegalEnPath:Ljava/lang/String;

.field private CarrierLegalEnURL:Ljava/lang/String;

.field private CarrierLegalEsPath:Ljava/lang/String;

.field private CarrierLegalEsURL:Ljava/lang/String;

.field private CarrierLegalKoPath:Ljava/lang/String;

.field private CarrierLegalKoURL:Ljava/lang/String;

.field private CarrierLegalViPath:Ljava/lang/String;

.field private CarrierLegalViURL:Ljava/lang/String;

.field private CarrierLegalZhPath:Ljava/lang/String;

.field private CarrierLegalZhURL:Ljava/lang/String;

.field bFileExist:Ljava/lang/Boolean;

.field bTest:Ljava/lang/Boolean;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 55
    const-string v0, "/carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 56
    const-string v0, "/carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 57
    const-string v0, "/carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 58
    const-string v0, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 59
    const-string v0, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 62
    const-string v0, "file:///carrier/data/app/Settings/privacy_en.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 63
    const-string v0, "file:///carrier/data/app/Settings/privacy_es.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 64
    const-string v0, "file:///carrier/data/app/Settings/privacy_ko.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 65
    const-string v0, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 66
    const-string v0, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040045

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1000c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "contentView":Landroid/widget/TextView;
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    .line 98
    const-string v4, ""

    .line 100
    .local v4, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const-string v6, "ril.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 107
    :cond_0
    :goto_0
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "createView : "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_UseChameleon"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v10, :cond_11

    .line 110
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "TAG_CSCFEATURE_COMMON_USECHAMELEON : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "currentLang":Ljava/lang/String;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentLang : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bTest:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    const-string v6, "/mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    .line 115
    const-string v6, "/mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    .line 116
    const-string v6, "/mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    .line 117
    const-string v6, "/carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    .line 118
    const-string v6, "/carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    .line 120
    const-string v6, "file:///mnt/sdcard/Download/privacy_en.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    .line 121
    const-string v6, "file:///mnt/sdcard/Download/privacy_es.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    .line 122
    const-string v6, "file:///mnt/sdcard/Download/privacy_ko.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    .line 123
    const-string v6, "file:///carrier/data/app/Settings/privacy_vi.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    .line 124
    const-string v6, "file:///carrier/data/app/Settings/privacy_zh_cn.html"

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    .line 126
    :cond_1
    const-string v6, "es"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 127
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "mfile":Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 130
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEsURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 178
    .end local v1    # "currentLang":Ljava/lang/String;
    .end local v3    # "mfile":Ljava/io/File;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_chameleon_carrierhomepage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "db_chameleon_brandalpha"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    :cond_2
    const v6, 0x7f0a17ec

    invoke-virtual {p0, v6}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    .line 184
    :cond_3
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 185
    :cond_4
    const v6, 0x7f0a17ed

    invoke-virtual {p0, v6}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    .line 188
    :cond_5
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_13

    .line 189
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bFileExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v6, "312530"

    const-string v7, "ro.cdma.home.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "SPRPRE"

    const-string v7, "ro.home.operator.carrierid"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const-string v6, "312530"

    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "XAS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 192
    :cond_7
    const v6, 0x7f0a17ea

    invoke-virtual {p0, v6}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierBrandalpha:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierHomepage:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .end local v5    # "view":Landroid/view/View;
    :goto_2
    return-object v5

    .line 104
    .restart local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    const-string v7, "Reading failed for sales code"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentLang":Ljava/lang/String;
    .restart local v3    # "mfile":Ljava/io/File;
    :cond_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 135
    .end local v3    # "mfile":Ljava/io/File;
    :cond_9
    const-string v6, "ko"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 136
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v3    # "mfile":Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 139
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalKoURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 144
    .end local v3    # "mfile":Ljava/io/File;
    :cond_b
    const-string v6, "vi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 145
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v3    # "mfile":Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists3 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 148
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalViURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :cond_c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 153
    .end local v3    # "mfile":Ljava/io/File;
    :cond_d
    const-string v6, "zh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 154
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v3    # "mfile":Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists4 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 157
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalZhURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    :cond_e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 163
    .end local v3    # "mfile":Ljava/io/File;
    :cond_f
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v3    # "mfile":Ljava/io/File;
    const-string v6, "PrivacyAlertProceedDialogActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File exists5 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 166
    iget-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->CarrierLegalEnURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    :cond_10
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 173
    .end local v1    # "currentLang":Ljava/lang/String;
    .end local v3    # "mfile":Ljava/io/File;
    :cond_11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 195
    :cond_12
    const v6, 0x7f0a17eb

    invoke-virtual {p0, v6}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 198
    :cond_13
    iget-object v5, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mView:Landroid/webkit/WebView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    packed-switch p2, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->finish()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 82
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a17d2

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 88
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->bFileExist:Ljava/lang/Boolean;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/PrivacyAlertProceedDialogActivity;->setupAlert()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 207
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 211
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 215
    return-void
.end method
