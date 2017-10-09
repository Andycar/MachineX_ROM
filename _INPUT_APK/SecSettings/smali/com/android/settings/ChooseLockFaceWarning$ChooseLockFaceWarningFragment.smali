.class public Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;
.super Landroid/app/Fragment;
.source "ChooseLockFaceWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockFaceWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockFaceWarningFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDualFolderType:Z

.field private mFolderCloseDialog:Landroid/app/Dialog;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 155
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f0a024f

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const/4 v3, 0x1

    .line 163
    .local v3, "showTutorial":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 167
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    return-object v1
.end method

.method private getBiometricSensorIntentwithVoice()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_SETTING_LOCK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "SETTING_VOICE_LOCK"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const/4 v3, 0x1

    .line 176
    .local v3, "showTutorial":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 181
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 119
    .local v1, "isFolderClose":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mDualFolderType:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 120
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 122
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    .line 125
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a01f9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a101b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;-><init>(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;

    goto :goto_0

    .end local v1    # "isFolderClose":Z
    :cond_3
    move v1, v2

    .line 117
    goto :goto_1

    .line 141
    .restart local v1    # "isFolderClose":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getBiometricSensorIntentwithVoice()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->startActivity(Landroid/content/Intent;)V

    .line 149
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 146
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    .line 96
    iget-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f1000a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    .line 98
    iget-object v2, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f1000a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, "mWaringText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const v2, 0x7f0a101a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :goto_0
    return-object v1

    .line 105
    :cond_0
    const v2, 0x7f0a1019

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
