.class public Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;
.super Landroid/app/Activity;
.source "EasyModeStepFontActivity.java"


# instance fields
.field private fontList:Landroid/widget/ListView;

.field fontListViewClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$2;-><init>(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontListViewClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->changeFontSize()V

    return-void
.end method

.method private changeFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 119
    const/4 v2, -0x1

    .line 120
    .local v2, "previousIndex":I
    const/4 v0, -0x1

    .line 122
    .local v0, "fontSizeIndex":I
    const/4 v2, 0x2

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 126
    const-string v3, "jjh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previousIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v3, "jjh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontSizeIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-ge v2, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->writeFontSize(I)V

    .line 139
    return-void

    .line 133
    :cond_1
    if-ne v2, v6, :cond_0

    if-ge v0, v6, :cond_0

    .line 134
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getFontSizeNameArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v0
.end method

.method private getSysFontSizeIndex()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 48
    const/4 v0, -0x1

    .line 50
    .local v0, "fontSizeIndex":I
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;

    const v4, 0x109000f

    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getFontSizeNameArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5}, Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 52
    .local v1, "fontSizeListAdapter":Lcom/sec/android/app/SecSetupWizard/FontSizeListAdapter;
    if-gez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getSysFontSizeIndex()I

    move-result v0

    .line 56
    :cond_0
    const v4, 0x7f0d0072

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    .line 57
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontListViewClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->fontList:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 66
    const v4, 0x7f0d0016

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .local v2, "nextBtnArea":Landroid/widget/LinearLayout;
    const v4, 0x7f0d0017

    invoke-virtual {p0, v4}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v4, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method private writeFontSize(I)V
    .locals 6
    .param p1, "fontSizeIndex"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "fontScale":F
    :try_start_0
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 145
    .local v3, "mCurConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "indices":[Ljava/lang/String;
    aget-object v4, v2, p1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 149
    const/high16 v4, 0x3fc00000    # 1.5f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 150
    const v1, 0x3fa66666    # 1.3f

    .line 154
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_0
    :try_start_2
    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 161
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 165
    .end local v2    # "indices":[Ljava/lang/String;
    .end local v3    # "mCurConfig":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 155
    .restart local v2    # "indices":[Ljava/lang/String;
    .restart local v3    # "mCurConfig":Landroid/content/res/Configuration;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SecSetupWizard >> EasyModeStepFontActivity"

    const-string v5, "Unable to retrieve configuration"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "indices":[Ljava/lang/String;
    .end local v3    # "mCurConfig":Landroid/content/res/Configuration;
    :catch_1
    move-exception v0

    .line 163
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "SecSetupWizard >> EasyModeStepFontActivity"

    const-string v5, "Unable to save font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 39
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f030018

    const v2, 0x7f0b005a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(II)V

    .line 43
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->initView()V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 83
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->finish()V

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
