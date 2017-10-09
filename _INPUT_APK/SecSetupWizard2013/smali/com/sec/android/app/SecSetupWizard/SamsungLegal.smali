.class public Lcom/sec/android/app/SecSetupWizard/SamsungLegal;
.super Lcom/android/internal/app/AlertActivity;
.source "SamsungLegal.java"


# static fields
.field private static FILE_PATH:Ljava/lang/String;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private s:Ljava/lang/String;

.field private tv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "txt/%y%z/eula.txt"

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->s:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$1;-><init>(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->handler_loading:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/SamsungLegal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method private createThreadAndDialog()V
    .locals 5

    .prologue
    .line 96
    const-string v1, ""

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal$2;-><init>(Lcom/sec/android/app/SecSetupWizard/SamsungLegal;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 9

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 109
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 110
    .local v3, "locale":Ljava/util/Locale;
    const/4 v2, 0x0

    .line 111
    .local v2, "in":Ljava/io/InputStream;
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->FILE_PATH:Ljava/lang/String;

    .line 112
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_0

    .line 113
    const-string v6, "eula.txt"

    const-string v7, "eula_1.txt"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_0
    const-string v6, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 116
    const-string v6, "%z"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 118
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    if-eqz v4, :cond_1

    move-object v5, v4

    .line 151
    .end local v4    # "path":Ljava/lang/String;
    .local v5, "path":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 120
    .end local v5    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SamsungLegal"

    const-string v7, "country is not using in file path"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v4, 0x0

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->FILE_PATH:Ljava/lang/String;

    .line 127
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_2

    .line 128
    const-string v6, "eula.txt"

    const-string v7, "eula_1.txt"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_2
    const-string v6, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 132
    const-string v6, "%z"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 135
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :goto_2
    if-eqz v4, :cond_3

    move-object v5, v4

    .end local v4    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v5    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "SamsungLegal"

    const-string v7, "country is not using in file path"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x0

    goto :goto_2

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->FILE_PATH:Ljava/lang/String;

    .line 145
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_4

    .line 146
    const-string v6, "eula.txt"

    const-string v7, "eula_1.txt"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 148
    :cond_4
    const-string v6, "%y"

    const-string v7, "en"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v6, "%z"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 151
    .end local v4    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v1, "XAR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "txt_usa/%y%z/eula.txt"

    sput-object v1, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->FILE_PATH:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->inflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->view:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->view:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->view:Landroid/view/View;

    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->tv:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->view:Landroid/view/View;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->setupAlert()V

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->createThreadAndDialog()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SamsungLegal;->loadingDialog:Landroid/app/ProgressDialog;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 92
    return-void
.end method
