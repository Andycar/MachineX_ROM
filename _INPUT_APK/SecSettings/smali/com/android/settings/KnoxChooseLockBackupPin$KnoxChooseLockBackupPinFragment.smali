.class public Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockBackupPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockBackupPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$BackupPINPolicy;
    }
.end annotation


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private mFirstPIN:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mPINField:Landroid/widget/EditText;

.field private mPINInformationView:Landroid/widget/TextView;

.field private mPINState:I

.field private mPrevButton:Landroid/widget/Button;

.field private mStage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->actionbar:Landroid/app/ActionBar;

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->nextStage()V

    return-void
.end method

.method private nextStage()V
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    .line 264
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mFirstPIN:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateUI()V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mFirstPIN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mFirstPIN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->saveBackupPINCode(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    .line 280
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateUI()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    .line 212
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateUI()V

    .line 213
    return-void
.end method

.method private saveBackupPINCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "PIN"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 288
    .local v1, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 289
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/os/PersonaManager;->setKnoxBackupPin(ILjava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$BackupPINPolicy;->checkPolicy(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    .line 296
    return-void
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const v6, 0x7f0a02b3

    const v5, 0x7f0a026f

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 216
    iget v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateState()V

    .line 219
    iget v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    sparse-switch v0, :sswitch_data_0

    .line 257
    :goto_0
    :sswitch_0
    return-void

    .line 223
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    const v1, 0x7f0a15fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 227
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    const v1, 0x7f0a02b1

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 234
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    const v1, 0x7f0a02b5

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    const v1, 0x7f0a02b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    const v1, 0x7f0a08ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a02bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINState:I

    if-ne v0, v3, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateState()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->onDestroyView()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 195
    .local v0, "cursorPos":I
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->actionbar:Landroid/app/ActionBar;

    .line 101
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->actionbar:Landroid/app/ActionBar;

    const v1, 0x7f0a15fd

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const v1, 0x7f0400f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINInformationView:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f100234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    .line 111
    const v1, 0x7f10009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    .line 112
    const v1, 0x7f10009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPrevButton:Landroid/widget/Button;

    .line 114
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$1;-><init>(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPINField:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$2;-><init>(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$3;-><init>(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mPrevButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment$4;-><init>(Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    if-eqz p3, :cond_0

    .line 179
    const-string v1, "ui_stage"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    .line 180
    const-string v1, "first_pin"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mFirstPIN:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->updateUI()V

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->reset()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string v0, "ui_stage"

    iget v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mStage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockBackupPin$KnoxChooseLockBackupPinFragment;->mFirstPIN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method
