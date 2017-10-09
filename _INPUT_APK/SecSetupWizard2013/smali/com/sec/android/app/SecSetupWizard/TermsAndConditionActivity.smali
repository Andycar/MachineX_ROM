.class public Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
.super Landroid/app/Activity;
.source "TermsAndConditionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;
    }
.end annotation


# static fields
.field private static FILE_PATH:Ljava/lang/String;


# instance fields
.field private err_group:Landroid/widget/RadioGroup;

.field private handler_loading:Landroid/os/Handler;

.field private isFirstLoading:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field public mDeviceType:Ljava/lang/String;

.field private mErrCollectionLayout:Landroid/widget/LinearLayout;

.field private mIsCompleteLoadingEULA:Z

.field private radioCheck:I

.field private s:Ljava/lang/String;

.field private terms:Landroid/widget/CheckBox;

.field private tv:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "txt/%y%z/eula.txt"

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->s:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isFirstLoading:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mIsCompleteLoadingEULA:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    .line 66
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mIsCompleteLoadingEULA:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->terms:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 193
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 194
    .local v2, "locale":Ljava/util/Locale;
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->FILE_PATH:Ljava/lang/String;

    .line 195
    .local v3, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_0

    .line 196
    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_0
    const-string v5, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 201
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 232
    .end local v3    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 202
    .end local v4    # "path":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->FILE_PATH:Ljava/lang/String;

    .line 209
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_2

    .line 210
    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 213
    :cond_2
    const-string v5, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 214
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 217
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_2
    if-eqz v3, :cond_3

    move-object v4, v3

    .end local v3    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_1

    .line 218
    .end local v4    # "path":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x0

    goto :goto_2

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->FILE_PATH:Ljava/lang/String;

    .line 226
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/SecSetupWizard/Utils;->getEulaVersion(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_4

    .line 227
    const-string v5, "eula.txt"

    const-string v6, "eula_1.txt"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 229
    :cond_4
    const-string v5, "%y"

    const-string v6, "en"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 230
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 232
    .end local v3    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_1
.end method

.method private initView()V
    .locals 11

    .prologue
    .line 236
    const v8, 0x7f0d0047

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/View;->setOverScrollMode(I)V

    .line 237
    const v8, 0x7f0d007b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/View;->setOverScrollMode(I)V

    .line 239
    const v8, 0x7f0d0077

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    const v8, 0x7f0d0016

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 243
    .local v5, "nextBtnArea":Landroid/widget/LinearLayout;
    const v8, 0x7f0d0017

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 244
    .local v7, "nextText":Landroid/widget/TextView;
    const v8, 0x7f0d0018

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 246
    .local v6, "nextImage":Landroid/widget/ImageView;
    new-instance v8, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0037

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "desc_tts":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    const v8, 0x7f0d0078

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    .line 260
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 261
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    new-instance v9, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v9}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 262
    const v8, 0x7f0d007c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    .line 263
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 264
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    new-instance v9, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v9}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 265
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 269
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    const v9, 0x7f0b0006

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->initTextBox()V

    .line 274
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$3;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    const v8, 0x7f0d0047

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$4;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 294
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;

    invoke-direct {v9, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$5;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    const v8, 0x7f0d007b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$6;

    invoke-direct {v9, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$6;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 314
    const v8, 0x7f0d0079

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->terms:Landroid/widget/CheckBox;

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "samsung_eula_agree"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v1, 0x1

    .line 318
    .local v1, "confirmed":Z
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->terms:Landroid/widget/CheckBox;

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->list:Ljava/util/ArrayList;

    .line 321
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x109000f

    iget-object v9, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 327
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x7f0d007e

    invoke-virtual {p0, v8}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioGroup;

    iput-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "samsung_errorlog_agree"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 332
    .local v4, "nErrorAgree":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 333
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    invoke-virtual {v8}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 342
    :goto_1
    if-eqz v1, :cond_8

    .line 343
    iget v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isKKupgradeforEula()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isRemoveSurveyModeModel()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 345
    :cond_1
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-nez v8, :cond_5

    .line 346
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 351
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 352
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 353
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 354
    const-string v8, "TermsAndConditionActivity"

    const-string v9, "initView : confirmed true radioCheck != -1 next Button enabled"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->terms:Landroid/widget/CheckBox;

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;

    invoke-direct {v9, p0, v5, v7, v6}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$7;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 428
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    new-instance v9, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;

    invoke-direct {v9, p0, v5, v7, v6}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$8;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 477
    return-void

    .line 316
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "confirmed":Z
    .end local v4    # "nErrorAgree":I
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 334
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "confirmed":Z
    .restart local v4    # "nErrorAgree":I
    :cond_3
    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 335
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    const v9, 0x7f0d007d

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 336
    const v8, 0x7f0d007d

    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    goto :goto_1

    .line 338
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    const v9, 0x7f0d007f

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 339
    const v8, 0x7f0d007f

    iput v8, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->radioCheck:I

    goto :goto_1

    .line 348
    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 349
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 356
    :cond_6
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-nez v8, :cond_7

    .line 357
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 362
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 363
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 364
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b0035

    invoke-virtual {p0, v9}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b0036

    invoke-virtual {p0, v9}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "disableDiscription":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    const-string v8, "TermsAndConditionActivity"

    const-string v9, "initView : confirmed true radioCheck == -1 next Button disabled"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 359
    .end local v3    # "disableDiscription":Ljava/lang/String;
    :cond_7
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 360
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 369
    :cond_8
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v8

    if-nez v8, :cond_9

    .line 370
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 375
    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 376
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b0035

    invoke-virtual {p0, v9}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b0036

    invoke-virtual {p0, v9}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .restart local v3    # "disableDiscription":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    const-string v8, "TermsAndConditionActivity"

    const-string v9, "initView : confirmed false next Button disabled"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 372
    .end local v3    # "disableDiscription":Ljava/lang/String;
    :cond_9
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 373
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 561
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 562
    return-void
.end method


# virtual methods
.method public changeFocus(Z)V
    .locals 8
    .param p1, "isUpper"    # Z

    .prologue
    const v7, 0x7f0d0047

    const v4, 0x7f080003

    const v3, 0x7f080001

    const v2, 0x7f020037

    const v1, 0x7f020036

    .line 519
    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isBlackThemeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p1, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_6

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 532
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 519
    goto :goto_0

    :cond_2
    move v0, v1

    .line 520
    goto :goto_1

    :cond_3
    move v0, v4

    .line 528
    goto :goto_2

    :cond_4
    move v4, v3

    .line 529
    goto :goto_3

    :cond_5
    move v0, v2

    .line 530
    goto :goto_4

    :cond_6
    move v2, v1

    .line 531
    goto :goto_5
.end method

.method public initTextBox()V
    .locals 7

    .prologue
    const v6, 0x7f0d007b

    const v5, 0x7f0d0047

    const v4, 0x7f080003

    const/4 v3, 0x0

    const v2, 0x7f020037

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 502
    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isBlackThemeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, v5}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 511
    invoke-virtual {p0, v6}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public isTablet()Z
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 569
    :goto_0
    return v0

    .line 568
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->hide()V

    .line 85
    :cond_0
    const-string v7, "XAR"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    const-string v7, "txt_usa/%y%z/eula.txt"

    sput-object v7, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->FILE_PATH:Ljava/lang/String;

    .line 89
    :cond_1
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isRemoveSurveyModeModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 91
    const v7, 0x7f03001c

    invoke-virtual {v0, v7}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 96
    :goto_0
    const v7, 0x7f0d0006

    invoke-virtual {v0, v7}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 100
    .local v6, "v":Landroid/view/View;
    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p4note"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "santos10"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    :cond_2
    const v7, 0x7f020010

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->initView()V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setIndicatorTransparency()V

    .line 110
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isKKupgradeforEula()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isRemoveSurveyModeModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    :cond_4
    const v7, 0x7f0d0077

    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 114
    .local v4, "titleArea":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 115
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "samsung_errorlog_agree"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v7, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 121
    const v7, 0x7f0d007a

    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mErrCollectionLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v7, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mErrCollectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v7, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v11}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 127
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "titleArea":Landroid/widget/LinearLayout;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_5
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 129
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 130
    const v7, 0x7f0d0026

    invoke-virtual {p0, v7}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "layoutRoot":Landroid/view/View;
    if-eqz v1, :cond_8

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 133
    const v7, 0x1e70004

    invoke-virtual {v2, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 139
    .end local v2    # "layoutRoot":Landroid/view/View;
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    .line 142
    iput-boolean v10, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isFirstLoading:Z

    .line 143
    return-void

    .line 93
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const v7, 0x7f03001b

    invoke-virtual {v0, v7}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    goto/16 :goto_0

    .line 135
    .restart local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "layoutRoot":Landroid/view/View;
    .restart local v6    # "v":Landroid/view/View;
    :cond_8
    const v7, 0x1a70004

    invoke-virtual {v2, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 573
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 574
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->setResult(I)V

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->finish()V

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isFirstLoading:Z

    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, ""

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 152
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;-><init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    iput-boolean v3, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isFirstLoading:Z

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->mIsCompleteLoadingEULA:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public saveToDB()V
    .locals 5

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "samsung_eula_agree"

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->terms:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    const/4 v0, -0x1

    .line 482
    .local v0, "err_agree":I
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0d007d

    if-ne v2, v3, :cond_2

    .line 483
    const/4 v0, 0x1

    .line 487
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_errorlog_agree"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_security_reports"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "diagnostic_info_changed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    return-void

    .line 480
    .end local v0    # "err_agree":I
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 484
    .restart local v0    # "err_agree":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->err_group:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0d007f

    if-ne v2, v3, :cond_0

    .line 485
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFocus(IZ)V
    .locals 7
    .param p1, "viewID"    # I
    .param p2, "isFocus"    # Z

    .prologue
    const v5, 0x7f080003

    const v4, 0x7f080001

    const v3, 0x7f020037

    const v2, 0x7f020036

    .line 538
    if-eqz p2, :cond_2

    move v1, v4

    .line 539
    .local v1, "textColor":I
    :goto_0
    if-eqz p2, :cond_3

    move v0, v2

    .line 545
    .local v0, "bgRes":I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isBlackThemeTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    if-eqz p2, :cond_4

    move v1, v4

    .line 547
    :goto_2
    if-eqz p2, :cond_5

    move v0, v2

    .line 550
    :cond_0
    :goto_3
    const v2, 0x7f0d0078

    if-ne p1, v2, :cond_6

    .line 551
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    const v2, 0x7f0d0047

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 557
    :cond_1
    :goto_4
    return-void

    .end local v0    # "bgRes":I
    .end local v1    # "textColor":I
    :cond_2
    move v1, v5

    .line 538
    goto :goto_0

    .restart local v1    # "textColor":I
    :cond_3
    move v0, v3

    .line 539
    goto :goto_1

    .restart local v0    # "bgRes":I
    :cond_4
    move v1, v5

    .line 546
    goto :goto_2

    :cond_5
    move v0, v3

    .line 547
    goto :goto_3

    .line 553
    :cond_6
    const v2, 0x7f0d007c

    if-ne p1, v2, :cond_1

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    const v2, 0x7f0d007b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4
.end method
